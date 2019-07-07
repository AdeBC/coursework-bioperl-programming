#!usr/bin/perl
$file = "</home/miaoyr/perl_practice/test2_file/2.3fred.txt";
open IN,$file;
foreach (<IN>)
{
	if(/fred/i)
	{
		@a = split ('\s+',$_);
		print $a[0]."\n";
	}
}
