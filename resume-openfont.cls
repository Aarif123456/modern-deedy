% Intro Options
\ProvidesClass{resume-openfont}[2021/05/30 Abdullah's version]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{ 
    \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

%------------------------------------------------------
% Package Imports
% Set boundaries
\RequirePackage[hmargin=1cm, vmargin=0.94cm]{geometry}
% remove ugly boxes around links
\RequirePackage[hidelinks]{hyperref}
% setup custom titles
\RequirePackage{titlesec}
\RequirePackage{textcomp}
% For skills table
\RequirePackage{enumitem}
% page setup 
\usepackage[absolute]{textpos}
\RequirePackage[english]{babel}
% Using tables like the profile section
\RequirePackage{tabularx}
% Used for the link symbol
\RequirePackage{fontawesome}
% Set up font 
\RequirePackage{local-font}

%------------------------------------------------------
% Reformatting default sections
% section
\titlespacing{\section}{0pt}{0pt}{0pt}
\titleformat{\section}{\color{headings}\scshape\customMedium\fontsize{16pt}{20pt}\selectfont \raggedright\uppercase} {}{0em}{}
% subsection
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titleformat{\subsection}{\color{subheadings}\customMedium\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase\normalfont} {}{0em}{}


%------------------------------------------------------
% Subheadings command
\newcommand{\runsubsection}[1]{\color{subheadings}\customMedium\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase{#1}\normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\customMedium\fontsize{11pt}{13pt}\selectfont{#1}\normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\customMedium\fontsize{11pt}{13pt}\selectfont{#1}\normalfont}

% minor sections - like even smaller sub section
\newcommand{\minorSection}[1]{\color{subheadings}\raggedright\scshape\customMedium\fontsize{11pt}{12pt}\selectfont{#1}\normalfont}

% Project command
\newcommand{\Project}[2]{\runsubsection{
    \lowercase{
        \href{#2}}{#1 \,\faExternalLink}
    }
    \hfill
}

%------------------------------------------------------
% Section separators command
\newcommand{\sectionsep}[0]{\vspace*{6pt}}

% small separators command
\newcommand{\smallSep}[0]{\vspace*{3pt}}

% A shortcut to control spacing
\newcommand{\NoSpace}{\vspace*{-2pt}}

% Command to align table at the start of the resume
\newcommand{\alignProfileTable}{
    \raggedbottom
    \raggedright
    \setlength{\tabcolsep}{0in}
}

% Command to simulate new line, to fix spacing glitches
\newcommand{\fakeNewLine}{\newline \vspace{-\baselineskip}}

% Convenience command to create job positions
% Parameters: company, position, location, when
\newcommand{\resumeHeading}[4]{\runsubsection{#1}\descript{ | #2}\hfill\location{#3 | #4}\fakeNewLine\NoSpace}

% Convenience command for coursework
% Parameters: courses
\newcommand{\courseWork}[1]{\semiBold{Coursework:} #1}

% Command to create smaller heading: First parameter is the title, second is when you were employed
\newcommand{\resumeSubheading}[2]{\minorSection{#1}\hfill\location{#2}\fakeNewLine\NoSpace}
%------------------------------------------------------
% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
    \vspace{-1mm}
    \begin{itemize}
    \itemsep1pt 
    \parskip1.5pt 
    \parsep1.5pt
    }{
        \end{itemize}
        \vspace{-\topsep}
    }

\newenvironment{resumeSkillList}{
       \begin{itemize}[leftmargin=0.07cm, label={}]
    }{
        \end{itemize}
    }

% Align Sections
\let\oldSection\section
\renewcommand{\section}[1]{\oldSection{#1}\raggedright}
