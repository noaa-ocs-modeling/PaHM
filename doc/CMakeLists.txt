###########################################################################
### CMake Build System for the Parametric Hurricane Model (PaHM)
### CMakeLists.txt :: The CMake configuration file for the project documentation
###                   Modified copy of the doxygen/doc/CMakeLists.txt
###
### Author: Panagiotis Velissariou <panagiotis.velissariou@noaa.gov>
###
### Version - 1.0 Mon Nov 18 2021
###########################################################################

#include (${TOP}/cmake/version.cmake)
string(TIMESTAMP DATE "%d-%m-%Y")

find_program(EPSTOPDF NAMES epstopdf )
find_program(PDFLATEX NAMES pdflatex )
find_program(MAKEINDEX NAMES makeindex )
include(GNUInstallDirs)

if (doxygen_BINARY_DIR)
    set(DOXYGEN_EXECUTABLE ${doxygen_BINARY_DIR}/bin/doxygen)
else()
    # when building only the pahm_doc, from the doc/ directory, the
    # doxygen project variables are unknown so look for doxygen in PATH
    find_package(Doxygen)
endif()

set(DOC_FILES
        index.doc
)

set(DOC_FILES_IMAGES
        pahm_logo.png
)


file(MAKE_DIRECTORY ${PROJECT_BINARY_DIR}/doc
                    ${PROJECT_BINARY_DIR}/doc/images)

foreach (f  ${DOC_FILES})
add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/doc/${f}
    COMMAND ${CMAKE_COMMAND} -E copy ${PROJECT_SOURCE_DIR}/doc/${f} ${PROJECT_BINARY_DIR}/doc/${f}
    DEPENDS ${PROJECT_SOURCE_DIR}/doc/${f}
    )
set_source_files_properties(${PROJECT_BINARY_DIR}/doc/${f} PROPERTIES GENERATED 1)
list(APPEND OUT_DOC_FILES "${PROJECT_BINARY_DIR}/doc/${f}")
endforeach()

foreach (f  ${DOC_FILES_IMAGES})
add_custom_command(OUTPUT ${PROJECT_BINARY_DIR}/doc/images/${f}
    COMMAND ${CMAKE_COMMAND} -E copy ${PROJECT_SOURCE_DIR}/images/${f} ${PROJECT_BINARY_DIR}/doc/images/
    DEPENDS ${PROJECT_SOURCE_DIR}/addon/doxywizard/images/${f}
    )
set_source_files_properties(${PROJECT_BINARY_DIR}/doc/images/${f} PROPERTIES GENERATED 1)
list(APPEND OUT_DOC_FILES "${PROJECT_BINARY_DIR}/doc/images/${f}")
endforeach()

configure_file(${PROJECT_SOURCE_DIR}/doc/manual.sty         ${PROJECT_BINARY_DIR}/doc/manual.sty)
#configure_file(${PROJECT_SOURCE_DIR}/doc/pahm_manual.tex    ${PROJECT_BINARY_DIR}/doc/pahm_manual.tex)
return()
################################################################################
add_custom_target(run_doxygen
        COMMENT "Generating Latex and HTML documentation."
        COMMAND ${CMAKE_COMMAND} -E env VERSION=${VERSION} ${DOXYGEN_EXECUTABLE}
        DEPENDS ${OUT_DOC_FILES}
        DEPENDS doxygen
        WORKING_DIRECTORY ${PROJECT_BINARY_DIR}/doc/
)

add_custom_target(pahm_pdf
        COMMENT "Generating Doxygen Manual PDF."
        COMMAND ${CMAKE_COMMAND} -E remove refman.tex
        COMMAND ${CMAKE_COMMAND} -E copy ${PROJECT_BINARY_DIR}/doc/pahm_manual.tex  .
        COMMAND ${CMAKE_COMMAND} -E copy ${PROJECT_BINARY_DIR}/doc/manual.sty  .
        COMMAND ${CMAKE_COMMAND} -E copy ${PROJECT_SOURCE_DIR}/doc/pahm_logo.pdf  .
        COMMAND ${PDFLATEX}  -shell-escape pahm_manual.tex
        COMMAND ${MAKEINDEX} pahm_manual.idx
        COMMAND ${PDFLATEX}  -shell-escape pahm_manual.tex
        DEPENDS run_doxygen
        WORKING_DIRECTORY ${PROJECT_BINARY_DIR}/latex
)
add_custom_target(docs
        DEPENDS pahm_pdf
        VERBATIM
        )
################################################################################

install(CODE "if(NOT EXISTS \"${PROJECT_BINARY_DIR}/latex/pahm_manual.pdf\")
    message(FATAL_ERROR \"\nTerminating:\n    documentation has not been generated, \n    create documentation by using the 'docs' target followed by an 'install'\n\")
endif()"
)

install(FILES
        "${PROJECT_BINARY_DIR}/latex/pahm_manual.pdf"
        DESTINATION "${CMAKE_INSTALL_DOCDIR}"
)

install(DIRECTORY
        "${PROJECT_BINARY_DIR}/html"
        DESTINATION "${CMAKE_INSTALL_DOCDIR}"
)
