#
# Try to find GLESv2 library and include path.
# Once done this will define
#
# GLESv2_FOUND
# GLESv2_INCLUDE_PATH
# GLESv2_LIBRARY
#

find_path(GLESv2_INCLUDE_DIR GLES2/gl2.h)
find_library(GLESv2_LIBRARY NAMES GLESv2)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(GLESv2 DEFAULT_MSG GLESv2_LIBRARY GLESv2_INCLUDE_DIR)
