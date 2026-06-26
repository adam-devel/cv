cv.html: cv.template.html
	. .env && envsubst < cv.template.html > cv.html
