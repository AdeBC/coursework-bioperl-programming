#!/usr/bin/perl
$num_file=$ARGV[0];
$file2=$ARGV[1];
open SAVE,$file2;
@lines=<SAVE>;
=foreach $line (@lines){
    print$line;
}
=cut
$_="AFSIUHDHSUAIDHSUA";
@b=split('',$_);
@c=/A/g;
print scalar(@c);
