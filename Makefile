all: cv.html cv.fr.html

cv.html: cv.template.html
	. ./.env && envsubst < cv.template.html > cv.html

cv.fr.html: cv.template.fr.html
	. ./.env && envsubst < cv.template.fr.html > cv.fr.html
