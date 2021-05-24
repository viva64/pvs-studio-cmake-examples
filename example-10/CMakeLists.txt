cmake_minimum_required(VERSION 3.5)
project(pvs-studio-cmake-example-10 CXX)

add_executable(${PROJECT_NAME} main.cpp)

include_directories(PUBLIC ${CMAKE_CURRENT_LIST_DIR}/subdir)

include(../PVS-Studio.cmake)
pvs_studio_add_target(TARGET example10.analyze ALL
                      OUTPUT FORMAT errorfile
                      ANALYZE ${PROJECT_NAME}
                      ARGS -e ${CMAKE_SOURCE_DIR}/subdir)
