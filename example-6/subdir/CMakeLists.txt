cmake_minimum_required(VERSION 3.5)
project(pvs-studiowcmake-example-6-lib CXX)

add_library(example6.lib lib.cpp)

target_include_directories(example6.lib PUBLIC ${CMAKE_CURRENT_LIST_DIR}/include)

# use target not defined yet "example6_2.lib", inherit public include directory
target_link_libraries(example6.lib example6_2.lib)

# create own target for library
pvs_studio_add_target(TARGET example6.lib.analyze ALL
                      ANALYZE example6.lib
                      OUTPUT FORMAT errorfile
                      LOG target_example6.lib.err)
