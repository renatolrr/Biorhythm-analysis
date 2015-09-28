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
}
elsif ($phy>0) {
	$tot=$tot+1;
}
elsif ($phy<0) {
	$tot=$tot+2;
};
if($emo==0){
	$tot=$tot+4;
}
elsif ($emo>0) {
	$tot=$tot+1;
}
elsif ($emo<0) {
	$tot=$tot+2;
};
if($int==0){
	$tot=$tot+4;
}
elsif ($int>0) {
	$tot=$tot+1;
}
elsif ($int<0) {
	$tot=$tot+1;
};;

print 'Physical:';
print $phy, "\n";
print 'Emotional:';
print $emo, "\n";
print 'Intelectual:';
print $int, "\n";
print 'Total (3-12):',$tot ,"\n";

