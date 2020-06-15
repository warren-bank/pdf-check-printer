@echo off

call "%~dp0..\bin\0. env.bat"

set file_in="%~dp0.\data\in\%~n0.ps"
set file_out="%~dp0.\data\out\%~n0.pdf"

%gs% -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=%file_out% %file_in%
