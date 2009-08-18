:: remove acknowledgment from pdf
@echo off
pdftk thesis-OnlineArchive.pdf cat 1-3 8-end output thesis-OnlineArchive-NA.pdf
pdftk thesis-Bodleian.pdf cat 1-2 5-end output thesis-Bodleian-NA.pdf
pdftk thesis-Print.pdf cat 1-3 8-end output thesis-Print-NA.pdf
