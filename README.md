# svg2pdf
Windows batch using Inkscape and pdftk.

## How to use

### Install required tools.
 **svg2pdf.bat** uses:

* Inkscape 1.0 or above
* pdftk

It assumes they have been installed as the installers recommended, i.e., their default setting.
If you installed *Inkscape* at somewhere different from "C:\\Program Files\\Inkscape\\inkscape.exe",
you need configure in svg2pdf_file.bat.
*pdftk* must be available as a command in terminal (DOS prompt).

### Locate the batches.
Put all files in "bat" in the same directory.

### Prepare a project directory.
 As an example, let us call the directory "myProj".
"myProj" should contain the followings:

* A directory named as "pdf"
* svg files to be converted named as "myProj\*p\*.svg", like "myProj_p1.svg", "myProj_p2.svg", ...


### Drag and drop "myProj" onto "svg2pdf.bat".
 You'll see the batch conducts some commands. After the execution stopped, type some key to finish the batch.

### Check the "pdf" directory. 
 The batch outputs separated pdf files and merged one.
 If the merged "myProj_inkscape.pdf" exists, you have done. That's it!

## Technical explanation

### svg2pdf [project_dir]
This calls **svg2pdf_all** and merge the result files by pdftk.

### svg2pdf_all [input_path] [output_dir]
 The 1st parameter *input_path* can include wild card like "some_model\*.svg".
This batch converts svg file(s) to pdf file(s) one by one, using **svg2pdf_file**. The destination is supposed by the 2nd parameter.

### svg2pdf_file [svg_file] [pdf_file]
 This batch converts a svg file to a pdf file by Inkscape. You can configure dpi value in this file (the default is 300).