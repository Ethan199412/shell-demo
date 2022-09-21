# mac 上使用 sed -i 必须在前面加空格
# s 的意思是单独替换，某一行的替换
sed -i '' '4s/99/55/g'  student.txt  
