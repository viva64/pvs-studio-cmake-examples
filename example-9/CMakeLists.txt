cmake_minimum_required(VERSION 3.5)
project(pvs-studio-cmake-example-9 CXX)

set(PVS_STUDIO_CONFIG "${CMAKE_BINARY_DIR}/PVS-Studio.cfg")
set(PVS_STUDIO_CONFIG_COMMAND "${CMAKE_COMMAND}" -E echo "sourcetree-root=${CMAKE_SOURCE_DIR}" > "${PVS_STUDIO_CONFIG}")

add_custom_command(OUTPUT "${PVS_STUDIO_CONFIG}"
                       COMMAND ${PVS_STUDIO_CONFIG_COMMAND}
                       WORKING_DIRECTORY "${CMAKE_BINARY_DIR}"
                       COMMENT "Generating PVS-Studio.cfg")

add_library(lib lib.cpp)
add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} lib)

include(../PVS-Studio.cmake)
pvs_studio_add_target(TARGET example9.analyze ALL
                      OUTPUT FORMAT errorfile
                      ANALYZE ${PROJECT_NAME} lib
                      CONFIG ${PVS_STUDIO_CONFIG}
                      DEPENDS ${PVS_STUDIO_CONFIG})
