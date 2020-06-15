#!/usr/bin/perl

use CGI qw(:standard);

print header;

print start_html('FreeCheck Online'),
h1('FreeCheck'),
"A free check printing utility",
br,
"Version 0.30",
br,
"Copyright (C) 2000 Eric Sandeen (sandeen-freecheck @ sandeen.net)";
print end_html;
