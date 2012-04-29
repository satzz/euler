use strict;
use warnings;
use Data::Dumper;

sub factors {
    my $arg = shift;
    if ($arg >= 4) {
        for my $i (2..sqrt($arg)) {
            $arg % $i or return (factors($i), factors($arg/$i));
        }
    }
    ($arg);
}

my $max = 0;
my $range = 999;
my @ret;
for my $a (-$range..$range) {
    for my $b (-$range..$range) {
        my $n = 0;
        while (1) {
            my $res = ($n + $a) * $n + $b;
            last if $res <= 1;
            my @f = factors ($res);
            last if scalar @f > 1;
            $n++;
        }
        $max < $n and $max = $n and @ret = ($max, $a, $b, $a*$b);
    }
}
printf "%s prime numbers are generated when a = %s, b = %s and a*b = %s\n", @ret;



