# CMake 最低版本号要求
cmake_minimum_required (VERSION 3.12)

# 项目信息
project (encode_model)
set(CMAKE_CXX_STANDARD 11)

set(CMAKE_CXX_FLAGS "-O2 -Wall -std=c++11")
set(CMAKE_CXX_FLAGS_RELEASE "$ENV{CMAKE_CXX_FLAGS}")

#设置c++的版本并添加多线程的使用
add_subdirectory(./src)