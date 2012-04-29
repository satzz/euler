use strict;
use warnings;
use Data::Dumper;

my %len_for;
my $end = 1000;

for my $i (1..$end) {
    my $j = $i;
    while (1) {
        $j % 10 and last;
        $j /= 10;
    }
    $len_for{$j} and next;

    my $k = $j;
    for my $factor (2, 5) {
        while (1) {
            $k % $factor and last;
            $k /= $factor;
        }
    }
    $k > 1 or next;

    my $resd = 1;
    my $pivot = 1;
    my %pos_for = (1 => $pivot);
    my $loop = 1;
    while ($loop) {
        $pivot++;
        $resd = ($resd * 10) % $j;
        if (my $before = $pos_for{$resd}) {
            undef $loop;
            $len_for{$j} = $pivot - $before;
        } else {
            $pos_for{$resd} = $pivot;
        }
    }
}

my $max = 0;
my $ans;
while (my ($n, $len) = each %len_for) {
    $len > $max and ($ans, $max) = ($n, $len);
}
print "1/$ans has the longest length of cycle: $max \n";


