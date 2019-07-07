#!usr/bin/perl
use Bio::SeqIO;
$file="/home/miaoyr/perl_practice/test4_file/3.fasta_seq.txt";
open OUT,">final.result";
$in=Bio::SeqIO->new(-file => $file,-format=>"fasta");
while($seq=$in->next_seq())
{
        print OUT $seq->id."\t".length($seq->seq())."\n";
}
$in=Bio::SeqIO->new(-file => $file,-format=>"fasta");
while($seq=$in->next_seq())
{
        @n=($seq->seq() =~ m/(G|C)/g);
        print OUT @n/length($seq->seq())."\n";
}

$i=-1;
foreach $line(<OUT>)
{
        chomp $line;
        $i++;
        print OUT $line."\t".@OUT[$i];
        @n=split /\s+/,$line;
        $sum1+=@n[1];
        $sum2+=@OUT[$i];
}
print OUT "共有:".$sum1."\t".$sum2."\n";
close OUT
