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
sub average
{
	if(@_ == 0)
	{
		return;
	}
	$count = @_;
	$sum = &total(@_);
	$sum/$count;
}
sub above_average
{
	$ave = &average(@_);
	my @show;
	foreach $elem (@_)
	{
		if($elem > $ave)
		{
			push @show,$elem;
		}
	}
	@show; 
}
my @fred = &above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = &above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

