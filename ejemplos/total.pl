#!/usr4/bin/perl

#https://metacpan.org/source/BEPPU/Date-Biorhythm-2.2/examples/basic.pl
 
use Date::Biorhythm;
 
my $bio = Date::Biorhythm->new({
  name     => 'Unix',
  birthday => Date::Calc::Object->new(0, 1964, 2, 15),
});


$bio->day(Date::Calc::Object->today);

my $phy = $bio->value('physical');
my $emo = $bio->value('emotional');
my $int = $bio->value('intellectual');

my $tot=0;
if($phy==0){
	$tot=$tot+4;
};

print 'Physical:';
print $phy, "\n";
print 'Emotional:';
print $emo, "\n";
print 'Intelectual:';
print $int, "\n";
print 'Total:',$tot ,"\n";

