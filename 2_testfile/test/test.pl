#!usr/bin/perl -w
open(FILE1,"2.1name.txt");
open(FILE2,"2.1Predicted_Targets_Info.txt");
#open(NEWFILE,">2.1newfile.txt");
$lines=<STDIN>;
print @lines;
=my @name=<FILE1>;
my @info=<FILE2>;
foreach $n(@name)
{
   chomp($n);
  # print "$n\n";
   foreach $i(@info)
   {
#	chomp($i);
      @m=split(/\t/,$i);
#      if($m[2]=~/\A$n\Z/)
    # print "$m[2]\n";
   }
}
close(FILE1);
close(FILE2);
#close(NEWFILE);
=cut
