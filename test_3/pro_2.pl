#!usr/bin/perl
$file = "</home/miaoyr/perl_practice/test3_file/form_test";
open IN,$file;
open OUT,">answer.txt";
$i=0;
while(<IN>)
{
	chomp($_);
	@a=split(' ',$_);
	$a[0]=sprintf("%.2f",$a[0]);
	$a[1]=sprintf("%-10.10s",$a[1]);
	$a[2]=sprintf("%e",$a[2]);
	$a[3]=sprintf("%x",$a[3]);
	print OUT "$i $a[0] $a[1] $a[2] $a[3]\n";
	$i++;
}
close IN;
close OUT;
