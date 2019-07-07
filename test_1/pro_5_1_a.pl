#!usr/bin/perl
$fasta = <STDIN>;
chomp($fasta);
open IN,$fasta;
while(<IN>)
{
	print "$_"
}
close IN;
