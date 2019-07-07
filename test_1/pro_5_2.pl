#!usr/bin/perl
$fasta = "</home/miaoyr/perl_practice/test1_file/DTNBP1.fasta";
open IN,$fasta;
readline IN;
$a=0;$c=0;$g=0;$t=0;
@DNA = <IN>;
close IN;
$DNA = join('',@DNA);
$DNA =~ s/\s//g;
for($position = 0;$position < length $DNA;++$position)
{
	$base = substr($DNA,$position,1);
	if($base eq 'A'){
		$a++;
	}
	elsif($base eq 'C'){
		$c++;
	}
	elsif($base eq 'G'){
		$g++;
	}
	elsif($base eq 'T'){
		$t++;
	}
}
print "The number of 'A' is:".$a."\n";
print "The number of 'C' is:".$c."\n";
print "The number of 'G' is:".$g."\n";
print "The number of 'T' is:".$t."\n";
