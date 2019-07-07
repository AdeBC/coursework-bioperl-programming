#!usr/bin/perl
$fasta = "</home/miaoyr/perl_practice/test1_file/DTNBP1.fasta";
open IN,$fasta;
readline IN; #跳过第一行无关信息！
@DNA = <IN>;
close IN;
$DNA = join('',@DNA);
$DNA =~ s/\s//g;
@a = split ('',$DNA);
$len = length $DNA;
print"该核酸序列的长度为:".$len."\n";
$j=8;
for($i=7;$i<11;$i++)
{
	print"第".$j."位碱基为:".$a[$i]."\n";
	$j++;
}
$a[7] = "T";$a[8] = "A";$a[9] = "C"; $a[10] = "G";
print"\n替换后：\n";
$j=8;
for($i=7;$i<11;$i++)
{
        print"第".$j."位碱基为:".$a[$i]."\n";
	$j++;
}

