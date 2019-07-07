#!/usr/bin/perl
$file1=@ARGV[0];
open(FRED,$file1);
@lines=<FRED>;
$count=0;
$fred="fred";
foreach $line (@lines){
    $count+=1;
    my @words=split /\t/, $line;
    if($words[1] =~ /$fred$/i){
        print "$line";
    }
}
$line="CTTTTATATATTTT";
if ($line =~ /TATA[AT]A[AT]/ig){
	print "$&\n";
    $len=length($&);
	print "$len\n";
	$my_pos=pos($line);
	$start=$my_pos-$len+1;
	print "my_pos:$my_pos\n";
	print "start:$start\n";
}
