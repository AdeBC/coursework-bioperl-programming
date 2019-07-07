#!usr/bin/perl
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
print "数字1到1000之和为：".&total(1..1000)."\n";
