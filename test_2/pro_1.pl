#!usr/bin/perl
$file1 = "</home/miaoyr/perl_practice/test2_file/2.1Predicted_Targets_Info.txt";
$file2 = "</home/miaoyr/perl_practice/test2_file/2.1name.txt";
open FILE1,$file1;
open FILE2,$file2;
open NEWFILE,">answer.txt";
my @info = <FILE1>;
my @name = <FILE2>;
foreach $n (@name)
{
	chomp($n);
	print NEWFILE "$n:\n";
	foreach $i (@info)
	{
		chomp($i);
		@m = split(/\t/,$i);
		if($m[2] =~ /\A$n\Z/){
			print NEWFILE "$i\n";
		}
	}
	print NEWFILE "*"x100;
	print NEWFILE "\n";
}
close FILE1;
close FILE2;
close NEWFILE;
