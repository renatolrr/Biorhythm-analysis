#!/usr/bin/perl

#https://metacpan.org/source/BEPPU/Date-Biorhythm-2.2/examples/basic.pl
 
use Date::Biorhythm;
 
my $bio = Date::Biorhythm->new({
  name     => 'Unix',
  birthday => Date::Calc::Object->new(0, 1964, 2, 15),
});
 
my $i = 0;
my $limit = 3;
$bio->day(Date::Calc::Object->today);
print 'Physical:';
print $bio->value('physical'), "\n";
print 'Emotional:';
print $bio->value('emotional'), "\n";
print 'Intelectual:';
print $bio->value('intellectual'), "\n";

