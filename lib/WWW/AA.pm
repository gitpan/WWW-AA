package WWW::AA;

use 5.008008;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);
our %EXPORT_TAGS = ( 'all' => [ qw( ) ] );
our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT = qw( );
our $VERSION = '0.02';

#-------------------------------------------------------------------------------
# Module declaration
#-------------------------------------------------------------------------------
sub new {
	my $self = {};
	bless $self;
	return $self;
}
#-------------------------------------------------------------------------------
# The number of dots is calculated.
# $aart -> calcu($str, $encode);
#-------------------------------------------------------------------------------
sub calcu {
	my $self   = shift;
	my $str    = shift;
	my $encode = shift;

	return $self -> calcu_euc($str) if $encode eq 'euc';
}

# For EUC-JP $aart -> calcu_euc($str);
sub calcu_euc {
	my $self = shift;
	my $str  = shift;

	my $count = 0;
	$count += 15 * ($str =~ s/\xa1\xbc|\xa3\xcd|\xa3\xed|\xa4\xa2|\xa4\xa4|\xa4\xaa|\xa4\xb1|\xa4\xb9|\xa4\xbd|\xa4\xbe|\xa4\xbf|\xa4\xc0|\xa4\xc4|\xa4\xc5|\xa4\xcb|\xa4\xd2|\xa4\xd3|\xa4\xd4|\xa4\xf3|\xa5\xa6|\xa5\xaa|\xa5\xac|\xa5\xad|\xa5\xae|\xa5\xb0|\xa5\xb1|\xa5\xb2|\xa5\xba|\xa5\xbb|\xa5\xc0|\xa5\xc1|\xa5\xc2|\xa5\xc5|\xa5\xc7|\xa5\xca|\xa5\xcb|\xa5\xcd|\xa5\xd8|\xa5\xd9|\xa5\xda|\xa5\xdb|\xa5\xdc|\xa5\xdd|\xa5\xe6|\xa5\xef|\xa5\xf4//g);
	$count += 14 * ($str =~ s/\xa4\xa8|\xa4\xad|\xa4\xae|\xa4\xb4|\xa4\xb6|\xa4\xc1|\xa4\xc2|\xa4\xc6|\xa4\xc7|\xa4\xc9|\xa4\xca|\xa4\xde|\xa4\xe3|\xa4\xe5|\xa4\xe8|\xa4\xeb|\xa4\xed|\xa4\xee|\xa4\xf2|\xa5\xa2|\xa5\xa8|\xa5\xb4|\xa5\xb7|\xa5\xb8|\xa5\xb9|\xa5\xbe|\xa5\xc4|\xa5\xc6|\xa5\xd3|\xa5\xd4|\xa5\xd6|\xa5\xd7|\xa5\xde|\xa5\xe2|\xa5\xec|\xa5\xed|\xa5\xf3//g);
	$count += 13 * ($str =~ s/\xa3\xcf|\xa3\xd1|\xa4\xa3|\xa4\xa9|\xa4\xb0|\xa4\xb3|\xa4\xc3|\xa4\xe2|\xa4\xe9|\xa5\xa4|\xa5\xa9|\xa5\xab|\xa5\xaf|\xa5\xb3|\xa5\xbd|\xa5\xcc|\xa5\xd5|\xa5\xe3|\xa5\xe5|\xa5\xe9|\xa5\xf2//g);
	$count += 12 * ($str =~ s/\x4d|\x57|\x6d|\xa1\xb3|\xa1\xb4|\xa1\xb5|\xa3\xc2|\xa3\xc3|\xa3\xc4|\xa3\xc7|\xa3\xc8|\xa3\xcb|\xa3\xce|\xa3\xd2|\xa3\xd3|\xa3\xd5|\xa3\xf7|\xa4\xa1|\xa4\xa7|\xa4\xb5|\xa4\xb7|\xa4\xb8|\xa4\xc8|\xa4\xe7|\xa4\xea|\xa5\xa1|\xa5\xa5|\xa5\xa7|\xa5\xbf|\xa5\xc3|\xa5\xd2|\xa5\xe1|\xa5\xe8|\xa5\xea|\xa5\xee|\xa5\xf5|\xa5\xf6//g);
	$count += 11 * ($str =~ s/\x40|\x43|\x47|\x4f|\x51|\x8e\xbb|\x8e\xd1|\x8e\xd4|\x8e\xd9|\xa1\xa2|\xa1\xa3|\xa1\xa4|\xa1\xa5|\xa1\xb6|\xa3\xb0|\xa3\xb1|\xa3\xb2|\xa3\xb3|\xa3\xb4|\xa3\xb5|\xa3\xb6|\xa3\xb7|\xa3\xb8|\xa3\xb9|\xa3\xc1|\xa3\xc5|\xa3\xd0|\xa3\xd6|\xa4\xa6|\xa5\xc9|\xa5\xce|\xa5\xdf|\xa1\xa1//g);
	$count += 10 * ($str =~ s/\x26|\x41|\x42|\x44|\x48|\x4b|\x4e|\x50|\x52|\x53|\x55|\x56|\x58|\x77|\x8e\xb0|\x8e\xb1|\x8e\xb3|\x8e\xb4|\x8e\xb5|\x8e\xb7|\x8e\xb9|\x8e\xbd|\x8e\xbe|\x8e\xc1|\x8e\xc2|\x8e\xc3|\x8e\xc5|\x8e\xc6|\x8e\xc8|\x8e\xca|\x8e\xcd|\x8e\xce|\x8e\xcf|\x8e\xd3|\x8e\xd5|\xa3\xc6|\xa3\xca|\xa3\xcc|\xa3\xd4|\xa3\xd8|\xa3\xd9|\xa3\xda|\xa3\xe2|\xa3\xe4|\xa3\xe8|\xa3\xeb|\xa3\xee|\xa3\xef|\xa3\xf0|\xa3\xf1|\xa3\xf5|\xa4\xa5|\xa5\xa3|\xa5\xc8|\xa5\xe7//g);
	$count +=  9 * ($str =~ s/\x45|\x46|\x4a|\x4c|\x54|\x59|\x5a|\xa3\xe1|\xa3\xe3|\xa3\xe5|\xa3\xe7|\xa3\xf3|\xa4\xaf|\x8e\xa6|\x8e\xb2|\x8e\xb6|\x8e\xb8|\x8e\xba|\x8e\xbc|\x8e\xbf|\x8e\xc0|\x8e\xc7|\x8e\xcc|\x8e\xd7|\x8e\xda|\x8e\xdb|\x8e\xdc|\x8e\xdd//g);
	$count +=  8 * ($str =~ s/\x61|\x62|\x63|\x64|\x65|\x68|\x6e|\x6f|\x70|\x71|\x75|\x76|\x79|\x22|\x23|\x24|\x25|\x2a|\x2b|\x2d|\x2f|\x30|\x31|\x32|\x33|\x34|\x35|\x36|\x37|\x38|\x39|\x3c|\x3d|\x3e|\x5c|\x8e\xa7|\x8e\xa9|\x8e\xaa|\x8e\xab|\x8e\xac|\x8e\xad|\x8e\xaf|\x8e\xc9|\x8e\xcb|\x8e\xd2|\x8e\xd6|\x8e\xd8|\xa1\xa6|\xa1\xa7|\xa1\xa8|\xa1\xab|\xa1\xac|\xa1\xad|\xa1\xae|\xa1\xaf|\xa1\xb0|\xa1\xbe|\xa1\xc6|\xa1\xc7|\xa1\xc8|\xa1\xc9|\xa1\xca|\xa1\xcb|\xa1\xcc|\xa1\xcd|\xa1\xce|\xa1\xcf|\xa1\xd0|\xa1\xd1|\xa1\xd2|\xa1\xd3|\xa1\xd4|\xa1\xd5|\xa1\xd6|\xa1\xd7|\xa1\xd8|\xa1\xd9|\xa1\xda|\xa1\xdb|\xa2\xf7|\xa2\xf8|\xa2\xf9|\xa3\xf6|\xa3\xf8|\xa3\xf9|\xa3\xfa//g);
	$count +=  7 * ($str =~ s/\x3f|\x5e|\x60|\x67|\x6b|\x73|\x78|\x7a|\x7e|\x8e\xa2|\x8e\xa3|\x8e\xa5|\x8e\xa8|\x8e\xae|\x8e\xc4|\x8e\xd0|\x8e\xa1|\x8e\xa4//g);
	$count +=  6 * ($str =~ s/\x72|\x74|\xa3\xf2//g);
	$count +=  5 * ($str =~ s/\x28|\x29|\x5b|\x5d|\x5f|\x66|\xa3\xe6|\xa3\xf4|\x20//g);
	$count +=  4 * ($str =~ s/\x21|\x49|\x6a|\x7b|\x7c|\x7d|\x8e\xde|\x8e\xdf|\xa3\xc9|\xa3\xe9|\xa3\xea|\xa3\xec//g);
	$count +=  3 * ($str =~ s/\x27|\x2c|\x2e|\x3a|\x3b|\x69|\x6c//g);
	$count += 16 * ($str =~ s/..//g);

	return $count;
}
#-------------------------------------------------------------------------------
# The character string that adds the adjustment dot is returned.
# $aart -> adjust($str_l, $str_r, position, $size);
#-------------------------------------------------------------------------------
sub adjust {
	my $self     = shift;
	my $str_l    = shift;
	my $str_r    = shift;
	my $position = shift;
	my $size     = shift;

	return $self -> adjust_right($str_l, $str_r, $size) if $position eq 'R';
	return $self -> adjust_left($str_l, $str_r, $size)  if $position eq 'L';
}

# The adjustment dot is arranged right. $aart -> adjust_right($str_l, $str_r, $size);
sub adjust_right {
	my $self  = shift;
	my $str_l = shift;
	my $str_r = shift;
	my $size  = shift;

	my $count = $self -> calcu_euc("$str_l$str_r");
	my $diff = $size - $count;
	my $space = int( $diff/11 );

	my $set2 = '';
	for (my $t = 0; $t < $space; $t ++) {
		$diff -= 11;
		$set2 .= "\xa1\xa1";
	}

	if ($diff == 1) {
		if ($set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1$/ \xa1\xa1 \xa1\xa1 \xa1\xa1 \./) {}
		else { $set2 =~ s/\xa1\xa1$/\.\.\.\./; }
	}
	if ($diff == 2) { $set2 =~ s/\xa1\xa1\xa1\xa1$/ \xa1\xa1 \./ }
	if ($diff == 3) { $set2 .= '.' }
	if ($diff == 4) {
		if ($set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1$/ \xa1\xa1 \xa1\xa1 /) {}
		else { $set2 =~ s/\xa1\xa1$/\.\.\.\.\./; }
	}
	if ($diff == 5) { $set2 .= ' ' }
	if ($diff == 6) {
		if ($set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1$/ \xa1\xa1 \xa1\xa1 \xa1\xa1 \. /) {}
		else { $set2 .= '..' }
	}
	if ($diff == 7) { $set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1$/ \xa1\xa1 \xa1\xa1 \./ }
	if ($diff == 8) { $set2 .= '. ' }
	if ($diff == 9) {
		if ($set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1$/ \xa1\xa1 \xa1\xa1 \xa1\xa1 /) {}
		else { $set2 .= '...' }
	}
	if ($diff == 10) { $set2 =~ s/\xa1\xa1\xa1\xa1$/\xa1\xa1 \xa1\xa1 / }

	return "$str_l$set2$str_r";
}

# The adjustment dot is arranged left. $aart -> adjust_left($str_l, $str_r, $size);
sub adjust_left {
	my $self   = shift;
	my $str_l  = shift;
	my $str_r  = shift;
	my $size   = shift;

	my $count = $self -> calcu_euc("$str_l$str_r");
	my $diff = $size - $count;
	my $space = int( $diff/11 );

	my $set2 = '';
	for (my $t = 0; $t < $space; $t ++) {
		$diff -= 11;
		$set2 .= "\xa1\xa1";
	}
	if ($diff == 1) {
		if ($set2 =~ s/^\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1/\. \xa1\xa1 \xa1\xa1 \xa1\xa1 /) {}
		else { $set2 =~ s/^\xa1\xa1/\.\.\.\./; }
	}
	if ($diff == 2) { $set2 =~ s/^\xa1\xa1\xa1\xa1/\. \xa1\xa1 / }
	if ($diff == 3) { $set2 = '.'.$set2 }
	if ($diff == 4) {
		if ($set2 =~ s/^\xa1\xa1\xa1\xa1\xa1\xa1/ \xa1\xa1 \xa1\xa1 /) {}
		else { $set2 =~ s/^\xa1\xa1/\.\.\.\.\./ }
	}
	if ($diff == 5) { $set2 = ' '.$set2 }
	if ($diff == 6) {
		if ($set2 =~ s/^\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1/ \. \xa1\xa1 \xa1\xa1 \xa1\xa1 /) {}
		else { $set2 = '..'.$set2 }
	}
	if ($diff == 7) { $set2 =~ s/^\xa1\xa1\xa1\xa1\xa1\xa1/\. \xa1\xa1 \xa1\xa1 / }
	if ($diff == 8) { $set2 = '. '.$set2 }
	if ($diff == 9) {
		if ($set2 =~ s/^\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1/ \xa1\xa1 \xa1\xa1 \xa1\xa1 /) {}
		else { $set2 = '...'.$set2 }
	}
	if ($diff == 10) { $set2 =~ s/^\xa1\xa1\xa1\xa1/\xa1\xa1 \xa1\xa1 / }

	return "$str_l$set2$str_r";
}

#-------------------------------------------------------------------------------
# The number of minimum pixels where the character string of
# the array becomes complete is returned.
#-------------------------------------------------------------------------------
sub shorter_euc {
	my $self  = shift;
	my @array = @_;
	my $fit   = 0;

	foreach my $buf (@array) {
		my $set = $self -> calcu_euc($buf);
		next if $fit >= $set;
		$fit = $set;
	}

	while (1) {
		my $flag = 0;
		foreach my $set (@array) {
			my $temp = $self -> adjust_right($set,'',$fit);
			my $temp2 = $self -> calcu_euc($temp);
			next if $fit == $temp2;
			$flag = 1;
			$fit ++;
			last;
		}
		last unless $flag;
	}

	return $fit;
}

1;
__END__

=head1 NAME

WWW::AA - The function to undergo plastic operation on the
character string displayed in a browser is possessed though it
is a MS P Gothic font of 12 points

=head1 SYNOPSIS

  use WWW::AA;

  my $aart = new WWW::AA;
  my $dot;
  my $str = 'Character string';
  my @str = ('Character string','Length adjustment');

  print  "Content-type: text/html; charset=EUC-JP\n\n";
  print  "<body>\n";
  print  "WWW::AA Sample of usage<br>\n";

  $dot = $aart -> calcu($str, 'euc');
  printf "Number of dots of [%s] %d<br>\n", $str, $dot;

  $dot = $aart -> calcu_euc($str);
  printf "Number of dots of [%s] %d<br>\n", $str, $dot;

  printf "|%s|<br>\n", $aart -> adjust($str, '', 'R', 350);
  printf "|%s|<br>\n", $aart -> adjust($str, '', 'L', 350);
  printf "|%s|<br>\n", $aart -> adjust('', $str, 'R', 350);
  printf "|%s|<br>\n", $aart -> adjust('', $str, 'L', 350);
  printf "|%s|<br>\n", $aart -> adjust($str, $str, 'R', 350);
  printf "|%s|<br>\n", $aart -> adjust($str, $str, 'L', 350);

  $dot = $aart -> shorter_euc(@str);
  printf "|%s|<br>\n", $aart -> adjust($_, '', 'R', $dot) foreach @str;
  printf "|%s|<br>\n", $aart -> adjust($_, '', 'L', $dot) foreach @str;
  printf "|%s|<br>\n", $aart -> adjust('', $_, 'R', $dot) foreach @str;
  printf "|%s|<br>\n", $aart -> adjust('', $_, 'L', $dot) foreach @str;

  print  "</body>\n";

=head1 DESCRIPTION

  WWW::AA Sample of usage
  Number of dots of [Character string] 111
  Number of dots of [Character string] 111
  |Character string@@@@@@@@@@@@@@@@@@@@@. |
  |Character string. @@@@@@@@@@@@@@@@@@@@@|
  |@@@@@@@@@@@@@@@@@@@@@. Character string|
  |. @@@@@@@@@@@@@@@@@@@@@Character string|
  |Character string@@@@@@@@ @ @ .Character string|
  |Character string. @ @ @@@@@@@@Character string|
  |Character string.....|
  |Length adjustment|
  |Character string.....|
  |Length adjustment|
  |.....Character string|
  |Length adjustment|
  |.....Character string|
  |Length adjustment|

  Please replace "@" with \xa1\xa1 of EUC-JP.

  The explanation of Japanese is here. 
  http://penlabo.oh.land.to/WWW-AA.html

=head2 EXPORT

None by default.

=head1 SEE ALSO

I think finding when "ASCII art" is retrieved in Japanese.

=head1 AUTHOR

satoshi ishikawa E<lt>penguin5@u01.gate01.comE<gt>

=head1 COPYRIGHT AND LICENSE

  Copyright (C) 2006 satoshi ishikawa
  and
  Companions of lounge thread of bulletin board of "2 channels"
  The explanation of "2 channnels" is here.
  http://2ch.net/

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.

=cut
