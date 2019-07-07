#!usr/bin/perl
sub total
{
	$sum = 0;
	foreach(@_)
	{
		$sum += $_;
	}
	$sum;
}
my @fred = qw{ 1 3 5 7 9 };
my $fred_total = &total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines（结束输入请按下CTRL+D）: ";
my $user_total = &total(<STDIN>);
print "The total of those numbers is $user_total.\n";

