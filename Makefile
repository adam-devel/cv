all: cv.en.html cv.fr.html

cv.en.html: cv.template.en.html .env
	. ./.env && envsubst < cv.template.en.html > cv.en.html

cv.fr.html: cv.template.fr.html .env
	. ./.env && envsubst < cv.template.fr.html > cv.fr.html

cv.en.pdf: cv.en.html
	pandoc cv.en.html -o cv.en.pdf

cv.fr.pdf: cv.fr.html
	pandoc cv.fr.html -o cv.fr.pdf
