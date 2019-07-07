#!usr/bin/perl
use Bio::SeqIO;
$file="/home/miaoyr/perl_practice/test4_file/3.fasta_seq.txt";
open OUT,">answer_1.txt";
$seq;
$in=Bio::SeqIO->new(-file => $file,-format=>"fasta");
while($seq=$in->next_seq())
{
	print OUT $seq->id."\t".length($seq->seq())."\n";
}
close OUT;
