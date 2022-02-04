cmake_minimum_required(VERSION 3.5)
project(pvs-studio-cmake-example-3 CXX)

add_subdirectory(subdir)
add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} example3.lib)

include(../pvs-studio-cmake-module/PVS-Studio.cmake)
pvs_studio_add_target(TARGET example3.analyze ALL
                      OUTPUT FORMAT errorfile
                      ANALYZE ${PROJECT_NAME} example3.lib:subdir
                      LOG target.err)
