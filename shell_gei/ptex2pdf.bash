#!/usr/bin/env bash
ptex2pdf -l -u -ot -kanji=utf8 test.tex && evince test.pdf
