#!usr/bin/perl
$fasta = "</home/miaoyr/perl_practice/test1_file/DTNBP1.fasta";
open IN,$fasta;
while(<IN>)
{
        print "$_";
}
close IN;

