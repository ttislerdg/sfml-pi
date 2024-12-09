#
# Try to find X library and include path.
# Once done this will define
#
# GBM_FOUND
# GBM_INCLUDE_PATH
# GBM_LIBRARY
#

FIND_PATH(GBM_INCLUDE_PATH
  NAMES
  gbm.h
  PATHS
  ${CMAKE_INCLUDE_PATH}/include/libgbm/
  ~/include/libgbm/
  /usr/include/libgbm/
  /usr/local/include/libgbm/
  /sw/include/libgbm/
  /opt/local/include/libgbm/
  DOC "The directory where gbm.h resides")
FIND_LIBRARY(GBM_LIBRARY
  NAMES GBM gbm
  PATHS
  ${CMAKE_LIBRARY_PATH}/lib/
  ~/lib/
  /usr/lib64
  /usr/lib
  /usr/local/lib64
  /usr/local/lib
  /sw/lib
  /opt/local/lib
  DOC "The GBM library")

IF(GBM_INCLUDE_PATH)
  INCLUDE_DIRECTORIES(${GBM_INCLUDE_PATH})
  SET(GBM_FOUND 1 CACHE STRING "Set to 1 if GBM is found, 0 otherwise")
ELSE(GBM_INCLUDE_PATH)
  SET(GBM_FOUND 0 CACHE STRING "Set to 1 if GBM is found, 0 otherwise")
ENDIF(GBM_INCLUDE_PATH)

MARK_AS_ADVANCED(GBM_FOUND)

IF (GBM_FOUND)
    MESSAGE(STATUS "Found GBM: ${GBM_LIBRARY}")
    MESSAGE(STATUS "   include: ${GBM_INCLUDE_PATH}")
ENDIF(GBM_FOUND)
