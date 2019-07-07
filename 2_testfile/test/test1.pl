#!/usr/bin/perl
my $cnt = 0;
$save="form_test";
open(SAVE, ">$save");
while($cnt < 1000){
    my $number0=rand(256);  #[0-255]之间的随机数生成
    my $number1=rand(256);
    my $number2=rand(256);
    my $number3=rand(256);
    print SAVE "$number0\t$number1\t$number2\t$number3\n";
    my $numfmt0=(sprintf "%.2f", $number0);  #格式化为2位字符串
    my $numfmt1=(sprintf "%7f", $number1);
    my $numfmt2=(sprintf "%e", $number2);
    my $numfmt3=(sprintf "%#o", $number3);

    printf("%d %.2f %7f %e %#o\n",$cnt,$number0,$number1,$number2,$number3); #格式化输出结果
    $cnt++;
}
