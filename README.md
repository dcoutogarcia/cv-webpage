# CV-Webpage

This repository contains the code of my CV webpage hosted in [diegocoutogarcia.com](https://diegocoutogarcia.com). It's a simple webpage written in HTML and CSS. It's my first web project. The PDFs are written in Typst, a modern typesetting system.


## PDF in Typst

To compile the pdf you need to have [Typst](https://github.com/typst/typst) installed in your system. To install typst use your distro package manager or cargo:

```bash
cargo install --locked typst-cli
```

More information on installation instructions on the [Typst](https://github.com/typst/typst) repository.

To compile the PDFs:

- *Linux users:* run the script ```compile_pdf.sh```.
- *Windows users:* run this commands in powershell:
```powershell
cd .\pdf
typst compile spanish.typ --font-path=.\fonts\
typst compile english.typ --font-path=.\fonts\

Move-Item -Path spanish.pdf -Destination ..\webpage\pdf\DiegoCouto-CV-ES.pdf
Move-Item -Path english.pdf -Destination ..\webpage\pdf\DiegoCouto-CV-EN.pdf
```


## Webpage

The webpage is a simple static page written on HTML and CSS. `index.html` contains the webpage in English, while `spanish.html` contains the version in Spanish. The svg files found in `webpage/media/` are downloaded from [Svgrepo](https://svgrepo.com).

