
resultados.pdf: resultados.tex plot1.pdf plot.pdf
	pdflatex resultados.tex

plot1.pdf: plotdatos1.py datos1.dat
	python plotdatos1.py

plot.pdf: plotdatos.py datos.dat
	python plotdatos.py

datos1.dat: makedatos1.cpp
	g++ makedatos1.cpp
	./a.out >> datos1.dat

datos.dat: makedatos.py
	python makedatos.py >> datos.dat


	
