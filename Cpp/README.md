# C++

Compile:  
`g++ <input file>.cpp -o <executable name>`

# Template Versions

The template version of a solution will calculate the answer to the problem *at compile time*. All the runtime does is simply print a constant that is the pre-calculated answer.  

You can view the assembly output with:  
`g++ <input file>.cpp -c -S`  

The answer to the problem should be visible in the generated `<input file>.s` assembly file.  

There is also an online tool that shows the assembly output for C/C++ code: http://assembly.ynh.io/  
Just check the `GNU GCC C++` option.
