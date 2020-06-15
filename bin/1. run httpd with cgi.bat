@echo off

call "%~dp0.\0. env.bat"

cd /D "%freecheck_home%"

set shttpd_opts=-cgi_interp "perl" -root "." -dir_list "yes" -index_files "freecheck.cgi" -cgi_ext "cgi" -cgi_env "gs=%gs%,GS_FONTPATH=%GS_FONTPATH%" -ports 8080

cls
echo listening at: "http://localhost:8080/"
echo.

shttpd %shttpd_opts%
