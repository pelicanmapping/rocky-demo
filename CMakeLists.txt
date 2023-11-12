cmake_minimum_required(VERSION 3.7)

set(VCPKG_OVERLAY_PORTS ${CMAKE_CURRENT_SOURCE_DIR}/vcpkg-ports)

project(rocky-demo VERSION 0.2.0 LANGUAGES CXX C)

find_package(rocky CONFIG REQUIRED)

add_executable(rocky-demo main.cpp)

target_link_libraries(rocky-demo PRIVATE rocky::rocky)

install(TARGETS rocky-demo RUNTIME DESTINATION bin)
