cmake_minimum_required(VERSION 3.5)
project(pvs-studio-cmake-example-8 CXX)

add_executable(${PROJECT_NAME} main.cpp)

include(../pvs-studio-cmake-module/PVS-Studio.cmake)
pvs_studio_add_target(TARGET example8.analyze ALL
                      ANALYZE ${PROJECT_NAME}
                      OUTPUT FORMAT errorfile
                      SUPPRESS_BASE ${CMAKE_SOURCE_DIR}/suppress_base.json)
