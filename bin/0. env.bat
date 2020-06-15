@echo off

set gs_home=%~dp0..\tools\Ghostscript\9.26
set perl_home=%~dp0..\tools\perl\5.10.1
set shttpd_home=%~dp0..\tools\shttpd\1.42
set PATH=%gs_home%;%perl_home%;%shttpd_home%;%PATH%

set freecheck_home=%~dp0..\deps\freecheck

set GS_FONTPATH=%~dp0..\deps\font
set PERLLIB=%~dp0..\deps\perl_libs
set PERL5LIB=%PERLLIB%

set gs=gswin64c.exe
