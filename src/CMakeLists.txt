aux_source_directory (. SRC_LIST)

include_directories (../include)

add_compile_options(-std=c++11 -Wall)

set (EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)


add_executable (server ${SRC_LIST})


target_link_libraries (server pthread opencv_core opencv_imgproc opencv_highgui)


