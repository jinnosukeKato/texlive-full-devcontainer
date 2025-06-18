#!/usr/bin/env perl

# lualatex
$pdf_mode = 4;
$max_repeat = 5;
$lualatex = 'lualatex -synctex=1 -halt-on-error -file-line-error  %O %S';

# bibtex
$bibtex_use = 2;
$biber = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$bibtex = 'pbibtex %O %B';

# index
$makeindex = 'mendex %O -o %D %S';

# output
$aux_dir = 'aux/';
$emulate_aux = 1;
$out_dir = 'build/';
