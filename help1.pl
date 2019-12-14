#!/usr/bin/env perl

use strict;
use warnings;
use v5.10;

use Crypt::CBC;

my $cipher = Crypt::CBC->new(
    -key => 'p3r1h@c|<er',
    -salt => 'tatysh00'    
);

my @letters = split //, '
$$$$$$_$$__$$__$$$$__$$$$$$
____$$_$$__$$_$$_______$$
____$$_$$__$$__$$$$____$$
$$__$$_$$__$$_____$$___$$
_$$$$___$$$$___$$$$____$$

_$$$$__$$__$$__$$$$__$$$$$$_$$__$$_$$$$$__$$$$$
$$__$$_$$$_$$_$$__$$___$$___$$__$$_$$_____$$__$$
$$$$$$_$$_$$$_$$__$$___$$___$$$$$$_$$$$___$$$$$
$$__$$_$$__$$_$$__$$___$$___$$__$$_$$_____$$__$$
$$__$$_$$__$$__$$$$____$$___$$__$$_$$$$$__$$__$$

$$$$$__$$$$$__$$$$$__$$
$$__$$_$$_____$$__$$_$$
$$$$$__$$$$___$$$$$__$$
$$_____$$_____$$__$$_$$
$$_____$$$$$__$$__$$_$$$$$$

$$__$$__$$$$___$$$$__$$__$$_$$$$$__$$$$$
$$__$$_$$__$$_$$__$$_$$_$$__$$_____$$__$$
$$$$$$_$$$$$$_$$_____$$$$___$$$$___$$$$$
$$__$$_$$__$$_$$__$$_$$_$$__$$_____$$__$$
$$__$$_$$__$$__$$$$__$$__$$_$$$$$__$$__$$
_____________________________________________
';

open(my $fh, '>', './donotopenit.hack');

$cipher->start('E');

foreach (@letters) {
    print $fh $cipher->crypt(ord($_));
}
$cipher->finish();
