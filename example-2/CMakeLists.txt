cmake_minimum_required(VERSION 3.5)
project(pvs-studio-cmake-example-2 CXX)

add_library(lib lib.cpp)
add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} lib)

include(../pvs-studio-cmake-module/PVS-Studio.cmake)
pvs_studio_add_target(TARGET example2.analyze ALL
                      OUTPUT FORMAT errorfile
                      ANALYZE ${PROJECT_NAME} lib
                      LOG target.err)
