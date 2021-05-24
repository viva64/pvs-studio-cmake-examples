cmake_minimum_required(VERSION 3.5)
project(pvs-studio-cmake-example-11 CXX)

add_executable(${PROJECT_NAME} main.cpp)

include(../PVS-Studio.cmake)
pvs_studio_add_target(TARGET example11.analyze ALL
                      OUTPUT FORMAT errorfile
                      ANALYZE ${PROJECT_NAME}
                      MODE MISRA:1,2 GA:1,2
                      KEEP_COMBINED_PLOG)
