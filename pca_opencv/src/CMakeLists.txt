# Include OpenCV
find_package(OpenCV REQUIRED)

# Create a library called "pca_opencv" which includes the source file "pca_opencv.cpp"
# The extension is already found.  Any number of sources could be listed here.
add_executable(pca_opencv pca_opencv.cpp)

target_link_libraries(pca_opencv ${OpenCV_LIBS})

# Make sure the compiler can find include files for our pca_opencv library 
# when other libraries or executlables link to pca_opencv
#target_include_directories(pca_opencv PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
