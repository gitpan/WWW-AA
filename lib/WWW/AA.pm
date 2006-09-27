package WWW::AA;

use 5.008008;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use WWW::AA ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw( math adjust );

our $VERSION = '0.01 euc only';


# Preloaded methods go here.
sub new {
	my $self = {};
	bless $self;
	return $self;
}

# $aart -> math($str, $encode);
# AAのピクセル値を返す
sub math {
	my $self   = shift;
	my $str    = shift;
	my $encode = shift;

	if ($encode eq 'euc') {
		return $self -> math_euc($str);
	}
}

# 
sub math_euc {
	my $self = shift;
	my $str  = shift;
#print "math_euc)  str: $str ";
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
#print " count:$count\n";
	return $count;
}

# $aart -> adjust($str_l, $str_r, R, 600);
# 左$str_l、右$str_r、調整ドットをつける位置LorR、サイズ

# 文字列（$str） を左に、調整ドット（R）を右に、サイズ（$size）600ピクセルで整形。
#     $aart -> adjust($str, R, 600);
# 文字列（$str） を右に、調整ドット（L）を左に、サイズ（$size）600ピクセルで整形。
#     $aart -> adjust($str, R, 600);
# 文字列（$strl）を左に、文字列（$strr）を右に、調整ドットを中央に、サイズ（$size）600ピクセルで整形。
#     $aart -> adjust($strl, $strr, 600);
sub adjust {
	my $self     = shift;
	my $str_l    = shift;
	my $str_r    = shift;
	my $position = shift;
	my $size     = shift;

	return $self -> adjust_right($str_l, $str_r, $size) if $position eq 'R';
	return $self -> adjust_left($str_l, $str_r, $size)  if $position eq 'L';
}

# 調整ドットが右に位置するように
sub adjust_right {
	my $self  = shift;
	my $str_l = shift;
	my $str_r = shift;
	my $size  = shift;
#print "<hr>";
	my $count = $self -> math_euc("$str_l$str_r");
#print " str_r:$str_r  str_l:$str_l count $count\n";
	# 指定ピクセル値と文字列（$str）のピクセル値との差（$diff）
	my $diff = $size - $count;
#print " size $size diff ", $diff;
	# 全角スペースを最大何個（$space）入れられるか
	my $space = int( $diff/11 );
#print " spece ", $space;
	# 全角で埋めた残りのピクセル値（$diff）
	my $set2 = '';
	for (my $t = 0; $t < $space; $t ++) {
		$diff -= 11;
		$set2 .= '　';
	}
#print " diff ",$diff;
	if ($diff == 1) {
		if ($set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1$//) { $set2 .= ' 　 　 　 .'; }
		else { $set2 =~ s/\xa1\xa1$//; $set2 .= '....'; }
	#		$set2 =~ s/\xa1\xa1$//; $set2 .= '....';
	}
	if ($diff == 2) { $set2 =~ s/\xa1\xa1\xa1\xa1$//; $set2 .= ' 　 .'; }
	if ($diff == 3) { $set2 .= '.'; }
	if ($diff == 4) {
		if ($set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1$//) { $set2 .= ' 　 　 '; }
		else { $set2 =~ s/\xa1\xa1$//; $set2 .= '.....'; }
	#		$set2 =~ s/\xa1\xa1$//; $set2 .= '.....';
	}
	if ($diff == 5) { $set2 .= ' '; }
	if ($diff == 6) {
		if ($set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1$//) { $set2 .= ' 　 　 　 . '; }
		else { $set2 .= '..'; }
	#		$set2 .= '..';
	}
	if ($diff == 7) { $set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1$//; $set2 .= ' 　 　 .'; }
	if ($diff == 8) { $set2 .= '. '; }
	if ($diff == 9) {
		if ($set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1$//) { $set2 .= ' 　 　 　 '; }
		else { $set2 .= '...'; }
	#		$set2 .= '...';
	}
	if ($diff == 10) { $set2 =~ s/\xa1\xa1\xa1\xa1$//; $set2 .= '　 　 '; }

#print " str_l ",$self -> math_euc($str_l);
#print " str_r ",$self -> math_euc($str_r);
#print " set2 ",$self -> math_euc($set2);
#print " total ",$self -> math_euc("$str_l$set2$str_r");
#print "<br>\n";
	return "$str_l$set2$str_r";

}

# 調整ドットが左に位置するように
sub adjust_left {
	my $self = shift;
	my $str_l  = shift;
	my $str_r  = shift;
	my $size = shift;

	my $count = $self -> math_euc("$str_l$str_r");

	# 指定ピクセル値と文字列（$str）のピクセル値との差（$diff）
	my $diff = $size - $count;

	# 全角スペースを最大何個（$space）入れられるか
	my $space = int( $diff/11 );

	# 全角で埋めた残りのピクセル値（$diff）
	my $set2;
	for (my $t = 0; $t < $space; $t ++) {
		$diff -= 11;
		$set2 .= '　';
	}
	if ($diff == 1) {
		if ($set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1$//) { $set2 = '. 　 　 　 '.$set2; }
		else { $set2 =~ s/\xa1\xa1$//; $set2 = '....'.$set2; }
#		$set2 =~ s/\xa1\xa1$//; $set2 = '....'.$set2;
	}
	if ($diff == 2) { $set2 =~ s/\xa1\xa1\xa1\xa1$//; $set2 = '. 　 '.$set2; }
	if ($diff == 3) { $set2 = '.'.$set2; }
	if ($diff == 4) {
		if ($set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1$//) { $set2 = ' 　 　 '.$set2; }
		else { $set2 =~ s/\xa1\xa1$//; $set2 = '.....'.$set2; }
#		$set2 =~ s/\xa1\xa1$//; $set2 = '.....'.$set2;
	}
	if ($diff == 5) { $set2 = ' '.$set2; }
	if ($diff == 6) {
		if ($set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1$//) { $set2 = ' . 　 　 　 '.$set2; }
		else { $set2 = '..'.$set2; }
#		$set2 = '..'.$set2;
	}
	if ($diff == 7) { $set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1$//; $set2 = '. 　 　 '.$set2; }
	if ($diff == 8) { $set2 = '. '.$set2; }
	if ($diff == 9) {
		if ($set2 =~ s/\xa1\xa1\xa1\xa1\xa1\xa1\xa1\xa1$//) { $set2 = ' 　 　 　 '.$set2; }
		else { $set2 = '...'.$set2; }
#		$set2 = '...'.$set2;
	}
	if ($diff == 10) { $set2 =~ s/\xa1\xa1\xa1\xa1$//; $set2 = '　 　 '.$set2; }

#	print "<hr>",$self -> math_euc("$str_l, $set2, $str_r"),"<hr>";

return "$str_l$set2$str_r";

}

sub lineup {
	my $self = shift;
	my @array = @_;
	my $fit = 0;

	foreach my $buf (@array) {
		my $set = $self -> math_euc($buf);
#print "set:$set  fit:$fit\n";
		next if $fit >= $set;
		$fit = $set;
	}
#print ">>>>>>>>>>>>>>>>>>>>>>>>>>>>$fit<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n";
#print @array;
#print "\n\n\n";
while (1) {
#for ( my $i =0; $i<50; $i++ ) {
	my $flag = 0;
	foreach my $set (@array) {
#print "/";
		my $temp = $self -> adjust_right($set,'',$fit);
#print " set:$set  temp:$temp  fit:$fit\n";
		my $temp2 = $self -> math_euc($temp);
#print " temp:$temp  temp2:$temp2";
#print " fit: $fit";
#print "\n";
		next if $fit == $temp2;
		$flag = 1;
		$fit ++;
		last;
	}
	last unless $flag;
}
#print "<i>$fit</i>  ";

return $fit;

}


1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

WWW::AA - Perl extension for blah blah blah

=head1 SYNOPSIS

  use WWW::AA;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for WWW::AA, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

A. U. Thor, E<lt>a.u.thor@a.galaxy.far.far.awayE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006 by A. U. Thor

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.


=cut
