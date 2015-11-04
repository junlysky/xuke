#!/use/bin/env perl
use strict;
use warnings;

use Date::Calc qw/Delta_Days/;

open(IN, "< /home/junlysky/xuke/DateTick_sx.txt");
my @lines = <IN>;
chomp(@lines);
close(IN);
my ($year2,$month2,$mday2);
my ($jday,$ddate,$mag);
my %event_of;

open(OUT, "> sx.txt");

($year2,$month2,$mday2) = (2008,10,9);
foreach my $line (@lines){
    $line=~s/^\s+//;
	$line=~//g;
    my ($jday,$aa,$ddate)=split /\s+/,$line;
  
    my $year = substr($ddate,0,4);
    my $month = substr($ddate,4,2);
    my $mday = substr($ddate,6,2);
 
  my $Dday = Delta_Days($year2,$month2,$mday2,$year,$month,$mday) + 1;
    print  OUT "$Dday $aa $ddate\n";
    
 #   print "$Dday,$date\n";
}
close(OUT);