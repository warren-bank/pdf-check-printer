#!/usr/bin/perl

print <<HTMLDOC;
Content-Type: text/html

<html>
  <head>
    <title>Perl library paths</title>
  </head>
  <body>
    <h1>Perl library paths:</h1>
    <pre>@{[ join "\n", @INC ]}</pre>
  </body>
</html>
HTMLDOC
