\usepackage{array}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/03/30 Minimal resume class]

\LoadClass[11pt]{article}

% Basic packages
\RequirePackage{ifthen}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage[hidelinks]{hyperref}

% Page / paragraph defaults
\pagestyle{empty}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}

% Section style
\titleformat{\section}
  {\large\bfseries\scshape}
  {}
  {0pt}
  {}
  [\vspace{-0.4em}\titlerule]

\titlespacing*{\section}
  {0pt}{0.8em}{0.5em}

% Name at top
\newcommand{\name}[1]{%
  \begin{center}
    {\LARGE\bfseries #1}
  \end{center}
  \vspace{0.25em}
}

% Address/contact block
\newcommand{\address}[1]{%
  \begin{center}
    #1
  \end{center}
}

% Resume section environment
\newenvironment{rSection}[1]{%
  \vspace{0.8em}%
  {\large\bfseries\scshape #1\par}%
  \vspace{0.25em}%
  \hrule
  \vspace{0.5em}%
}{%
  \vspace{0.2em}%
}

% Better list spacing for CV bullets
\setlist[itemize]{%
  leftmargin=1.2em,
  topsep=0.2em,
  itemsep=0.2em,
  parsep=0em,
  partopsep=0em
}

% Optional helpers often used in resume templates
\newcommand{\rSubtext}[2]{%
  \textit{#1} \hfill \textit{#2}\par
}

\newcommand{\rItem}[1]{\item #1}
