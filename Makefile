main:
	latexmk -pdflatex=xelatex -pdf -pvc ./document/main.tex --output-directory=./build

.PHONY: main

line_integral:
	latexmk -pdflatex=xelatex -pdf -pvc ./graphics/line_integral.tex --output-directory=./graphics
vector_field_small_rectangle:
	latexmk -pdflatex=xelatex -pdf -pvc ./graphics/vector_field_small_rectangle.tex --output-directory=./graphics
circle_coarse_cover:
	latexmk -pdflatex=xelatex -pdf -pvc ./graphics/circle_coarse_cover.tex --output-directory=./graphics
circle_fine_cover:
	latexmk -pdflatex=xelatex -pdf -pvc ./graphics/circle_fine_cover.tex --output-directory=./graphics
circle_coarse_nerve:
	latexmk -pdflatex=xelatex -pdf -pvc ./graphics/circle_coarse_nerve.tex --output-directory=./graphics
circle_fine_nerve:
	latexmk -pdflatex=xelatex -pdf -pvc ./graphics/circle_fine_nerve.tex --output-directory=./graphics
curve_in_r2:
	latexmk -pdflatex=xelatex -pdf -pvc ./graphics/curve_in_r2.tex --output-directory=./graphics	



