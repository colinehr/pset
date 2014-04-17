%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% PROBLEM SET DOCUMENT CLASS for typesetting homework and notes
%%% Author: Colin Ehr <cehr@lclark.edu>
%%%
%%% N.B.: This class requires typesetting using XeLaTeX instead of vanilla
%%%     LaTeX. If you want to use just normal LaTeX, comment out the "fontspec"
%%%     package below.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% IDENTIFICATION
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pset}[2014/04/17 Problem Set class]

%%% PACKAGES
\LoadClass[11pt,leqno]{article}

\RequirePackage[margin=1in, letterpaper]{geometry}
\RequirePackage[cal=euler,frak=pxtx,scr=rsfso,bb=ams]{mathalfa}
\RequirePackage{fontspec}
\RequirePackage[colorlinks=true]{hyperref}
\RequirePackage{amssymb}
\RequirePackage[leqno]{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{mathtools}
\RequirePackage{amsbsy}
\RequirePackage{mathcmds}
\RequirePackage{etoolbox}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{setspace}
\RequirePackage[font=small,labelfont=sc]{caption}
\RequirePackage{amsthm}
\RequirePackage{natbib}

%%% TITLE
%% Uses "\name", "\class", "\assignment", "\duedate", and "\professor" instead of normal title commands

% header variables
\newcommand{\pset@name}{}
\newcommand{\pset@class}{}
\newcommand{\pset@assignment}{}
\newcommand{\pset@duedate}{\today}
\newcommand{\pset@prof}{}

% commands to set the header variables
\newcommand{\name}[1]{\renewcommand{\pset@name}{#1}}
\newcommand{\class}[1]{\renewcommand{\pset@class}{#1\\}}
\newcommand{\assignment}[1]{\renewcommand{\pset@assignment}{#1}}
\newcommand{\duedate}[1]{\renewcommand{\pset@duedate}{#1}}
\newcommand{\professor}[1]{\renewcommand{\pset@prof}{#1\\}}

\renewcommand{\maketitle}{\begin{flushright}
\pset@name\\
\pset@duedate\\
\pset@class
\pset@prof\end{flushright}
\begin{center}
  \Large{\bfseries{\pset@assignment}}\\[22pt]
\end{center}}

%%% THEOREM STYLES

\newtheoremstyle{problem}{0pt} % ABOVESPACE
{24pt} % BELOWSPACE
{\normalfont} % BODYFONT
{0pt} % INDENT
{\bfseries} % HEADFONT
{.} % HEADPUNCT
{8pt plus 1pt minus 1pt} % HEADSPACE
{\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}} % CUSTOM-HEAD-SPEC

% note: this should be replaced with a proof environment for automatic \qed and \qedhere
\newtheoremstyle{solution}
{12pt} % ABOVESPACE
{0pt} % BELOWSPACE
{\normalfont} % BODYFONT
{} % INDENT //18pt
{\scshape} % HEADFONT
{.} % HEADPUNCT
{8pt plus 1pt minus 1pt} % HEADSPACE
{Solution} % CUSTOM-HEAD-SPEC

\theoremstyle{problem}
\newtheorem{problem}{Problem}

\theoremstyle{solution}
\newtheorem*{solution}{Solution}

%%% OTHER APPEARANCE VARIABLES

%\setmainfont[Ligatures=Common]{Linux Libertine O}
\setlist{nolistsep, leftmargin=40pt}
\renewcommand{\theenumi}{\normalfont\bfseries{(\alph{enumi}})}
\renewcommand{\labelenumi}{\theenumi}
\AtBeginDocument{\begin{spacing}{1.10}}
  \AtEndDocument{\end{spacing}}
\renewcommand{\qedsymbol}{$\blacksquare$}
