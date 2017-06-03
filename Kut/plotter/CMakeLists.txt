cmake_minimum_required (VERSION 2.8.12)
project(plotter)

#find_package (Gnuplot REQUIRED)

find_program(GNUPLOT_EXECUTABLE
  NAMES
  gnuplot
  pgnuplot
  wgnupl32
  PATHS
  ${CYGWIN_INSTALL_PATH}/bin
)

add_custom_command(
                COMMAND ${GNUPLOT_EXECUTABLE} ${PROJECT_SOURCE_DIR}/eulerplot.plot
                WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
                OUTPUT ${CMAKE_BINARY_DIR}/euler_diagram.png
                DEPENDS ${PROJECT_SOURCE_DIR}/eulerplot.p abramaker
                COMMENT "abra generalasa"
                )

add_custom_target(${PROJECT_NAME} DEPENDS ${CMAKE_BINARY_DIR}/euler_diagram.png)
