cmake_minimum_required(VERSION 3.5)
project(pvs-studio-cmake-example-12 CXX)

add_library(lib lib.cpp)
add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} lib)

include(../PVS-Studio.cmake)
pvs_studio_add_target(TARGET example12.analyze ALL
                      OUTPUT FORMAT errorfile
                      SOURCES testfile.cpp main.cpp lib.cpp)