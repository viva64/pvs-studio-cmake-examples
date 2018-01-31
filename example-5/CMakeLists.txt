cmake_minimum_required(VERSION 3.5)
project(pvs-studio-cmake-example-5 CXX)

add_executable(${PROJECT_NAME} main.cpp)

include(../PVS-Studio.cmake)
pvs_studio_add_target(TARGET example5.analyze
                      FORMAT tasklist
                      ANALYZE ${PROJECT_NAME}
                      LOG target.tasks)
