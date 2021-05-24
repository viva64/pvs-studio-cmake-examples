cmake_minimum_required(VERSION 3.5)
project(pvs-studio-cmake-example-13 CXX)

add_executable(${PROJECT_NAME} main.cpp)

include(../PVS-Studio.cmake)
pvs_studio_add_target(TARGET example13.analyze ALL
                      OUTPUT FORMAT errorfile
                      ANALYZE ${PROJECT_NAME}
                      MODE MISRA:1,2;GA:1,2
                      LOG target.err
                      CONVERTER_ARGS -d V501 -m misra)
