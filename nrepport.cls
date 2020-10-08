\LoadClass{article}
%%%%%%%%%%%%
% Packages
%%%%%%%%%%%%

\RequirePackage{hyperref}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{logoinhalo}
\RequirePackage{tocloft}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{n}

\usetikzlibrary{backgrounds}

%%%%%%%%%%%%%%%%
% Configuration
%%%%%%%%%%%%%%%%

\renewcommand{\familydefault}{\sfdefault}
\reversemarginpar
\geometry{
	includeall,
	margin=1.5cm,
	marginparwidth=6.5cm,
	marginparsep=5mm
}

\fancypagestyle{plain}{%
	\fancyhf{}	
	\fancyfoot[c]{\thepage}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
}

\fancypagestyle{bold}{%
	\fancyhf{}	
	\fancyhead[r]{\thepage}
	\fancyhead[l]{\@title}
	\fancyfoot[l]{\footnotesize \n \space {\tiny inh}\\ \cvm}
	%\fancyfoot[c]{\nlogo[height=.4cm]}
	\fancyfoot[r]{\footnotesize \ngmail\\\ncell}
	\renewcommand{\headrulewidth}{1pt}
	\renewcommand{\footrulewidth}{1pt}
}

\fancypagestyle{nohead}{%
	\fancyhf{}	
	%\fancyhead[r]{\thepage}
	%\fancyhead[l]{\@title}
	\fancyfoot[l]{\footnotesize \n \space {\tiny R.R.T.}\\ \mvc}
	%\fancyfoot[c]{\nlogo[height=.4cm]}
	\fancyfoot[r]{\footnotesize \ngmail\\\ncell}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{1pt}
}
\pagestyle{bold}
\addtolength{\headwidth}{\marginparwidth}
\addtolength{\headwidth}{\marginparsep}

\hypersetup{
	pdfencoding=unicode,
	colorlinks,
	urlcolor=cyan!70!black,
	linkcolor=cyan!70!black,
}

\setlength{\parskip}{0.5\baselineskip}
\setlength{\parindent}{0pt}
\def\arraystretch{1.4}


%%%%%%%%%%%
% Commands
%%%%%%%%%%%

\def\doctype#1{\def\@doctype{#1}}
\def\@doctype{Repport}

\def\client#1{\def\@client{#1}}
%\def\@client{}

\def\model#1{\def\@model{#1}}
\def\@model{}

\def\mode#1{\def\@mode{#1}}
%\def\@mode{}

\def\testtype#1{\def\@testtype{#1}}
%\def\@testtype{}

\def\testdate#1{\def\@testdate{#1}}
%\def\@testdate{}

\def\clientblock{%
	\ifdefined\@client
		\vfill
		\noindent
		{\color{black!72}Submitted to\thinspace:}\\[1.5\baselineskip]
		\@client
		\fi
}

\def\testidblock{%
	\begin{tabular}{|lp{3cm}|}
		\hline
		Model: & \@model \\
		
		\ifdefined\@mode
		\hline
		Mode: & \@mode \\
		\fi

		\ifdefined\@testtype
		\hline
		Test type: & \@testtype\\
		\fi

		\ifdefined\@testdate
		\hline
		Test date: & \@testdate \\
		\fi

		\hline
	\end{tabular}
}

\def\maketitle{%
	\thispagestyle{empty}
	\begingroup
	\raggedleft
	\hfill{\large\bfseries \@doctype}\\[\baselineskip]
	{\Large\bfseries \@title}\\[\baselineskip]
	\flushright
	\hfill\@date
	\endgroup
%	\marginpar{\vspace{1\baselineskip}}
	\par
}

\def\tpblock{%
%\thispagestyle{plain}
\marginpar{%
	%\colorbox{black!85}{
	%\color{white}
		\begin{minipage}[t][\textheight][t]{\marginparwidth-\marginparsep}
		\testidblock

		\clientblock
		%\vfill
		%{\footnotesize \tableofcontents}
		\vfill
		{%\footnotesize
			\@author
			}
		\end{minipage}
		\vrule
		%}
	}
}

\def\myid{%
	\begin{minipage}{1.6cm}
		%\sflogo
		%\includegraphics[width=1.7cm]{dmylogo}
		\logoinhalo[height=2cm]
	\end{minipage}
	\\[\baselineskip]
	\begin{minipage}{\columnwidth}
		Nicolas Blais St-Laurent, {\scriptsize inh}\\
		Consultant en ventilation mécanique\\[0.25\baselineskip]
		nicolas.blais.stlaurent@gmail.com
	\end{minipage}
	}

	\AtBeginDocument{
		\hypersetup{
			pdftitle=\@title,
			pdfauthor=\ninh,
			pdfsubject=\@doctype
		}
	}
