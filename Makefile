pdf:
	pandoc resume.md -f markdown -t pdf --pdf-engine=wkhtmltopdf -c resume-stylesheet.css -s -o resume.pdf

html:
	pandoc resume.md -f markdown -t html -c resume-stylesheet.css -s -o resume.html

docx:
	pandoc -o resume.docx --reference-doc=resume-docx-reference.docx resume.md


all: pdf html docx