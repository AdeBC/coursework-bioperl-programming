'''getCmdOutput
************************************************************
Author        : Hui Chong
Email         : ch37915405887@gmail.com
Last modified : 2019-04-22 14:49
Filename      : bioperl_test4.py
Description   : Empty
************************************************************
'''
from Bio.Seq import Seq
from Bio.Alphabet import IUPAC
'''
def CGinfomofseq():
	f=open('3.fasta_seq.txt','r'); lines=f.readlines(); f.close()
	Info=[]; Sequence=[]; CGprop=[]; length=len(lines); r=open('final.result', 'w')
	for i in range(length-1):
		if lines[i][0]!='>'and lines[i+1][0]!='>': 
			lines[i]= lines[i].rstrip('\n')
	lines=''.join(lines).split('\n')
	for i in range(len(lines)): Info.append(lines[i]) if i%2==0 else Sequence.append(lines[i])
	for i in Sequence: CGprop.append('%.4f' % ((i.count('C')+i.count('G'))/len(i)))
	# for i in range(len(Info)-1): print(Info[i]+'\t'+str(len(Sequence[i]))) 
	# to get the result of 4.1 please remove '#' at the beginning of last line
	
	# for i in CGprop: print(i)
	# to get the result of 4.2 please remove '#' at the beginning of last line

	for i in range(len(Info)-1): 
		r.write(Info[i]+'\t'+str(len(Sequence[i]))+'\t'+CGprop[i]+'\n')
	r.write(str(sum([float(len(i)) for i in Sequence]))+'\t'+str(sum([float(j) for j in CGprop])))
	r.close
CGinfomofseq()

# 4.5
def revcom(seq):
	my_seq=Seq(seq, IUPAC.unambiguous_dna)
	return str(my_seq.reverse_complement())

def getreverse_complement():
	f= open('3.fasta_seq.txt','r'); r= open('3.fasta_revseq.txt','w')
	lines=f.readlines(); f.close();
	for line in lines:
		if '>' in line: r.write(line.rstrip('\n')+' reverse_complement')
		else: r.write(revcom(line))
	r.close
getreverse_complement()

# 4.6
def caldonor():
	f=open('3.6donorseq.txt', 'r'); rows=['']*21
	cal=['A','T','C','G']; lines=f.readlines()
	for i in range(21):
		for line in lines: rows[i]=rows[i]+''.join(line[i])
	f.close()
	for row in rows:
		cal[0]+=(' '+'%.4f' % (Seq(row).count('a')/len(row)))
		cal[1]+=(' '+'%.4f' % (Seq(row).count('t')/len(row)))
		cal[2]+=(' '+'%.4f' % (Seq(row).count('c')/len(row)))
		cal[3]+=(' '+'%.4f' % (Seq(row).count('g')/len(row)))	
	print('  ', end=''); 
	for i in range(21): print(i, end='      ')
	print('\n')
	for c in cal: print(c)
caldonor()

# 4.7
def add(a,b): return [a[0], float(a[1])+float(b[1]),float(a[2])+float(b[2]),a[3]]

def caltraspsignal():
	f=open('3.7transcript_normalized_sig.txt', 'r')
	lines=f.readlines(); lines.remove(lines[0]); c=[];
	for line in lines: c.append(line.split())
	for i in range(len(c)):
		for j in range(i+1,len(c)):
			if j<len(c):
				if c[i][3]==c[j][3]:
					c[i]=add(c[i], c[j]); c.remove(c[j])
	for i in c: print('{:<9} {:<9.5f} {:<9.5f}'.format(i[3], float(i[1]), float(i[2])))

caltraspsignal()
'''
