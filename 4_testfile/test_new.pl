#!/usr/bin/perl
$i=1;
open AH,'3.6donorseq.txt';
open BH,'>6-res';
@a;
while(<AH>)
{
	@tmp=split;
	print scalar(@tmp);
	foreach(0..$#tmp){
		if($tmp[$_] eq "A")
		{$a[0][$_]+=1;};
		if($tmp[$_] eq "T")
		{$a[1][$_]+=1;}
		if($tmp[$_] eq "C")
		{$a[2][$_]+=1;};
		if($tmp[$_] eq "G")
		{$a[3][$_]+=1;};
		print $a[3][10];
	}
#print @AoA;
}
for $aref(@a){
	print BH "@$aref\n";
}

