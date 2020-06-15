### [pdf-check-printer](https://github.com/warren-bank/pdf-check-printer)

#### Overview:

* I was playing around with an excellent open-source project (links below) that prints bank checks to a PDF document
  - it's written in perl
  - it includes an old-school .cgi (common gateway interface) script to configure the command-line options through a web interface
  - it generates postscript
  - it uses ghostscript to convert .ps to .pdf
  - the same developer wrote a MICR font that dovetails with this project

* I wanted to run this script on Windows
  - it's not supported by the developer,<br>though there's no reason it shouldn't work
  - necessary changes to .cgi script:
    * path to ghostscript binary
    * piping postscript from perl to ghostscript didn't work as written
      - cleaned up the code
      - now:
        * it's more efficient
        * works on Windows

* I bundled the script along with all of its dependencies and necessary Windows binary tools
  - standalone bundle; download and run..

#### Usage:

```bash
call "bin\1. run httpd with cgi.bat"

chrome "http://localhost:8080/"
```

#### Credits:

* [FreeCheck](https://sandeen.net/freecheck/)
  - version: [0.30](https://sandeen.net/freecheck/download/freecheck-0.30.tar.gz)
  - slightly modified

* [GnuMICR](https://sandeen.net/GnuMICR/)
  - version: [0.30](https://sandeen.net/GnuMICR/download/GnuMICR-0.30.zip)
  - ghostscript uses .pfb Type 1 MICR E13-B font

#### Tools:

* [Simple HTTPD](https://docs.huihoo.com/shttpd/)
  - version: [1.42](https://sourceforge.net/projects/shttpd/files/shttpd/1.42/)
  - __excellent__ light-weight http server that can run _perl_ .cgi scripts

* [Strawberry Perl](http://strawberryperl.com/releases.html)
  - version: [5.10.1](http://strawberryperl.com/download/5.10.1.0/strawberry-perl-5.10.1.0.zip)
  - bundle in repo only includes the binary and the libraries required to run _freecheck_

* [Ghostscript](https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/)
  - version: [9.26](https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/tag/gs926)
  - bundle in repo only includes the [64-bit](https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs926/gs926aw64.exe) binary
