Lecture slides for a course I am teaching on international trade theory (ECO364H1S) at the University of Toronto in the 2019 Winter term.

I used the Beamer class in Lyx to create the slides and OmniGraffle Pro to create the figures. The pdf copies of the slides are in `palermo-trade-slides`.

Some contents in the slides are based on course material created by Christian Dippel, Mengxiao Liu, Peter Morrow, Scott Orr, Dan Trefler and the textbook International Economics by Krugman, Obstfeld, and Melitz (9th edition).

## Bug fixes
* To fix "undefined control sequence" problem due to `\@@magyar@captionfix`, add `\let\@@magyar@captionfix\relax` to LaTeX preamble in Document Settings
	- Reference: https://tex.stackexchange.com/questions/426088/texlive-pretest-2018-beamer-and-subfig-collide