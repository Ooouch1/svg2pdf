@Echo off

cd /d %~dp0
set svg2pdf_file=svg2pdf_file

set sourceRegx=%~1
set outputDir=%~2

if not exist "%outputDir%" (
   echo 2nd parameter should be directory name for output.
   echo given value: %outputDir%
   exit /B 10
   )

for %%f in ("%sourceRegx%") do (call %svg2pdf_file% "%%f" "%outputDir%\%%~nf.pdf")
