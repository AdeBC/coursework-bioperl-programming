#practice Linux

mkdir practiceLinux
#make directory

cd practiceLinux 
#change operation folder

cp /home/fux/practiceLinux/practiceLinux_2 ./ 
#copy file

nl practiceLinux_2 > f1 
#add a sequence number to each line, and save as f1

cat f1 | head -3 > f2 
#view the first 3 lines of f1, and save as f2

cat f1 | tail -3 > f3 
#view the last 3 lines of f1, and save as f3

grep WASH7P f1 > f4 
#find the information of gene WASH7P, and save as f4

sed -i '1,2d' f4 
#del the first and second lines of f4. (del means delete here)

sed -i 's/;/\t/g' f4 
#replace all the ';' with '\t'

cut -f11 f4 | cut -c6-11 >f5
#get the gene name in f4, and save as f5

awk '{print $1"\t"$2"\t"$4"\t"$5"\t"$6}' f4 > f6
#get the first, second, fourth, fifth, and sixth columns of f4, and save as f6
paste f6 f5 > f7
#merge f5 and f6, and save as f7

sort -n -k4 f7 > result
#sort f7 by the fifth column 'start', and save as result
