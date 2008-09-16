all: pdf

pdf :
	(rm -fr temp ; mkdir temp)
	(cd ${PWD}/temp && pdflatex ../cv.tex)
	cp temp/cv.pdf .

release : pdf
	cp cv.pdf ../CV_Daniel_Chesters_`date +%d_%m_%Y`.pd f

clean:
	rm -fr temp cv.pdf
