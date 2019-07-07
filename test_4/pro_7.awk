BEGIN{FS=" "}
{
	if(NR>1)
	{
		t=$4;
		id[$4]=$4;
		if(t in id) {fan[t]+=$2; fan_pq[t]+=$3;}
		else {fan[t]=$2; fan_pq[t]=$3;}
	}
}
END {print "GENE_NAME    [Fan](normalized)  [Fan_pq](normalized)\n"	;for(i in id) print i"\t\t"fan[i]"\t\t"fan_pq[i]}
