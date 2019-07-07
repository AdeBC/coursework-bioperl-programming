#!/usr/bin/perl
$num_pre = "</home/miaoyr/perl_practice/test1_file/number_practice";
open IN,$num_pre;
open OUT,">/home/u201713089/answer.txt";
while(<IN>)
{
	if($_%3==0&&$_!=0)
	{
		print OUT "$_";
	}
}
close IN;
