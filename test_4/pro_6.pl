#!usr/bin/perl
$file = "</home/miaoyr/perl_practice/test4_file/3.6donorseq.txt";
open IN,$file;
while(<IN>)
{
	@a=split //,$_;
	my $i=0;
	while($i<=20)
	{
		if($a[$i] eq 'a')  {$hash{'a'.$i}++;}
		if($a[$i] eq 't')  {$hash{'t'.$i}++;}
		if($a[$i] eq 'g')  {$hash{'g'.$i}++;}
		if($a[$i] eq 'c')  {$hash{'c'.$i}++;}
		$i++;
	}
}
$i=0;
while($i<=20)
{
	print "$hash{'a'.$i}\t";
	$i++;
}
print "\n";
$i=0;
while($i<=20)
{
	print "$hash{'t'.$i}\t";
	$i++;
}
print "\n";
$i=0;
while($i<=20)
{
	print "$hash{'g'.$i}\t";
	$i++;
}
print "\n";
$i=0;
while($i<=20)
{
	print "$hash{'c'.$i}\t";
	$i++;
}





