% ------------------------------------------------------------------------------- %
%                                    LICENSE   	                                  %
% ------------------------------------------------------------------------------- %
%                     GNU GENERAL PUBLIC LICENSE                                  %
%                        Version 3, 29 June 2007                                  %
%                                                                                 %
%  Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>           %
%  Everyone is permitted to copy and distribute verbatim copies                   %
%  of this license document, but changing it is not allowed.                      %
%                                                                                 %
% Author: Humberto da Silva Neto                                                  %
% Git Repo: https://github.com/hsneto/if-beamer/                                  %
%                                                                                 %
% ------------------------------------------------------------------------------- %

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{if-beamer}[10/09/2018, v1.0.1]

\PassOptionsToPackage{svgnames}{xcolor}
\LoadClass[compress, 8pt]{beamer}

% --------------------------------------------------- %
%                       Packages  	                  %
% --------------------------------------------------- %
\usepackage[brazilian, english]{babel}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{helvet}
\usepackage{pdfpages}
\usepackage{graphicx} % http://ctan.org/pkg/graphicx
\usepackage[footnotesize,hang]{caption} 
\usepackage{hyperref}
\usepackage{tikz}
\usepackage{listings}
\usepackage{etoolbox}
\usepackage{tcolorbox}
\usepackage{tabularx}
\usepackage{array}
\usepackage{colortbl}
\tcbuselibrary{skins}
\usepackage{ragged2e}
\usepackage{courier}

% --------------------------------------------------- %
%                   Basic colors	                  %
% --------------------------------------------------- %
%%% From http://latexcolor.com/

% Blue
\definecolor{airforceblue}{rgb}{0.36, 0.54, 0.66}
\definecolor{aliceblue}{rgb}{0.94, 0.97, 1.0}

% Green
\definecolor{cadmiumgreen}{rgb}{0.0, 0.42, 0.24}
\definecolor{honeydew}{rgb}{0.94, 1.0, 0.94}

% Red
\definecolor{carnelian}{rgb}{0.7, 0.11, 0.11}
\definecolor{melon}{rgb}{0.99, 0.74, 0.71}

% Orange
\definecolor{orange-red}{rgb}{1.0, 0.27, 0.0}
\definecolor{peach-orange}{rgb}{1.0, 0.8, 0.6}

% Yellow
\definecolor{pastelyellow}{rgb}{1.0, 0.92, 0.71} % edited
\definecolor{uscgold}{rgb}{1.0, 0.8, 0.0}

% Purple
\definecolor{purpleheart}{rgb}{0.41, 0.21, 0.61}
\definecolor{lightmauve}{rgb}{0.86, 0.82, 1.0}

% Brown
\definecolor{darkbrown}{rgb}{0.4, 0.26, 0.13}
\definecolor{moccasin}{rgb}{0.98, 0.92, 0.84}

% Grey scale
\definecolor{ashgrey}{rgb}{0.38, 0.38, 0.38}
\definecolor{lightgray}{rgb}{0.90, 0.90, 0.90} % edited
\definecolor{cadetgrey}{rgb}{0.57, 0.64, 0.69}

% Black and white
\definecolor{black}{rgb}{0.0, 0.0, 0.0}
\definecolor{white}{rgb}{1.0, 1.0, 1.0}

% --------------------------------------------------- %
%                     Set colors	                  %
% --------------------------------------------------- %

% Main color
\colorlet{mainColor1}{cadmiumgreen} % dark
\colorlet{mainColor2}{honeydew} % light

% Main structure colors
\colorlet{bodyColor}{white}
\colorlet{titleColor}{mainColor1}
\colorlet{chipColor}{mainColor1}

% Sections colors
\colorlet{sectionColor}{black}
\colorlet{subsectionColor}{ashgrey}

% Footline colors
\colorlet{authorFootlineColor}{black}
\colorlet{instituteFootlineColor}{black}
\colorlet{titleFootlineColor}{ashgrey}
\colorlet{pageFootlineColor}{black}
\colorlet{dateFootlineColor}{black}

% Block colors
\colorlet{normalTitleBlockColor}{mainColor1}
\colorlet{normalBlockColor}{mainColor2}
\colorlet{exampleTitleBlockColor}{airforceblue}
\colorlet{exampleBlockColor}{aliceblue}
\colorlet{alertTitleBlockColor}{carnelian}
\colorlet{alertBlockColor}{melon}

% Code colors
\definecolor{CodeGreen}{rgb}{0,0.6,0}
\definecolor{CodePurple}{rgb}{0.58,0,0.82}
\definecolor{CodeOrange}{rgb}{1,.45,0}
\definecolor{CodeGrey}{rgb}{0.92,0.92,0.92}

% Text colors
	% Main structure:
\colorlet{normalTextColor}{black}
\colorlet{titleTextColor}{white}
\colorlet{chipTextColor}{white}
	% Sections:
\colorlet{sectionTextColor}{white}
\colorlet{subsectionTextColor}{white}
	% Special:
\colorlet{exampleTextColor}{airforceblue}
\colorlet{emphaseTextColor}{orange-red}
\colorlet{alertTextColor}{carnelian}
	% Footline:
\colorlet{authorFootlineTextColor}{white}
\colorlet{instituteFootlineTextColor}{white}
\colorlet{titleFootlineTextColor}{white}
\colorlet{pageFootlineTextColor}{white}
\colorlet{dateFootlineTextColor}{white}
	% Blocks:
\colorlet{blockTitleTextColor}{white}
\colorlet{blockBodyTextColor}{black}
    % Tables:
\colorlet{tableTitleTextColor}{white}
\colorlet{tableBodyTextColor}{black}

% --------------------------------------------------- %
%                      Structure                      %
% --------------------------------------------------- %%
% http://www.cpt.univ-mrs.fr/~masson/latex/Beamer-appearance-cheat-sheet.pdf

\usecolortheme[named=mainColor1]{structure}
\useinnertheme{rectangles}
\useoutertheme[subsection=false]{miniframes}
\setbeamertemplate{navigation symbols}{}

% Text
\setbeamercolor{titlelike}{fg=titleTextColor,bg=titleColor}
\setbeamercolor*{normal text}{fg=normalTextColor,bg=bodyColor}
\setbeamercolor*{example text}{fg=exampleTextColor}
\setbeamercolor*{alerted text}{fg=alertTextColor}

\newcommand{\exemple}[1]{{\color{example text.fg} #1}}
\renewcommand{\emph}[1]{\textcolor{orange-red}{\textbf{#1}}}

% Items
\setbeamercolor{itemize item}{fg=titleColor!70}
\setbeamercolor{enumerate item}{fg=titleColor!70}
\setbeamercolor{description item}{fg=titleColor!70}

% Sections
\setbeamercolor{section in head/foot}{bg=sectionColor, fg=sectionTextColor}
\setbeamercolor{subsection in head/foot}{bg=subsectionColor, fg=subsectionTextColor}

\useinnertheme{default}
\setbeamercolor{item projected}{bg=chipColor,fg=chipTextColor}
\beamer@compresstrue
\defbeamertemplate*{headline}{smoothbars theme}{%
  \begin{beamercolorbox}[ht=2.125ex,dp=3.150ex]{section in head/foot}
  \insertnavigation{\paperwidth}
  \end{beamercolorbox}%

  \begin{beamercolorbox}[ht=2.125ex,dp=1.125ex,%
  leftskip=.3cm,rightskip=.3cm plus1fil]{subsection in head/foot}
  \usebeamerfont{subsection in head/foot}\insertsubsectionhead
  \end{beamercolorbox}%
}

% Footline
\setbeamercolor{author in head/foot}{bg=authorFootlineColor, fg=authorFootlineTextColor}
\setbeamercolor{title in head/foot}{bg=titleFootlineColor, fg=titleFootlineTextColor}
\setbeamercolor{institute in head/foot}{bg=instituteFootlineColor, fg=instituteFootlineTextColor}
\setbeamercolor{date in head/foot}{bg=dateFootlineColor, fg=dateFootlineTextColor}

\defbeamertemplate*{footline}{infolines theme}{
\leavevmode%
\hbox{%
\begin{beamercolorbox}[wd=.20\paperwidth,ht=2.25ex,dp=1ex,center]{author in head/foot}%
\usebeamerfont{author in head/foot}\insertshortauthor~~
\end{beamercolorbox}%

\begin{beamercolorbox}[wd=.10\paperwidth,ht=2.25ex,dp=1ex,center]{institute in head/foot}%
\usebeamerfont{institute in head/foot}\insertshortinstitute
\end{beamercolorbox}%

\begin{beamercolorbox}[wd=.40\paperwidth,ht=2.25ex,dp=1ex,center]{title in head/foot}%
\usebeamerfont{title in head/foot}\insertshorttitle
\end{beamercolorbox}%

\begin{beamercolorbox}[wd=.30\paperwidth,ht=2.25ex,dp=1ex,right]{date in head/foot}%
\usebeamerfont{date in head/foot}\insertshortdate{}\hspace*{2em}
\insertframenumber{} / \inserttotalframenumber\hspace*{2ex}
\end{beamercolorbox}
}%
\vskip0pt%
}

\mode
<all>

% --------------------------------------------------- %
%                  Renew Commands                     %
% --------------------------------------------------- %

\apptocmd{\frame}{}{\justifying}{} % Allow optional arguments after frame.

\renewcommand{\arraystretch}{1.5} % Space between lines in table

\newcommand{\urlcolor}[1]{\textcolor{magenta}{#1}}
\newcommand{\cref}[2]{\urlcolor{\href{#1}{#2}}} % margenta href

\newcommand{\code}[1]{\codebox{\centering\texttt{#1}}}

% footnote whitout index number
\newcommand\blfootnote[1]{%
  \begingroup
  \renewcommand\thefootnote{}\footnote{#1}%
  \addtocounter{footnote}{-1}%
  \endgroup
}

% --------------------------------------------------- %
%                  Sections Frames                    %
% --------------------------------------------------- %
\AtBeginSection[]{
  \begin{frame}
  \vfill
  \centering
  \begin{beamercolorbox}[sep=8pt,center,shadow=true,rounded=true]{title}
    \usebeamerfont{title}\insertsectionhead\par%
  \end{beamercolorbox}
  \vfill
  \end{frame}
}

% --------------------------------------------------- %
%                        Tables                       %
% --------------------------------------------------- %

\newcolumntype{Y}{>{\raggedleft\arraybackslash}X}

\tcbset{tablered/.style={enhanced,
                         arc=0em,
                         fonttitle=\bfseries,
                         fontupper=\normalsize\sffamily,
                         colback=melon!100!white,
                         colframe=carnelian!70!black,
                         colbacktitle=carnelian!100!white,
                         coltitle=white,
                         center title}}

\tcbset{tableorange/.style={enhanced,
                            arc=0em,
                            fonttitle=\bfseries,
                            fontupper=\normalsize\sffamily,
                            colback=peach-orange!100!white,
                            colframe=orange-red!70!black,
                            colbacktitle=orange-red!100!white,
                            coltitle=white,
                            center title}}        
                         

\tcbset{tablegreen/.style={enhanced,
                           arc=0em,
                           fonttitle=\bfseries,
                           fontupper=\normalsize\sffamily,
                           colback=honeydew!100!white,
                           colframe=cadmiumgreen!70!black,
                           colbacktitle=cadmiumgreen!100!white,
                           coltitle=white,
                           center title}}
                         
\tcbset{tableblue/.style={enhanced,
                          arc=0em,
                          fonttitle=\bfseries,
                          fontupper=\normalsize\sffamily,
                          colback=aliceblue!100!white,
                          colframe=airforceblue!70!black,
                          colbacktitle=airforceblue!100!white,
                          coltitle=white,
                          center title}}

\tcbset{tableyellow/.style={enhanced,
                            arc=0em,
                            fonttitle=\bfseries,
                            fontupper=\normalsize\sffamily,
                            colback=pastelyellow!100!white,
                            colframe=uscgold!70!black,
                            colbacktitle=uscgold!100!white,
                            coltitle=white,
                            center title}}

\tcbset{tablebrown/.style={enhanced,
                           arc=0em,
                           fonttitle=\bfseries,
                           fontupper=\normalsize\sffamily,
                           colback=moccasin!100!white,
                           colframe=darkbrown!70!black,
                           colbacktitle=darkbrown!100!white,
                           coltitle=white,
                           center title}}
                           
\tcbset{tablepurple/.style={enhanced,
                            arc=0em,
                            fonttitle=\bfseries,
                            fontupper=\normalsize\sffamily,
                            colback=lightmauve!100!white,
                            colframe=purpleheart!70!black,
                            colbacktitle=purpleheart!100!white,
                            coltitle=white,
                            center title}}
                           
\tcbset{tablegrey/.style={enhanced,
                          arc=0em,
                          fonttitle=\bfseries,
                          fontupper=\normalsize\sffamily,
                          colback=lightgray!100!white,
                          colframe=cadetgrey!70!black,
                          colbacktitle=cadetgrey!100!white,
                          coltitle=white,
                          center title}}

\tcbset{tableblack/.style={enhanced,
                           arc=0em,
                           fonttitle=\bfseries,
                           fontupper=\normalsize\sffamily,
                           colback=white!100!white,
                           colframe=black!70!black,
                           colbacktitle=black!100!white,
                           coltitle=white,
                           center title}}
                         
% --------------------------------------------------- %
%                        Blocks                       %
% --------------------------------------------------- %
\setbeamertemplate{blocks}[rectangle]

\setbeamercolor*{block title}{
  fg=blockTitleTextColor,
  bg=normalTitleBlockColor}
\setbeamercolor*{block body}{
  fg=blockBodyTextColor,
  bg=normalBlockColor}

\setbeamercolor*{block title alerted}{
  fg=blockTitleTextColor,
  bg=alertTitleBlockColor}
\setbeamercolor*{block body alerted}{
  fg=blockBodyTextColor,
  bg=alertBlockColor}

\setbeamercolor*{block title example}{
  fg=blockTitleTextColor,
  bg=exampleTitleBlockColor}
\setbeamercolor*{block body example}{
  fg=blockBodyTextColor,
  bg=exampleBlockColor}

\setbeamerfont{block title}{size={}}

\AtBeginEnvironment{block}{%
  \setbeamercolor{itemize item}{fg=normalTitleBlockColor!70}
}
\AtBeginEnvironment{exampleblock}{%
  \setbeamercolor{itemize item}{fg=exampleTitleBlockColor!70}
}
\AtBeginEnvironment{alertblock}{%
  \setbeamercolor{itemize item}{fg=alertTitleBlockColor!70}
}

% --------------------------------------------------- %
%                         Boxes                       %
% --------------------------------------------------- %

\newcommand{\codebox}[1]{
\begin{center}
\begin{tcolorbox}[colback=mainColor2,
                  colframe=mainColor1,
                  arc=3mm, auto outer arc,
                  boxrule=1.5pt]
  #1
\end{tcolorbox}
\end{center}
}

\newcommand{\boxyellow}[1]{
\begin{center}
\fcolorbox{uscgold}{pastelyellow}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}

\newcommand{\boxpurple}[1]{
\begin{center}
\fcolorbox{purpleheart}{lightmauve}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}

\newcommand{\boxorange}[1]{
\begin{center}
\fcolorbox{orange-red}{peach-orange}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}

\newcommand{\boxbrown}[1]{
\begin{center}
\fcolorbox{darkbrown}{moccasin}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}

\newcommand{\boxgrey}[1]{
\begin{center}
\fcolorbox{cadetgrey}{lightgray}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}

\newcommand{\boxblue}[1]{
\begin{center}
\fcolorbox{airforceblue}{aliceblue}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}

\newcommand{\boxgreen}[1]{
\begin{center}
\fcolorbox{cadmiumgreen}{honeydew}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}

\newcommand{\boxblack}[1]{
\begin{center}
\fcolorbox{black}{white}{
\begin{minipage}{0.5\textwidth}
#1
\end{minipage}
}
\end{center}
}

% --------------------------------------------------- %
%                      Listings 	                  %
% --------------------------------------------------- %
\definecolor{backcolour}{RGB}{245,245,245}
\definecolor{commentcolour}{RGB}{0,128,0}
\definecolor{keywordcolour}{RGB}{249,38,114}
\definecolor{stringcolour}{RGB}{255,102,0}

\renewcommand\lstlistingname{Algoritimo} 
\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{commentcolour},
    keywordstyle=\color{keywordcolour}\bfseries,
    numberstyle=\tiny\color{black},
    stringstyle=\color{stringcolour},
    emphstyle=\color{red},
    basicstyle=\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=t,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}
 
\lstset{style=mystyle}

% \lstset
% {
%   literate=%
%   {0}{{{\color{CodeOrange}0}}}1
%   {1}{{{\color{CodeOrange}1}}}1
%   {2}{{{\color{CodeOrange}2}}}1
%   {3}{{{\color{CodeOrange}3}}}1
%   {4}{{{\color{CodeOrange}4}}}1
%   {5}{{{\color{CodeOrange}5}}}1
%   {6}{{{\color{CodeOrange}6}}}1
%   {7}{{{\color{CodeOrange}7}}}1
%   {8}{{{\color{CodeOrange}8}}}1
%   {9}{{{\color{CodeOrange}9}}}1
% }