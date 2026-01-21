#$1 = source asm file (no suffix), $2 = call or not(0, 1), $3 = remove executable (yes by default)

#Compile .asm code
echo "Compiling $1.asm to target/$1.o"
nasm -f elf64 $1.asm -o target/$1.o

#Convert the obj file into an executable using ld
ld target/$1.o -o $1

#Removing the .o file
echo "Removing the file: target/$1.o"
rm target/$1.o

#call the file after creating if the call flag is true
CALL_SRC="${2:-1}"
echo "$2"
if [ $CALL_SRC -eq 1 ]; then
    ./$1
fi

#Deleting the executable if the $3 = true
RM_exe="${3:-1}"
if [ $RM_exe -eq 1 ]; then
    rm $1
fi