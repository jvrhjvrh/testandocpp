cmake_minimum_required(VERSION 3.15)
project(teste)

set(CMAKE_CXX_STANDARD 14)

include_directories(libs/GLFW)

find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)
include_directories(${OPENGL_INCLUDE_DIR})
include_directories(${GLEW_INCLUDE_DIRS})

set(CORELIBS ${GLFW_LIBRARIES} ${OPENGL_LIBRARIES} ${GLEW_LIBRARIES})
add_executable(teste main.cpp src/graphics/window.h src/graphics/window.cpp)

target_link_libraries(teste glfw ${CORELIBS})