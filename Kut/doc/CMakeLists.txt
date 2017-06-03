cmake_minimum_required (VERSION 2.8.12)
project (doc)

include(UseLATEX.cmake REQUIRED)

#include(FindUnixCommands.cmake REQUIRED)

find_package(LATEX)

#find_program(LATEX_EXECUTABLE
 # NAMES
  #MiKTeX
  #proTEXt
  #TeX Live
  #MacTeX
  #PATHS
  #${CYGWIN_INSTALL_PATH}/bin
#)

configure_file (
                "${PROJECT_SOURCE_DIR}/size_of_anus.png.in"
                "${CMAKE_BINARY_DIR}/size_of_anus.png"    
                )

ADD_LATEX_DOCUMENT(
                euler_project.tex
                INPUTS euler_project.tex
                IMAGES ../build/euler_diagram.png
                DEPENDS euler_project.tex plotter
                TARGET_NAME dokumentum
                FORCE_PDF
                )
