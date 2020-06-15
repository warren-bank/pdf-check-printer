#!/usr/bin/perl

print <<HTMLDOC;
Content-Type: text/html

<html>
  <head>
    <title>Perl environment variables</title>
  </head>
  <body>
    <h1>Perl environment variables:</h1>
HTMLDOC

  print '<pre>';
  print "$_ $ENV{$_}\n" for (keys %ENV);
  print '</pre>';

print <<HTMLDOC;
  </body>
</html>
HTMLDOC
