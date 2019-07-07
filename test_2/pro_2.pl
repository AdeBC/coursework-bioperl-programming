#!usr/bin/perl
$info = "</home/miaoyr/perl_practice/test2_file/2.2gene_DE_info";
$id = "</home/miaoyr/perl_practice/test2_file/2.2gene_id";
open INFO,$info;
open ID,$id;
open NEW,">answer_2.txt";
%hash;
foreach (<INFO>)
{
	$_ =~ s/\s+/ /g;
	@a = split (' ',$_);
	$hash{$a[0]} = "$a[1]";
}
foreach $i (<ID>)
{
	chomp($i);	
	print NEW $i."\n";
	print NEW $hash{$i}."\n";
	print NEW "*"x100;
	print NEW "\n";
}
close INFO;
close ID;
close NEW;
