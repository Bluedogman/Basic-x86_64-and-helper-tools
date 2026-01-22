So far this has a basic hello world script in x84_64 asm, and a shell script that will run it automatically, with optional flags for deleting the .o file, 
and automatically running the asm script after compiling with the .sh script.

I have sorted helper macros and labels in /headers

ex: tools/run_asm.sh hello_world -> compiles, makes executable, deletes .o file, runs script, deletes executable
ex(leaves executable) tools/run_asm.sh hello_world 1 0 -> compiles, makes executable, deletes .o file, runs, leaves the executable
ex(leaves exe, and does not auto run) tools/run_asm.sh hello_world 0 0 -> compiles, makes exe, deletes .o (does not run, leaves exe for you to run manually)