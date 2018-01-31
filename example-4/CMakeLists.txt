cmake_minimum_required(VERSION 3.5)
project(pvs-studio-cmake-example-4 CXX)

add_subdirectory(subdir)
add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} example4.lib)

include(../PVS-Studio.cmake)
pvs_studio_add_target(TARGET example4.analyze ALL
                      OUTPUT FORMAT errorfile
                      RECURSIVE ANALYZE ${PROJECT_NAME}
                      LOG target.err)
