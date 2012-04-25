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

sub sum_of_minors {
    my $arg = shift;
    my %h;
    for my $i (factors($arg)) {
        $h{$i} ||= 0;
        $h{$i}++;
    }
    my $prod = 1;
    while (my ($k,$v) = each %h) {
        $prod *= ($k ** ($v+1) -1) / ($k - 1);
    }
    $prod - $arg;
}

my $limit = 28123;

my @excess = grep {sum_of_minors ($_) > $_} (2..$limit) ;
my %excess;
$excess{$_} = 1 for @excess;

my $res = 0;
for my $i (1..$limit) {
    my $flag = 1;
    for my $j (@excess) {
        $j > $i and next;
        $excess{$i-$j} and undef $flag;
        $flag or last;
    }
    $flag and $res += $i;
}
warn $res;





