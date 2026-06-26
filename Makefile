all: build/cv.en.pdf build/cv.fr.pdf

build/cv.en.html: cv.template.en.html .env
	mkdir -p build && . ./.env && envsubst < cv.template.en.html > build/cv.en.html

build/cv.fr.html: cv.template.fr.html .env
	mkdir -p build && . ./.env && envsubst < cv.template.fr.html > build/cv.fr.html

build/cv.en.pdf: build/cv.en.html
	weasyprint build/cv.en.html build/cv.en.pdf

build/cv.fr.pdf: build/cv.fr.html
	weasyprint build/cv.fr.html build/cv.fr.pdf
