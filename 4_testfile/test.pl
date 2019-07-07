#!/usr/bin/perl -w
use Bio::SeqIO;
use Bio::DB::Fasta;
$seq=Bio::SeqIO->new(-file=>'/home/miaoyr/perl_practice/test4_file/3.fasta_seq.txt',-format=>'fasta');
open(file2,">perl4-2.txt");
while($sequen=$seq->next_seq)
{ $seq_gc=$sequen->subseq(5,10);
	$x=0;$t=0;
	@GC=split(//,$seq_gc);
	foreach my $a(@GC)
	{ if($a eq"G"||$a eq"C"){$x++;print "$a\n";}}
	$length=length($seq_gc);
	$t=$x/$length;
	print "$x\n";
}
close (file2);

