cmake_minimum_required(VERSION 3.15)
project(teste)

set(CMAKE_CXX_STANDARD 14)

include_directories(libs/GLFW)

find_package(OpenGL REQUIRED)
include_directories(${OPENGL_INCLUDE_DIR})

set(CORELIBS ${GLFW_LIBRARIES} ${OPENGL_LIBRARIES})
add_executable(teste main.cpp src/graphics/window.h src/graphics/window.cpp)

target_link_libraries(teste glfw ${CORELIBS})