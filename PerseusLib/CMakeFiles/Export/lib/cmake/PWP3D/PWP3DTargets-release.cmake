#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Compute the installation prefix relative to this file.
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)

# Import target "pwp3d" for configuration "Release"
SET_PROPERTY(TARGET pwp3d APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(pwp3d PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "/pkgs/cuda-6.5/lib64/libcudart.so;/usr/lib/x86_64-linux-gnu/libcuda.so;/pkgs/cuda-6.5/lib64/libnpps.so;/pkgs/cuda-6.5/lib64/libnppi.so;/pkgs/cuda-6.5/lib64/libnpps.so;/u/viper/freeimage/FreeImage/Dist;/u/viper/assimp/assimp-3.1.1/lib"
  IMPORTED_LOCATION_RELEASE "/usr/local/lib/libpwp3d.so"
  IMPORTED_SONAME_RELEASE "libpwp3d.so"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS pwp3d )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_pwp3d "/usr/local/lib/libpwp3d.so" )

# Loop over all imported files and verify that they actually exist
FOREACH(target ${_IMPORT_CHECK_TARGETS} )
  FOREACH(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    IF(NOT EXISTS "${file}" )
      MESSAGE(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    ENDIF()
  ENDFOREACH()
  UNSET(_IMPORT_CHECK_FILES_FOR_${target})
ENDFOREACH()
UNSET(_IMPORT_CHECK_TARGETS)

# Cleanup temporary variables.
SET(_IMPORT_PREFIX)

# Commands beyond this point should not need to know the version.
SET(CMAKE_IMPORT_FILE_VERSION)
