#!usr/bin/perl
$file = "</home/miaoyr/perl_practice/test2_file/2.4TATA.txt";
open FILE,$file;
@a = <FILE>;
for($i=1;$i<=7;$i+=2)
{
	while($a[$i] =~ /TATA[AT]A[AT]/ig)
	{
		$position = pos($a[$i]);
		$length = length($&);
		$b = $position + 1 - $length;
		$a[$i-1] =~ s/\n//g;
		$a[$i-1] =~ s/>//g;
		print $a[$i-1]."中，具有TATA BOX序列特征的基因开始于第".$b."位\n";
	}
} 
