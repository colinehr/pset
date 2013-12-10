%%% IDENTIFICATION
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pset}[2013/10/08 Problem Set class]

%%% PACKAGES
\LoadClass[11pt,leqno]{article}

\RequirePackage[margin=1in,letterpaper]{geometry}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{mathtools}
\RequirePackage{amsbsy}
\RequirePackage{mathcmds}
\RequirePackage{etoolbox}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{setspace}
\RequirePackage[font=small,labelfont=sc]{caption}
\RequirePackage{hyperref}
\RequirePackage{natbib}

%%% TITLE

% header variables
\newcommand{\pset@name}{}
\newcommand{\pset@class}{}
\newcommand{\pset@assignment}{}
\newcommand{\pset@duedate}{\today}
\newcommand{\pset@prof}{}

% commands to set the header variables
\newcommand{\name}[1]{\renewcommand{\pset@name}{#1}}
\newcommand{\class}[1]{\renewcommand{\pset@class}{#1}}
\newcommand{\assignment}[1]{\renewcommand{\pset@assignment}{#1}}
\newcommand{\duedate}[1]{\renewcommand{\pset@duedate}{#1}}
\newcommand{\professor}[1]{\renewcommand{\pset@prof}{#1}}

%\renewcommand{\maketitle}{
%\noindent\rule{\linewidth}{1.2pt} \\[11pt]
%\noindent {\LARGE{\pset@assignment \hfill \pset@class}} \\
%\textsc{\large{\pset@name \hfill \pset@duedate}} \\
%\noindent\rule{\linewidth}{1.2pt} \\[6pt]}
\renewcommand{\maketitle}{\begin{flushright}
\pset@name\\
\pset@duedate\\
\pset@class\\
\pset@prof\end{flushright}
\begin{center}
  \LARGE{\bfseries{\pset@assignment}}\\[22pt]
\end{center}}

%%% THEOREM STYLES

\newtheoremstyle{problem}
{0pt} % ABOVESPACE
{24pt} % BELOWSPACE
{\normalfont} % BODYFONT
{0pt} % INDENT (empty value is the same as 0pt)
{\bfseries} % HEADFONT
{.} % HEADPUNCT
{8pt plus 1pt minus 1pt} % HEADSPACE
{\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}} % CUSTOM-HEAD-SPEC

\newtheoremstyle{solution}
{12pt} % ABOVESPACE
{0pt} % BELOWSPACE
{\normalfont} % BODYFONT
{18pt} % INDENT (empty value is the same as 0pt)
{\itshape} % HEADFONT
{.} % HEADPUNCT
{8pt plus 1pt minus 1pt} % HEADSPACE
{Solution} % CUSTOM-HEAD-SPEC

\theoremstyle{problem}
\newtheorem{problem}{Problem}

\theoremstyle{solution}
\newtheorem*{solution}{Solution}

%%% OTHER APPEARANCE VARIABLES
\setlist{nolistsep}
\renewcommand{\theenumi}{\bfseries{(\alph{enumi}})}
\renewcommand{\labelenumi}{\theenumi}
\AtBeginDocument{\begin{spacing}{1.05}}
  \AtEndDocument{\end{spacing}}