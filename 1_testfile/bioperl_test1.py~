'''
	Bioperl programs
	Author: Hui Chong
	Data: 2019/4/17
'''
# Remove the first line, > and \n of seq file, return lines
import re
def FormatSeq(path_file):
	s= open(path_file, "r"); c=s.readlines(); s.close 
	c.remove(c[0]); c=''.join(c); c= re.sub(r'\n', '', c)  
	return c

# 1.1 & 1.2 & 1.3
def Cal_Premt(r=12.5): 
	if r>=0: 
		print(" the premeter of this circle is: {:.1f}".
			format(6.28*r))
	else: 
		print(" the premeter of this circle is:", 0*r)

# 2
def Cal_Product():
	p,q = map(int,input(
		" please input two numbers seperated by space: ").split()) 
	print(" the product of p and q is: {:.2f}".format(p*q))

# 3
def Print_nS():
	n, s=input(" please input a number and string: ").split()
	for i in range(int(n)):
		print(' '+s)

# 4
def SaveNum_3():
	path_file="number_practice" 
	path_newfile="result_test-4"
	s= open(path_file, "r"); new_s=open(path_newfile, "w")
	data=s.read(); list_data=data.split()
	for num in list_data:
		if (int(num)%3==0):
			new_s.write(num+" ")
	s.close; new_s.close

# 5.1
'''
def ReadFile(s=input(" please input file name")):
	file=open(s, "r")
	return file.read()
'''
# 5.2
def Count_atcg():
	path_file="DTNBP1.fasta"; s= open(path_file, "r")
	lines=s.readlines(); lines.remove(lines[0]); Num_atcg=[0,0,0,0]
	for line in lines: 
		for i in line:
			if i=='A': Num_atcg[0]+=1
			if i=='T': Num_atcg[1]+=1
			if i=='C': Num_atcg[2]+=1
			if i=='G': Num_atcg[3]+=1
	s.close; print(" the number of a, t, c and g is: ", Num_atcg)

# 5.3
def LenofSeq():
	path_file="DTNBP1.fasta";
	lines=FormatSeq(path_file); ls=[]
	for line in lines: 
		new_line=list(line); ls.extend(new_line)
	for i in range(7, 11): print(' '+ls[i], end=' ')
	print(' ')
	ls[7]='T'; ls[8]='A'; ls[9]='C'; ls[10]='G'
	for i in range(7, 11): print(' '+ls[i], end=' ')
	print(' ')
	return len(ls)

# 6
def FormatPrint():
	path_file="sort_join_split"; s= open(path_file, "r");
	lines=s.readlines(); line_0=lines[0]; line_0=line_0.strip('\n')
	line_0 = line_0.split('-')
	line_0 = sorted(line_0); line_0 = ','.join(line_0)
	print(" "+line_0)
	line_1 = lines[1]; line_1=line_1.strip('\n') 
	line_1 = line_1.split(',')
	line_1 = list(map(int, line_1)) 
	line_1 = sorted(line_1, reverse=True); 
	line_1 = list(map(str, line_1))
	line_1 = '|'.join(line_1); print(" "+line_1)
	s.close;

# start test
'''
print('1.1'); Cal_Premt()
print('1.2'); Cal_Premt(float(input(' please input a number: ')))
print('1.3'); Cal_Premt(float(input(' please input a number: ')))

print("2"); Cal_Product() 
print("3"); Print_nS()
print('4'); SaveNum_3()

print('5.1-2'); ReadFile()
print('5.1-1'); ReadFile('DTNBP1.fasta')
print('5.2'); Count_atcg()
print('5.3'); print(' the length of sequence is: ', LenofSeq())
'''
print('6'); FormatPrint()
