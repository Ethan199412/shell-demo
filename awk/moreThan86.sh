# grep -v 是反选行的意思
cat student.txt | grep -v NAME | awk '$6 >= 86 {print $2 " "$6}'