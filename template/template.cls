\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template/template}[2020/04/12 Universal tex template document class]
\LoadClass[12pt, a4paper, oneside]{book}

\RequirePackage[utf8]{inputenc}
\RequirePackage[czech]{babel}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{array}
\RequirePackage[bookmarksopen,colorlinks,plainpages=false,linkcolor=black,urlcolor=blue,citecolor=black,filecolor=black,menucolor=black,unicode=true,breaklinks]{hyperref}
\RequirePackage{csquotes}
\RequirePackage{caption}

%%%%%% PŘÍKAZY
\newcommand{\B}{\textbf} % tučné písmo
\newcommand{\It}{\textit} % kurzíva
\newcommand{\superscript}{\textsuperscript} % horní index
\newcommand{\subscript}{\textsubscript} % dolní index
%%%%%% ROZMĚRY

% posun textu kvůli kroužkové vazbě
%\addtolength{\textwidth}{mm}
\addtolength{\hoffset}{4mm}
\setlength{\intextsep}{2.5mm} % nastavení mezery okolo obrázků
\marginparsep=15pt
\linespread{1.3}
\unitlength=1mm % nastavení volby jednotek

%%%%%% ROVNICE
\DeclareCaptionType{listedequation}[Rovnice][Seznam rovnic]
%\captionsetup[listedequation]{labelformat = parens}

%% hyperref \autoref nazvy
\def\chapterautorefname{kapitola}
\def\sectionautorefname{kapitola}
\def\subsectionautorefname{kapitola}
\def\sectionautorefname{kapitola}
\def\figureautorefname{obrázek}
\def\tableautorefname{tabulka}

%%%%%% PROMĚNNÉ
\def\titlecz#1{\def\@titlecz{#1}}
\def\titleen#1{\def\@titleen{#1}}
\def\author#1{\def\@author{#1}}
\def\institution#1{\def\@institution{#1}}
\def\institutiontype#1{\def\@institutiontype{#1}}
\def\thesistype#1{\def\@thesistype{#1}}
\def\region#1{\def\@region{#1}}
\def\mentor#1{\def\@mentor{#1}}
\def\mentorstatement#1{\def\@mentorstatement{#1}}
\def\field#1{\def\@field{#1}}
\def\placefooter#1{\def\@placefooter{#1}}

\RequirePackage{xstring}

\titleen{}
\region{Jihomoravský}
\placefooter{Brno \the\year}
\mentorstatement{\@mentor}

%%% Titulní strany
\renewcommand{\maketitle}{%
	\pagestyle{empty}
	\voffset = -20mm % posun začátku textu výš
	\enlargethispage{40mm} % zvětší oblast tisku pro tuto stránku
	\begin{center}
		\begin{figure}[h]
			\centering
			\includegraphics[width=0.85\textwidth]{img/logo-sokolska.jpg}
			\label{fig:SOKO-LOGO}
		\end{figure}
	    \vspace{10mm}
		\large \B{\expandafter\MakeUppercase\expandafter{\@thesistype}} \\

		\vspace{40mm}

		{\LARGE \B{\@titlecz}} \\

		\vfill

        	{\Large \B{\@author}} \\

		\vspace{20mm}

		{\large \B{\@placefooter}}
	\end{center}
	\newpage

	\pagestyle{empty}
    \enlargethispage{40mm} % zvětší oblast tisku pro tuto stránku
	\begin{center}
	    {\normalsize \B{\@institution}} \\

		\vspace{40mm}

		{\Large \B{\expandafter\MakeUppercase\expandafter{\@titlecz}}} \\
		\vspace{20mm}
		{\large \B{\expandafter\MakeUppercase\expandafter{\@titleen}}} \\

		\vfill

        \begin{table}[h]
        \setlength{\tabcolsep}{12pt}
        \renewcommand{\arraystretch}{1.5}
        \linespread{1.0}
		\begin{tabularx}{\textwidth}{r >{\raggedright}p{90mm} c}
		\large \B{AUTOR} & \large \B{\@author} & \\
		\large \B{VEDOUCÍ PRÁCE} & \large \B{\@mentor} & \\
		\large \B{OKRUH} & \large \B{\@field} & \\
		\end{tabularx}
		\setlength{\tabcolsep}{6pt}
        \renewcommand{\arraystretch}{1.0}
		\end{table}

		\vspace{10mm}

		{\large \B{\@placefooter}}
	\end{center}
	\newpage
	\voffset = 0mm
	\pagestyle{plain}
}

%%% Prohlášení
\newcommand{\makecopyrightstatement}[1]{
	\pagestyle{empty}

	~
	\vfill

	\section*{Prohlášení}
	Prohlašuji, že svou maturitní práci na téma \It{\@titlecz} jsem vypracoval samostatně pod vedením {\@mentorstatement} a~s~použitím odborné literatury a~dalších informačních zdrojů, které jsou všechny citovány v~práci a~uvedeny v~seznamu literatury na~konci práce.

	Dále prohlašuji, že tištěná i~elektronická verze práce jsou shodné a~nemám závažný důvod proti zpřístupňování této práce v~souladu se~zákonem č.~121/2000~Sb., o~právu autorském, o~právech souvisejících s~právem autorským a~změně některých zákonů (autorský zákon) v~platném znění.

	\vspace{10mm}

	\noindent \parbox{\textwidth}{
		\noindent {#1} dne: \rule{4cm}{1pt}
		\hfill\parbox{5cm}{
    		\centering
    		\vspace{9mm}
    		\rule{5cm}{1pt}\\
        	\@author
		}
	}

	\newpage
	\pagestyle{plain}
}

\newcommand{\makethanks}[1]{
	\pagestyle{empty}
	~
	\vfill
	\section*{Poděkování}
	{#1}

	\vspace{\baselineskip}
	\newpage
	\pagestyle{plain}
}

