#!usr/bin/perl
$file = "</home/miaoyr/perl_practice/test2_file/2.5HSU96846.TXT";
open FILE,$file;
@DNA = <FILE>;
$DNA[0] = '';
$DNA[1] = '';
$NDNA = join('',@DNA);
$NDNA =~ s/\n//g;
$CDS = substr($NDNA,2217,187).substr($NDNA,2784,99).substr($NDNA,3414,54).substr($NDND,4008.137);
print "CDS序列为：$CDS\n";

