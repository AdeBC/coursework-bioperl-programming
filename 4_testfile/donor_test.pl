use Switch;
@row;
@donor;
for $i (1..21){
    push @row,0;
}
@donor=([@row],[@row],[@row],[@row]);
open(FILE,"3.6donorseq.txt");
@lines=<FILE>;
for $line (@lines){
    chomp($line);
    @words=split //, $line;
    $count=0;
    for $var (@words){
        switch($var){
            case "a" {$donor[0][$count]+=1}
            case "g" {$donor[1][$count]+=1}
            case "c" {$donor[2][$count]+=1}
            case "t" {$donor[3][$count]+=1}
        }
        $count+=1;
    }
}


