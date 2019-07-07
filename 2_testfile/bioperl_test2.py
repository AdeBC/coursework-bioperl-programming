'''
************************************************************
Author        : Hui Chong
Email         : ch37915405887@gmail.com
Last modified : 2019-04-20 22:26
Filename      : bioperl_test2.py
Description   : Empty
************************************************************
'''
# 2.1
import re
import subprocess

def FormatSeq(path_file):
	s= open(path_file, "r"); c=s.readlines(); s.close 
	c.remove(c[0]); c=''.join(c); c= re.sub(r'\n', '', c)  
	return c

def getCmdOutput(cmd):
	proc = subprocess.Popen(cmd,shell=True, stdout=subprocess.PIPE,)
	return bytes.decode(proc.communicate()[0])

def fileOprbyshell_1():
	name=open('2.1name.txt', 'r'); name.close
	result=open('2.1result.txt', 'w')
	result.write('miR_Family	Gene_Symbol\n')
	for i in name: 
		i=i.rstrip('\n')
		cmd='''awk '/'''+i+'''/ {print $1, $3}' 2.1Predicted_Targets_Info.txt''' 
		s= getCmdOutput(cmd); result.write(s)
	result.close

# 2.2
def GeneExpr_2():
	name=open('2.2gene_id', 'r'); name.close
	result=open('2.2result.txt', 'w'); mydict={}
	key=[l.split()[0]for l in open('2.2gene_DE_info')]
	value=[l.split()[1]for l in open('2.2gene_DE_info')]
	keys='gene_id:'.ljust(10); values='log2FC:'.ljust(10)
	for i in name:
		i=i.rstrip('\n')
		pos=key.index(i)
		mydict[key[pos]]=value[pos]
	for i in mydict.keys(): i=i.ljust(18); keys+=i	
	for i in mydict.values(): i=i.ljust(18); values+=i
	result.write(keys+'\n'); result.write(values); result.close
# 2.3
def Match_fred():
	n=[l.split()[0] for l in open('2.3fred.txt')]
	c=[l.split()[1] for l in open('2.3fred.txt')]
	for i in range(len(c)):
		# if 'fred' in c[i].lower(): print(i+1, end='  ')
		if c[i]=='fred': print(i+1, end='  ')
	open('2.3fred.txt').close
# 2.4
def TATABOX():
	patterns=['tataaaa', 'tataaat', 'tatataa', 'tatatat']
	seq=open('2.4TATA.txt').readlines(); open('2.4TATA.txt').close 
	for i in seq: 
		ls=[]
		if len(i)<10: print(i.lstrip('>').rstrip('\n'), end=': ')
		for m in re.finditer(patterns[0], i): ls.append(m.start())
		for m in re.finditer(patterns[1], i): ls.append(m.start())
		for m in re.finditer(patterns[2], i): ls.append(m.start())
		for m in re.finditer(patterns[3], i): ls.append(m.start()) 
		ls.sort(); ls=list(map(str, ls)); print('\t'+' '.join(ls))
# 2.5
def CDs():
	seq=''; CDs='' # local variables with initialization
	f=open('2.5HSU96846.TXT', 'r'); lines=f.readlines(); f.close()
	pos=lines[1].lstrip(r'CDSjoin(').rstrip(')\n').split(',')
	for i in range(len(pos)): pos[i]=str(pos[i]).split(r'..')
	for i in range(2,len(lines)): seq+=lines[i].rstrip('\n')
	for i in pos: CDs+=seq[int(i[0])-1: int(i[1])-1]
	print('CDs: \n'+CDs)
	
# fileOprbyshell_1()
# GeneExpr_2()
# Match_fred()
# TATABOX()
CDs()
