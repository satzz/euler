use strict;
use warnings;
use Data::Dumper;

#      6 2 1
# 0123 0 0 0  0
# 0132 0 0 1  1
# 0213 0 1 0  2
# 0231 0 1 1  3
# 0312 0 2 0  4
# 0321 0 2 1  5
# 1023 1 0 0  6

# 3210 3 2 1  23 = ((3 * 3 + 2)* 2 + 1) * 1

my ($figs, $num) = @ARGV;
$num or die <<EOD;
perl ./24.pl 10 1000000
2783915460
EOD

my @shift;
my $quot = $num - 1 ;
for my $mod (2..$figs-1) {
    unshift @shift, $quot % $mod;
    $quot = int($quot / $mod);
}
unshift @shift, $quot;

my @ret = (0..$figs-1);
my $begin = 0;
for my $shift (@shift) {
    if ($shift) {
        my $end = $begin + $shift;
        @ret[$begin..$end] = ($ret[$end], @ret[$begin..$end-1]);
    }
    $begin++;
}
print @ret, "\n";
