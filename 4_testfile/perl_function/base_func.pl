#!/usr/bin/perl;
$RNA_seq=$ARGV[0];
$gene_ls=$ARGV[1];
$save_file=$ARGV[2];

if(length($RNA_seq) == 0){
	die("ERROR: must specify a sequence file");
}
if(length($gene_ls) == 0){
	die("ERROR: must specify a gene list file");
}
if(length($save_file) == 0){
	    die("ERROR: must specify a name of the file to save the result");
}

#push gene list to array;sort;join;split;pop;push;shift;unshift
@gene_ls;
sub gene_array{
	open(GENES,$gene_ls);
	@gene_ls=<GENES>;
	chomp(@gene_ls);
	foreach $gene (@gene_ls){
		my @words=split / /,$gene;
		my $new=join(";", @words);
		print "$new\n";
	}
	my $length=scalar(@gene_ls);
	print "There are $length genes in total\n";
	my $sorted_ls=sort(@gene_ls);
	my @tmp_ls=@gene_ls;
	my $first = shift(@tmp_ls); 
	print "The fist gene is $first\n";
	my $a = pop(@tmp_ls);
	print "The last gene is $a\n";
	my @tmp_ls=@gene_ls;
	splice(@tmp_ls,-1,0,"my_tag");
	my $tmp_len=scalar(@tmp_ls);
	my $insert=$tmp_ls[$tmp_len-2];
	print "my insert value is '$insert'\n";
	splice(@tmp_ls,1,1,"P53");
	print "$tmp_ls[1]\n";
}
#hash reverse
%seq_hash;
%seq_length_hash;
sub seq_reverse{
	my ($seq,$id)=@_;
	my $a=substr($seq,0,10);
	my $r_seq=reverse $seq;
    $r_seq=~ tr/ACGT/TGCA/;
	my $b=substr($r_seq,-10);
    $seq_hash{$id}=$r_seq;
	my $seq_length=length($r_seq);
	print "$a\n$b\n";
	$seq_length_hash{$id}=$seq_length;
}
sub seq_to_hash{
	open(RNASEQ, $RNA_seq);
	my $id;
	my $seq;
	my @lines=<RNASEQ>;
	chomp(@lines);
	my $seq_flag=0;
	my $count=0;
	foreach $rna (@lines){
		if ($rna =~ /^>/){
			print "$rna\n";
			my $r_seq;
			if ($seq_flag==1){
			    seq_reverse($seq,$id);
			}
			$id=$rna;
			$seq_flag=0;
			$seq="";
		}else{
			$seq.=$rna;
			$seq_flag=1;
		}
	}
    seq_reverse($seq,$id);
	my @keys = keys%seq_hash;
	my @values = values%seq_hash;
	print "the first key is $keys[0]\n";
	my $var=substr($values[0],0,10);
	print "the first value is $var......\n";
	delete $seq_hash{$keys[0]};
	@keys = keys%seq_hash;
	print "the first key is $keys[0]\n";

}
open SAVE,">$save_file";
sub ID_to_seq{
	my ($gene,$gene_seq)=@_;
	for $var (@$gene){
		if(grep ($var, %$gene_seq)){
			print SAVE "$var\t$seq_length_hash{$var}\n$gene_seq->{$var}\n";
		}
	}

}
gene_array();
seq_to_hash();
ID_to_seq(\@gene_ls,\%seq_hash);
