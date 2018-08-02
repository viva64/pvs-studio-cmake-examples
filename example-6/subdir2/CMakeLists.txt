cmake_minimum_required(VERSION 3.5)
project(pvs-studiowcmake-example-6-lib2 CXX)

add_library(example6_2.lib lib.cpp)

target_include_directories(example6_2.lib PUBLIC ${CMAKE_CURRENT_LIST_DIR}/include)

# create own target for library
pvs_studio_add_target(TARGET example6_2.lib.analyze ALL
                      ANALYZE example6_2.lib
                      OUTPUT FORMAT errorfile
                      LOG target_example6_2.lib.err)
