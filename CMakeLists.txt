CMAKE_MINIMUM_REQUIRED(VERSION 2.6)

OPTION(Debug "Set to ON to compile with debug symbols" OFF)
OPTION(G "Set to ON to compile with optimisations and debug symbols" OFF)

PROJECT(curveDNA)

SET(CMAKE_BUILD_TYPE Release)

IF(Debug)
	SET(CMAKE_BUILD_TYPE Debug)
	MESSAGE(STATUS "Compiling in Debug mode")
ENDIF(Debug)

IF(G)
	SET(CMAKE_BUILD_TYPE RelWithDebInfo)
	MESSAGE(STATUS "Compiling in Release+Debug symbols mode")
ENDIF(G)

IF(NOT CMAKE_BUILD_TYPE MATCHES Debug)
	IF(INTEL)
		ADD_DEFINITIONS(-fast)
	ELSE()
		ADD_DEFINITIONS(-ffast-math)
	ENDIF(INTEL)
ENDIF()

MESSAGE(STATUS "Compiling with c++11 support")
IF(${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION} GREATER 3.1)
	SET(CMAKE_CXX_STANDARD 11)
	SET(CMAKE_CXX_STANDARD_REQUIRED ON)
ELSE()
	ADD_COMPILE_OPTIONS(-std=c++11)
ENDIF()

# get the current svn version, if svn is installed. Avoid warnings if it isn't
FIND_PACKAGE(Subversion)
IF(Subversion_FOUND)
	EXECUTE_PROCESS(COMMAND "svnversion" WORKING_DIRECTORY ${PROJECT_SOURCE_DIR} OUTPUT_VARIABLE revision OUTPUT_STRIP_TRAILING_WHITESPACE)
ELSE()
	SET(revision SVN_NOT_FOUND)
ENDIF()

# return the current date as day/month/year
MACRO(CURRENT_DATE result)
    IF(WIN32)
        EXECUTE_PROCESS(COMMAND "cmd" " /C date /T" OUTPUT_VARIABLE ${result})
        string(REGEX REPLACE "(..)/(..)/..(..).*" "\\1/\\2/\\3" ${result} ${${result}})
    ELSEIF(UNIX)
        EXECUTE_PROCESS(COMMAND "date" "+%d/%m/%Y" OUTPUT_VARIABLE ${result})
        string(REGEX REPLACE "(..)/(..)/..(..).*" "\\1/\\2/\\3" ${result} ${${result}})
    ELSE(WIN32)
        MESSAGE(SEND_ERROR "date not implemented")
        SET(${result} 000000)
    ENDIF (WIN32)
ENDMACRO(CURRENT_DATE)

CURRENT_DATE(today)
ADD_DEFINITIONS(-D'SVN_VERSION="${revision}"' -D'BUILD_TIME="${today}"')

SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)

SET(exe_name curveDNA)

SET(curveDNA_SOURCES
	main.cpp
	BasePair.cpp
	ParameterMap.cpp
	Sequence.cpp
)

ADD_EXECUTABLE(${exe_name} ${curveDNA_SOURCES})
