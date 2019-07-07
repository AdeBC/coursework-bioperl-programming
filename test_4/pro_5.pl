#!/usr/bin/perl
use Bio::SeqIO;
$file="/home/miaoyr/perl_practice/test4_file/3.fasta_seq.txt";
open OUT,">answer_5.txt";
$in = Bio::SeqIO->new(-file => $file, -format => 'fasta');
while($seq = $in ->next_seq)
{
	$display_name = $seq ->display_name;     
	$desc = $seq ->desc;
	$t=$seq ->seq;
	$new=reverse ($t);
	$new=~tr/ACTG/TGAC/;
	print OUT "$display_name $desc\n";
	print OUT "$new\n";
}
