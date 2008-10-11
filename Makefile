all: pdf

pdf :
	(rm -fr temp ; mkdir temp)
	(cd ${PWD}/temp && pdflatex ../cv.tex)
	cp temp/cv.pdf .

release : pdf
	cp cv.pdf ../CV_Daniel_Chesters_`date +%Y_%m_%d`.pdf

clean:
	rm -fr temp cv.pdf
