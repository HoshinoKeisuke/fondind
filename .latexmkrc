#!/usr/bin/env perl
$latex            = 'uplatex -synctex=1 -halt-on-error';
$bibtex           = 'upbibtex';
$biber            = 'biber  -u -U --output_safechars';
$dvipdf           = 'dvipdfmx %O -o %D %S';

