# The official CMake website has good documentation.
# see: https://cmake.org/cmake/help/latest/guide/tutorial/index.html#guide:CMake%20Tutorial
cmake_minimum_required(VERSION 3.20)
set(CMAKE_C_STANDARD 23)
set(CMAKE_CXX_STANDARD 20)

# LSP: Paths for 'clangd'
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Compile options (DEFAULT)
add_compile_options(-O2 -Wall)

# Compile options (DEBUG)
set(CMAKE_BUILD_TYPE Debug)
add_compile_options(-O0	-g)

# Modules (initialise)
include(cmake/pico-sdk.cmake)

# Project
project(my_project C CXX ASM)

include_directories(include)
add_executable(${PROJECT_NAME}
	src/main.c
)

# Modules (settings & links)
include(cmake/pico-sdk_settings.cmake)
