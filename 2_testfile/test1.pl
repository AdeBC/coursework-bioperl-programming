$string="NNST";
while($string=~/N[^P][ST]/g){
	   print "$&\n";
	   my $pos=pos($string);
	   print "$pos\n";
	   push(@pos,$pos-2);
	   pos($string)=$pos-2;
}
