#!/bin/bash

#could be done in one go !!!
find . -type f | grep -vw './out' | grep -E '\.cc$|\.cpp$|\.h$|\.c$|\.java$' > cscope.files
find ./out/Release/gen/ -type f \( -name "*.cpp" -o -name "*.cc" -o -name '*.c' -o -name "*.h" \) >> cscope.files 
echo "Files listed: "
wc -l cscope.files
#gtags -i -f cscope.files
cscope -b -k -q

echo ""


echo "Done"
echo ""
