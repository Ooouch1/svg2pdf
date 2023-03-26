@Echo off

set sourceFile=%1
set outputFile=%2

rem For inkscape 1.0
set inkscape="C:\Program Files\Inkscape\bin\inkscape.exe"

set outputType=pdf
set dpi=300

echo svg: %sourceFile%
echo pdf: %outputFile%

if not exist %sourceFile% (
   echo not found.
   echo given value: %sourceFile%
   exit /B 10
   )


%inkscape% %sourceFile% --export-type=%outputType% --export-filename=%outputFile% --export-dpi=%dpi%
      
