% Intro Options
\ProvidesClass{resume-openfont}[2021/05/30 Abdullah's version]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{ 
    \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

%--------------------------------------------------------------
% Package Imports
\RequirePackage[english]{babel}
% Set boundaries
\RequirePackage[hmargin=1cm, vmargin=0.94cm]{geometry}
% remove ugly boxes around links
\RequirePackage[hidelinks]{hyperref}
% setup custom titles
\RequirePackage{titlesec}
% For skills table
\RequirePackage{enumitem}
% Using tables like the profile section
\RequirePackage{tabularx}
% Used for the link symbol
\RequirePackage{fontawesome}
% Set up font 
\RequirePackage{local-font}

%--------------------------------------------------------------
% Reformatting default sections
% section
\titlespacing{\section}{0pt}{0pt}{0pt}
\titleformat{\section}{%
\color{headings}% Using comments to allow us to split the command across multiple line
\scshape%
\customMedium%
\fontsize{16pt}{20pt}%first number is size, second number is space between lines
\selectfont%
\raggedright%
\uppercase%
} {}{0em}{}

% subsection
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titleformat{\subsection}{%
\color{subheadings}%
\customMedium%
\fontsize{12pt}{12pt}%
\selectfont%
\bfseries%
\uppercase%
\normalfont% Normal font is used to reset the customization, so it doesn't bleed into anything else
} {}{0em}{}

%--------------------------------------------------------------
% Formatting commands - commands to control spacing

% A shortcut to control spacing
\newcommand{\NoSpace}{\vspace*{-2pt}}

% Command to simulate new line, to fix spacing glitches
\newcommand{\fakeNewLine}{\newline \vspace{-\baselineskip}}

% Command to align table at the start of the resume
\newcommand{\alignProfileTable}{
    \raggedbottom
    \raggedright
    \setlength{\tabcolsep}{0in}
}

%--------------------------------------------------------------
% Subheadings command - create different types of heading
\newcommand{\runsubsection}[1]{%
\color{subheadings}%
\customMedium%
\fontsize{12pt}{12pt}%
\selectfont%
\bfseries%
\uppercase{#1}%
\normalfont}%

% Descriptors command
\newcommand{\descript}[1]{%
\color{subheadings}%
\raggedright%
\scshape%
\customMedium%
\fontsize{11pt}{13pt}%
\selectfont{#1}%
\normalfont}

% Location command
\newcommand{\location}[1]{%
\color{headings}%
\raggedright%
\customMedium%
\fontsize{11pt}{13pt}%
\selectfont{#1}%
\normalfont}

% Minor command - like even smaller sub section
\newcommand{\minorSection}[1]{%
\color{subheadings}%
\raggedright%
\scshape%
\customMedium%
\fontsize{11pt}{12pt}%
\selectfont{#1}%
\normalfont}

% Project command
\newcommand{\Project}[2]{\runsubsection{%
    \lowercase{\href{#2}}{#1 \,\faExternalLink}
    }
    \hfill
}

% Command for table 
\newcommand{\singleItem}[2]{\location{#1} #2}
\newcommand{\doubleItem}[4]{\singleItem{#1}{#2}\hspace*{\fill} \singleItem{#3}{#4}}

%--------------------------------------------------------------
% Section separators command
\newcommand{\sectionsep}[0]{\vspace*{6pt}}

% small separators command
\newcommand{\smallSep}[0]{\vspace*{3pt}}

%--------------------------------------------------------------
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

% Command for skill table
\newenvironment{resumeSkillList}{
       \begin{itemize}[leftmargin=0.07cm, label={}]
    }{
        \end{itemize}
    }

%--------------------------------------------------------------
% Customize built-in commands
% Align Sections
\let\oldSection\section
\renewcommand{\section}[1]{\oldSection{#1}\raggedright}
