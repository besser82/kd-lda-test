#!/usr/bin/perl

use strict;
use warnings;

while (<>) {
  s/<[^>]+>/ /ig;
  s/<\/[^>]+>/ /ig;
  s/(:\)|:-\)|\;\)|\;-\)) / nicesmiley /ig;
  s/(:\(|:-\(|\;\(|\;-\() / sadsmiley /ig;
  s/ä/ae/ig;
  s/ö/oe/ig;
  s/ü/ue/ig;
  s/ß/ss/ig;
  print;
}