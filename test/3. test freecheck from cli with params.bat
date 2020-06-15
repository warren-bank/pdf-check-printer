@echo off
setlocal enableDelayedExpansion

set debug=0

call "%~dp0..\bin\0. env.bat"

set ps_file_out="%~dp0.\data\out\%~n0.ps"
set pdf_file_out="%~dp0.\data\out\%~n0.pdf"

cd /D "%freecheck_home%"

set CRLF=^


set mock_cgi_params=CheckNumber 100
set mock_cgi_params=!mock_cgi_params!!CRLF!PrintCheckBody true
set mock_cgi_params=!mock_cgi_params!!CRLF!PrintMICRLine true
set mock_cgi_params=!mock_cgi_params!!CRLF!NumPages 1
set mock_cgi_params=!mock_cgi_params!!CRLF!Name1 John Doe
set mock_cgi_params=!mock_cgi_params!!CRLF!Name2 Jane Doe
set mock_cgi_params=!mock_cgi_params!!CRLF!Address1 1234 Elm Street
set mock_cgi_params=!mock_cgi_params!!CRLF!Address2 
set mock_cgi_params=!mock_cgi_params!!CRLF!CityStateZip Beverly Hills, CA 90210
set mock_cgi_params=!mock_cgi_params!!CRLF!PhoneNumber 800-555-1212
set mock_cgi_params=!mock_cgi_params!!CRLF!BankName Bank of America
set mock_cgi_params=!mock_cgi_params!!CRLF!BankAddr1 4321 Cedar Lane
set mock_cgi_params=!mock_cgi_params!!CRLF!BankAddr2 
set mock_cgi_params=!mock_cgi_params!!CRLF!BankCityStateZip Miami, FL 22222
set mock_cgi_params=!mock_cgi_params!!CRLF!AuxOnUs 
set mock_cgi_params=!mock_cgi_params!!CRLF!Routing R123456780R
set mock_cgi_params=!mock_cgi_params!!CRLF!Fraction 37-5678/1234
set mock_cgi_params=!mock_cgi_params!!CRLF!OnUs S4232268154PSCCCC

if "%debug%"=="1" (
  echo "!mock_cgi_params!"
  echo.
  pause
  exit /b 0
)

perl freecheck --cgi "!mock_cgi_params!" --checkstyle Normal --checktype MVG3001 >%ps_file_out% 2>&1

%gs% -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=%pdf_file_out% %ps_file_out%

endlocal
