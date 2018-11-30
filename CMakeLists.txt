cmake_minimum_required (VERSION 3.12.4)

project (aoc18 CXX)

if(CMAKE_COMPILER_IS_GNUCXX
        OR(CMAKE_C_COMPILER_ID MATCHES "Clang")
        OR(CMAKE_CXX_COMPILER_ID MATCHES "Clang"))
    set(CXX_FLAGS -O3 -march=native -Wall -Wextra -Wpedantic -pedantic -pedantic-errors)
endif()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(inc)

add_executable(aoc18
	inc/Default_includes.hpp
	inc/Solution.hpp
	src/Day01.cpp
	src/Runner.cpp
	src/Solution.cpp)

target_compile_options(aoc18 PUBLIC ${CXX_FLAGS})
install(TARGETS aoc18 RUNTIME DESTINATION ${PROJECT_SOURCE_DIR})
