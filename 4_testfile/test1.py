f=open('/home/miaoyr/perl_practice/test4_file/3.fasta_seq.txt')
seq={}
for line in f:
    if line.startswith('>'):
        name=line.replace('>','').split()[0]
        seq[name]=''
    else:
        seq[name]+=line.replace('\n','').strip()
print "done"
f.close()
#print seq
_str=[]
CG=0.00
l=open('4-4-output.txt','w')
for key in seq.keys():
    CG=(seq[key].count('C')+seq[key].count('G'))/float(len(seq[key]))
    print CG
    _str.append("%s\t%d\t%.2f\n" %(key,len(seq[key]),CG))
l.writelines(_str)
l.close()

