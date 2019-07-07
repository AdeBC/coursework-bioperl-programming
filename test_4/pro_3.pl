#!usr/bin/perl
open A1,"</home/u201713089/perl_practice/test_4/answer_1.txt";
open A2,"</home/u201713089/perl_practice/test_4/answer_2.txt";
open OUT,">answer_3.txt";
@AA2=<A2>;
$i=-1;
foreach $line(<A1>)
{
	chomp $line;
	$i++;
	print OUT $line."\t".@AA2[$i];
	@n=split /\s+/,$line;
	$sum1+=@n[1];
	$sum2+=@AA2[$i];
}
print OUT "共有:".$sum1."\t".$sum2."\n";
close A1;
close A2;
close OUT;
