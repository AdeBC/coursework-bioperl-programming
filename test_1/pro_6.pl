#!usr/bin/perl
$file = "</home/miaoyr/perl_practice/test1_file/sort_join_split";
open IN,$file;
@FL = <IN>;
close IN;
$astring = $FL[0];
$bstring = $FL[1];
$bstring =~ s/\s//g;
@array1 = split( '-', $astring );
@array2 = split( ',', $bstring );
@sort1 = sort(@array1);
@sort2 = sort{$b<=>$a} @array2;
$string1 = join( ',', @sort1 );
$string2 = join( ':', @sort2 );

print $string1;
print $string2;
print "\n";
