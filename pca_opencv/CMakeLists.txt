# CMakeLists files in this project can 
# refer to the root source directory of the project as ${pca_opencv_SOURCE_DIR} and
# to the root binary directory of the project as ${pca_opencv_BINARY_DIR}.
cmake_minimum_required (VERSION 2.8.11)
project(pca_opencv)

# Recurse into the "pca_opencv" subdirectory.  this does not actually 
# cause another cmake executable to run.  The same process will walk through
# the project's entire direectory structure.
add_subdirectory(src)
