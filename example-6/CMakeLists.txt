cmake_minimum_required(VERSION 3.5)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/..)

project(pvs-studio-cmake-example-6 CXX)

include(../pvs-studio-cmake-module/PVS-Studio.cmake)

add_subdirectory(subdir)
add_subdirectory(subdir2)

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} example6.lib example6_2.lib)

# create own target for library
pvs_studio_add_target(TARGET ${PROJECT_NAME}.analyze ALL
                      ANALYZE ${PROJECT_NAME}
                      OUTPUT FORMAT errorfile
                      LOG target_${PROJECT_NAME}.err)
