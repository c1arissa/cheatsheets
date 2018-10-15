#!/usr/bin/perl
use strict;
use warnings;

my $infile = '/home/clar/vimcolors';
open my $IN, '<', $infile or die $!;

while (my $line = <$IN>) {
    $line =~ s/\s//g;
    $line =~ s/^(.*).vim$/\'$1\', /g;
    print $line;
}
    
close $IN;
