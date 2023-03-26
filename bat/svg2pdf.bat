@Echo off

cd /d %~dp0
set svg2pdf_all=svg2pdf_all

set project=%~1
set fileName=%~n1

echo convert svg in project directory %project%
echo directory name: %fileName%

call %svg2pdf_all% "%project%\%fileName%*.svg" "%project%\pdf"
if errorlevel 10 (
   echo wrong input!
pause:
   exit /B
   )


setlocal enabledelayedexpansion
set inputs=
for %%f in ("%project%\pdf\*_p*.pdf") do (
   echo %%f
   set inputs=!inputs! "%%f"
   )

echo pdftk %inputs% cat output "%project%\pdf\%fileName%_inkscape.pdf"
pdftk %inputs% cat output "%project%\pdf\%fileName%_inkscape.pdf"

endlocal

pause:

