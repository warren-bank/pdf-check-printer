@echo off

call "%~dp0..\bin\0. env.bat"

set ps_file_out="%~dp0.\data\out\%~n0.ps"
set pdf_file_out="%~dp0.\data\out\%~n0.pdf"

cd /D "%freecheck_home%"

perl freecheck >%ps_file_out% 2>&1

%gs% -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=%pdf_file_out% %ps_file_out%
