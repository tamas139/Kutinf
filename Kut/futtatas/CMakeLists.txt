cmake_minimum_required (VERSION 2.8.12)
project (futtatas LANGUAGES C)


add_executable (main ${PROJECT_SOURCE_DIR}/Euler.c)

#target_include_directories (${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

target_link_libraries (main m)

add_custom_command (
                    COMMAND main
                    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
                    OUTPUT ${CMAKE_BINARY_DIR}/kimenet.txt
                    DEPENDS main
                    COMMENT "adatok generalasa"
                    )

add_custom_target(abramaker DEPENDS ${CMAKE_BINARY_DIR}/kimenet.txt)
