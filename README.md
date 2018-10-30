Lecture slides for a course I am teaching on international trade theory at the University of Toronto in the Winter 2019 term.

I used the Beamer class in Lyx to create the slides and OmniGraffle Pro to create the figures. The pdf copies of the slides are in `palermo-trade-slides`. 

## Bug fixes
* To fix "undefined control sequence" problem due to `\@@magyar@captionfix`, add `\let\@@magyar@captionfix\relax` to LaTeX preamble in Document Settings
	- Reference: https://tex.stackexchange.com/questions/426088/texlive-pretest-2018-beamer-and-subfig-collide