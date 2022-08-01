# Copyright (c) Antti Järvinen 2019-2020.
#
# Plain latex is all right, hyperref package is needed but ctan delivers that.
# For html output latex2html is needed. Otherwise regular latex. 
#
between.pdf: between.latex
	latex2html between.latex
	latex between.latex
	dvipdf between.dvi between.pdf

clean:
	rm -f Makefile~
	rm -rf between
	rm -f between.aux
	rm -f between.dvi
	rm -f between.log
	rm -f between.out
	rm -f between.pdf
