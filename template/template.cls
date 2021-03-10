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
\addtolength{\hoffset}{5mm}
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
\def\schoolyear#1{\def\@schoolyear{#1}}
\def\authorname#1{\def\@authorname{#1}}
\def\authorsurname#1{\def\@authorsurname{#1}}
\def\class#1{\def\@class{#1}}

\RequirePackage{xstring}

\titleen{}
\region{Jihomoravský}
\placefooter{Brno \the\year}
\mentorstatement{\@mentor}

%%% Titulní strany
\renewcommand{\maketitle}{%
	\pagestyle{empty}
	\voffset = -20mm % posun začátku textu výš
	\enlargethispage{30mm} % zvětší oblast tisku pro tuto stránku
	\begin{center}
		\begin{figure}[h]
			\begin{minipage}[c]{0.3\textwidth}
				\vspace{5mm}
				\includegraphics[width=1\textwidth]{img/logo-sokolska.jpg}
				\label{fig:SOKO-LOGO}
			\end{minipage}
			\hspace{0.02\linewidth}
			\begin{minipage}[c]{0.6\textwidth}
				\small \B{Střední průmyslová škola a Vyšší odborná škola}
				\small \B{Brno, Sokolská, příspěvková organizace}
			\end{minipage}
		\end{figure}

	    \vspace{40mm}
		\huge \bfseries \B{\expandafter\MakeUppercase\expandafter{\@thesistype}} \\

		\vspace{10mm}

		{\Large \expandafter\MakeUppercase\expandafter{\@titlecz}} \\

		\vfill

	\end{center}
	\begin{table}[h]
		%\setlength{\tabcolsep}{12pt}
        \renewcommand{\arraystretch}{1.5}
        %\linespread{1.0}
		\begin{tabular}[htbp]{ll}
			\large Studijní obor: 	  & \large \@field    \\
			\large Školní rok:    	  & \large \@schoolyear     \\
			\large Třída:	          & \large \@class    \\
			\large Jméno:	          & \large \bfseries \@authorname     \\
			\large Příjmení:	      & \large \bfseries \@authorsurname 
			\end{tabular}
		%\setlength{\tabcolsep}{6pt}
		\renewcommand{\arraystretch}{1.0}
	\end{table}
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
