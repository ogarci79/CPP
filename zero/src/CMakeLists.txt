# Create a library called "Zero" which includes the source file "zero.cpp"
# The extension is already found.  Any number of sources could be listed here.
add_executable(zero zero.cpp)

# Make sure the compiler can find include files for our Zero library 
# when other libraries or executlables link to Zero
#target_include_directories(Zero PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
