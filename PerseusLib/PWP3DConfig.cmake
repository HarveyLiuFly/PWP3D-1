# Compute paths
get_filename_component( PROJECT_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH )
SET( PWP3D_INCLUDE_DIRS "/u/viper/work/tracking/PWP3D/PerseusLib/..;/u/viper/work/tracking/PWP3D/PerseusLib/..;/pkgs/cuda-6.5/include;/usr/include/eigen3;/u/viper/freeimage/FreeImage/Dist;/u/viper/assimp/assimp-3.1.1/include" )

# Library dependencies (contains definitions for IMPORTED targets)
if( NOT TARGET pwp3d AND NOT PWP3D_BINARY_DIR )
  include( "${PROJECT_CMAKE_DIR}/PWP3DTargets.cmake" )
endif()

SET( PWP3D_LIBRARIES "pwp3d" )
