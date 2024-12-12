cmake_minimum_required(VERSION 3.10)
project(Calculator)

# Створення бібліотеки
add_library(calculator STATIC calculator.cpp)

# Створення виконуваного файлу
add_executable(main main.cpp)

# Лінкування бібліотеки з виконуваним файлом
target_link_libraries(main calculator)
