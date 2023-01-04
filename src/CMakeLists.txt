
#设置c++的版本并添加多线程的使用
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -pthread")

#设置输出文件的路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/release)

include_directories("${CMAKE_CURRENT_SOURCE_DIR}/../include")

# 查找当前目录的所有源文件
set(REQUIRE_CPP 
		des.cpp des3.cpp tripleDesTest.cpp
		../include/tools/decode.h)

#指定生成目标
add_executable(encode_file ${REQUIRE_CPP})

#添加链接库

if (WIN32)
	target_compile_definitions(encode_file PRIVATE -DWIN32_LEAN_AND_MEAN -D_SILENCE_EXPERIMENTAL_FILESYSTEM_DEPRECATION_WARNING)
else ()
	target_link_libraries(encode_file stdc++)
endif ()

