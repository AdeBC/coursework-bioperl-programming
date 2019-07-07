#!/usr/bin/perl
@n=qw(E F G H);
$a="dadsafsa";
%hash=('Beijing', "asdfasf", 'Shanghai', "tafsd", 'Nanjing', "sadfafaasfd", 'Shenyang', "saeafa");
foreach $key ( sort { $hash{$a} <=> $hash{$b} } keys %hash){
	   print "$key: $hash{$key}\n";
}
print "\n";
foreach $key ( sort { $hash{$b} <=> $hash{$a} } keys %hash){
	   print "$key: $hash{$key}\n";
}
print "\n";
foreach $key ( sort { $hash{$a} cmp $hash{$b} } keys %hash){
	   print "$key: $hash{$key}\n";
}
print "\n";
foreach $key ( sort { $hash{$b} cmp $hash{$a} } keys %hash){
	   print "$key: $hash{$key}\n";
}

