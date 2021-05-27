cmake_minimum_required(VERSION 3.5)
project(pvs-studio-cmake-example-1 CXX)

add_executable(${PROJECT_NAME} main.cpp)

include(../PVS-Studio.cmake)
pvs_studio_add_target(TARGET example1.analyze ALL
                      OUTPUT FORMAT errorfile
                      ANALYZE ${PROJECT_NAME}
                      MODE GA:1,2
                      LOG target.err)
