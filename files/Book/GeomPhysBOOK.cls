\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{GeomPhysBOOK}
    [2024/10/08 TimothyJWalton and RobinWTucker]
    % This provides the class file to typeset: A Geometric View for Observers of Spacetime Physics 

% OPTIONS: draft, lineno

\newif\iflineno\linenofalse
\DeclareOption{lineno}{\linenotrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions\relax

\tolerance=1
\hyphenpenalty=10000
\emergencystretch=\maxdimen
\hbadness=10000
\interfootnotelinepenalty=10000

\LoadClass[	a4paper,
			bibliography=totoc,
			titlepage=false,
			chapterprefix=true,
			numbers=noenddot,
			titlepage=firstiscover,
			DIV=13]{scrbook}
			
	\setcounter{secnumdepth}{4}
	
	\renewcommand{\rmdefault}{ptm}
	
	\newcommand*\tocentrychap[1]{{\bf #1}}
	\renewcommand*{\raggedchapter}{\centering}
	\addtokomafont{chapter}{\huge\rm\bf}
	
	\newcommand\ENDRULE{\vspace{0.4cm}\parbox{\textwidth}{\centering\normalsize \OrnamentDiamondSolid}\newline\vspace{0.25cm}}
	\newcommand\titlerule[1][1.25pt]{\rule{\textwidth}{#1}\break\parbox{\textwidth}{\vspace{-0.4cm}\centering\normalsize\OrnamentDiamondSolid}}
	\renewcommand*\chapterlineswithprefixformat[3]{	\ifstr{#1}{chapter}
														{\MakeUppercase{#2}#3\titlerule\par\nobreak}
														{#2#3}
													}
	\renewcommand{\thechapter}{\ifnum\value{chapter}<10{}\fi\arabic{chapter}} 
	\RedeclareSectionCommand[	innerskip=4pt,
								prefixfont=\large,
								tocnumwidth=2.1cm,
								afterskip=2cm,
								tocentryformat=\tocentrychap,
								tocpagenumberformat=\tocentrychap
								]{chapter}
								
	\RedeclareSectionCommand[   tocindent=1.08cm,
								tocnumwidth=1.04cm,
								tocentryformat=\rm,
								tocpagenumberformat=\rm
								]{section}
								
	\RedeclareSectionCommand[   tocindent=2.1cm,
								tocentryformat=\rm,
								tocpagenumberformat=\rm
								]{subsection}
								
	\renewcommand{\familydefault}{\rmdefault}
\makeatletter
    \DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
    \DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
    \DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
    \DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
    \DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
    \DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
    \DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\makeatother


%%%%%%%%%%%%%%%%%%
%%%% PACKAGES %%%%
%%%%%%%%%%%%%%%%%%
\RequirePackage{afterpage}
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
	\numberwithin{equation}{chapter}
\RequirePackage{amsthm}
	\renewcommand{\qedsymbol}{$\blacklozenge$}
\RequirePackage{array}		
	\newcommand{\PreserveBackslash}[1]{\let\temp=\\#1\let\\=\temp}
	\newcolumntype{C}[1]{>{\PreserveBackslash\centering}p{#1}}
	\newcolumntype{R}[1]{>{\PreserveBackslash\raggedleft}p{#1}}
	\newcolumntype{L}[1]{>{\PreserveBackslash\raggedright}p{#1}}
\RequirePackage[greek,english]{babel}
\RequirePackage{bbding}
\RequirePackage{bm}
\RequirePackage{bm}
\RequirePackage{bold-extra}
\RequirePackage{braket}
\RequirePackage{cite}
\RequirePackage{currfile}
\RequirePackage{datetime}
\RequirePackage{empheq}
\RequirePackage{enumitem}
	\newlist{TODO}{itemize}{1}
	\setlist[TODO,1]{	leftmargin=1.2cm,
						label={\footnotesize$\blacktriangleright$}
						}
\RequirePackage{float}
\RequirePackage{framed} 
\RequirePackage{graphicx}
\RequirePackage{imakeidx}
\RequirePackage[initsep=30pt,totoc,font=small]{idxlayout}
	\makeindex[columns=2, title=Index, intoc, options= -s Geom_Paradigm_Physics.ist]
	\newcommand{\targetindexentryy}[1]{\leavevmode\hypertarget{index:#1}{#1}}
\RequirePackage{import}
\RequirePackage{lineno}
	\iflineno
		\linenumbers
		\renewcommand\linenumberfont{\normalfont\footnotesize}
		\setpagewiselinenumbers
	\else
		\nolinenumbers
	\fi
\RequirePackage{longtable}
\RequirePackage{mathrsfs}
\RequirePackage{mathtools}
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage{multirow}
\RequirePackage{orcidlink}
\RequirePackage{pdflscape}
\RequirePackage{pgfplots}
    \pgfplotsset{compat=newest}
\RequirePackage{ragged2e}
\RequirePackage{scalerel}
\RequirePackage{setspace}
\RequirePackage{slashed}
\RequirePackage{stackengine}
\RequirePackage{suffix}
\RequirePackage{tikz}
	\usetikzlibrary{angles, arrows.meta, calc, decorations.markings, decorations.pathreplacing, patterns, positioning, quotes, shapes, shapes.geometric, shapes.misc, tikzmark, trees, intersections, fillbetween, cd}
	\tikzset{middlearrow/.style={	decoration={markings,
									mark= at position 0.55 with {\arrow[scale=1.4]{#1}} ,
									},
									postaction={decorate}
								}
			}
	\tikzset{beginarrow/.style={	decoration={markings,
									mark= at position 0.15 with {\arrow[scale=1.4]{#1}} ,
									},
									postaction={decorate}
								}
			}
	\tikzset{toarrow/.style={	decoration={markings,
									mark= at position #1 with {\arrow[scale=1.4]{to}} ,
									},
									postaction={decorate}
								}
			}
	\tikzset{	cross/.style={cross out, draw=black, minimum size=2*(#1-\pgflinewidth), inner sep=0pt, outer sep=0pt}, 
				cross/.default={3pt}
				}
\RequirePackage{twemojis}
\RequirePackage[normalem]{ulem}
\RequirePackage{url}
\RequirePackage{xcolor}
\RequirePackage{xpatch}
	\xpatchcmd{\addchaptertocentry}{%
		\addtocentrydefault{chapter}{#1}{#2}%
		}{%
		\ifstr{#1}{}
		{\addtocentrydefault{chapter}{#1}{#2}}
		{\addtocentrydefault{chapter}{\chapapp{} #1:}{#2}}
		}{}{\PatchFailed}
	\makeatletter
		\xpatchcmd\theindex{\z@ \@plus 0.3\p@}{0pt}{}{\fail}
	\makeatother
\RequirePackage{xstring}
\RequirePackage{hyperref} 	
	\hypersetup{    colorlinks	=	true,
		            linkcolor	=	{red!40!black},
		            citecolor	=	{green!50!black},
		            urlcolor	=	{blue!80!black}, 
		            pdfstartview=	{XYZ null null 1},
		            bookmarksnumbered,
		            bookmarksdepth=3,
		            pdfauthor	=	{Robin W. Tucker and Timothy J. Walton}.
		            pdftitle	=	{Probing the Geometric View of Spacetime Physics}
		            }


%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% DOCUMENT COMMANDS %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
	\xpatchcmd{\@maketitle}
	  {\@title}
	  {\bfseries\@title}
	  {}{}
	
\makeatother

\setcounter{tocdepth}{2}

%%%%%%%%%%%%%%%%%%%%%%
%%%% NEW BOOLEANS %%%%
%%%%%%%%%%%%%%%%%%%%%%	
\makeatletter
	\newcommand*{\affiliation}[1]{\def\e@affiliation{#1}}
	\renewcommand*{\subtitle}[1]{\def\e@subtitle{#1}}
	\newif\ifsubtitle
	\subtitlefalse 
	\def\e@subtitle{}
	\newcommand{\subtitlecheck}{	\ifx\e@subtitle\empty
										\subtitlefalse 
									\else
										\subtitletrue 
									\fi
									}
	\makeatother
%%%%%%%%%%%%%%%%%%
%%%% COMMANDS %%%%
%%%%%%%%%%%%%%%%%%
\newcommand{\sectionTODO}[1]{\section{\color{red} #1} }
\newcommand{\chapterTODO}[1]{\chapter{\color{red} #1} }

%%% Operators
\DeclareMathOperator{\sech}{sech}
\DeclareMathOperator{\arctanh}{arctanh}


%%% Manifold macros (curly letters) 
\newcommand{\M}{\mathcal{M}}
\newcommand{\N}{\mathcal{N}}
\newcommand{\U}{\mathcal{U}}
\newcommand{\UM}{\U_{\M}}
\newcommand{\T}{\mathcal{T}}

%%% Vectors 
\newcommand{\VEC}[1]{\pmb{#1}}	% notation for vector
\newcommand{\SEQ}[1]{\pmb{#1}} 	% notation for ordered sequence
\newcommand{\pp}{\VEC{p}}
\newcommand{\qq}{\VEC{q}}
\newcommand{\VV}{\VEC{V}}
\newcommand{\WW}{\VEC{W}}
\newcommand{\XX}{\VEC{X}}
\newcommand{\ZZ}{\VEC{Z}}
\newcommand{\YY}{\VEC{Y}}
\newcommand{\ZV}{\VEC{0}}
\newcommand{\xx}{\VEC{x}}
\newcommand{\yy}{\VEC{y}}

%%% Tim's definitions
\newcommand{\ntuple}[1]{\left(#1\right)}
\newcommand{\coords}[1]{(#1)}
\newcommand{\muL}{\mu_{\text{L}}}
\newcommand{\llangle}{\langle\!\langle}
\newcommand{\rrangle}{\rangle\!\rangle}
\newcommand{\signature}{\text{sig}}
\newcommand{\DISTFUNC}{\textrm{d}}
\newcommand{\gCDOTCDOT}{\left.\df\g(\CDOT,\CDOT)\right|_{C(\tau)}}
\newcommand{\tgCDOTCDOT}{\g(\CDOT,\CDOT)|_{C(\tau)}}
\newcommand{\MaxC}{k}
\newcommand{\spatind}{\mathcal{O}}
\newcommand{\bbdot}{\raisebox{0.05cm}{\tiny$\bullet$\,}}
\newcommand{\sd}{d_{Z}}
\newcommand{\SIG}{\wh{S}}
\newcommand{\gPOT}{\mathcal{V}}
\newcommand{\projP}{\mathcal{P}}
\newcommand{\projQ}{\mathcal{Q}}
\newcommand{\ARtau}{\mathcal{A}_{\text{ES}}(\,R(\tau)\,)}
\newcommand{\DARtau}{\mathcal{A}_{\text{ES}}'(\,R(\tau)\,)}
\newcommand{\ARNtau}{\mathcal{A}_{\text{RN}}(\,R(\tau)\,)}
\newcommand{\DARNtau}{\mathcal{A}'_{\text{RN}}(\,R(\tau)\,)}
\newcommand{\thickbreve}[1]{\;\mathbf{\breve{\text{\!\!$#1$}}}}
\newcommand{\CHAIN}[1]{\Sigma_{#1}}
\newcommand{\TWOJET}[2]{\partial^{2}_{#1#2}}
\newcommand{\LAGARG}[2]{q^{1}_{#1},\ldots,q^{#2}_{#1},\dot{q}{}^{1}_{#1},\ldots,\dot{q}{}^{#2}_{#1}}
\newcommand{\HAMARG}[2]{q^{1}_{#1},\ldots,q^{#2}_{#1},p^{1}_{#1},\ldots,p^{#2}_{#1}}
\newcommand{\BLAGARG}[1]{\qq_{#1},\dot{\qq}_{#1}}
\newcommand{\BHAMARG}[1]{\qq_{#1},\pp_{#1}}
\newcommand{\PD}[1]{\frac{\partial}{\partial #1}} 
\newcommand{\tPD}[1]{{\partial}/{\partial #1}} 
\newcommand{\SOPD}[1]{\frac{\partial^{2}}{\partial #1^{2}}} 
\newcommand{\tSOPD}[1]{{\partial^{2}}/{\partial #1^{2}}} 
\newcommand{\RR}{\mathbb{R}}
\newcommand{\QQ}{\mathbb{Q}}
\newcommand{\CCOMP}{\mathbb{C}}	
\newcommand{\RRplus}{\RR^{+}\!}
\newcommand{\RRoplus}{\RR^{\oplus}\!}
\newcommand{\RRminus}{\RR^{-}\!}
\newcommand{\RRominus}{\RR^{\ominus}\!}
\newcommand{\RN}{\RR^{n}} 
\newcommand{\RM}{\RR^{m}}
\newcommand{\NN}{\mathbb{N}}		
\newcommand{\wt}[1]{\widetilde{#1}}
\newcommand{\wh}[1]{\widehat{#1}}
\newcommand{\whh}[1]{\widehat{\widehat{#1}}}
\newcommand{\qLRA}{\quad\Longrightarrow\quad}	
\newcommand{\ds}{\displaystyle}
\newcommand{\df}{\frac{}{}}
\newcommand{\tensor}{\otimes}	
\newcommand{\Lie}{\mathcal{L}} 
\newcommand{\w}{\wedge}		
\newcommand{\Vol}{\text{Vol}}	


\newcommand{\LDOT}{\mbox{\bf{\,}.{\,}}}
\renewcommand{\dot}[1]{\overset{\,_{\mbox{\bf .}}}{#1}}
\renewcommand{\ddot}[1]{\overset{\,_{\mbox{\bf .\hspace{-0.01cm}.}}}{#1}}
\renewcommand{\dddot}[1]{\overset{\,_{\mbox{\bf .\hspace{-0.01cm}.\hspace{-0.01cm}.}}}{#1}}
\newcommand{\ndot}[1]{\overset{\,_{\mbox{$\overbrace{\text{\bf .}\hspace{-0.01cm}\text{\bf .}\,\raisebox{-0.048cm}{\small -\,-\,-}\,\hspace{-0.01cm}\text{\bf .}}^{\text{$N$ dots}}$}}}{#1}}
\newcommand{\dummydot}{\!\dot{\phantom{o}}}

%\renewcommand{\mathring}[1]{\overset{{}_{\mbox{\tiny\hspace{0.01cm} $\pmb{\vee}$}}}{#1}}

\renewcommand{\mathring}[1]{\dot{#1}}
\newcommand{\RCtau}[1]{\left.#1 \right|_{C(\tau)}}

\newcommand{\qsn}[2]{{\overset{\mbox{\hspace{0.02cm}\tiny$\{#1\}$}}{q}}{}^{#2}}

\newcommand{\gothV}{\mathfrak{V}}
\newcommand{\Cstardtau}{C_{*}\PD{\tau}}
\newcommand{\tCstardtau}{C_{*}\tPD{\tau}}
\newcommand{\Cstards}{C_{*}\PD{s}}
\newcommand{\tCstards}{C_{*}\tPD{s}}
\newcommand{\CC }{\pmb{C}}
\newcommand{\CF}[2]{C_{#1}{}^{#2}} 
\newcommand{\II}{\mathcal{I}}
\newcommand{\JJ}{\mathcal{J}}
\newcommand{\rr }{\pmb{r}}
\newcommand{\KK }{K}
\newcommand{\nbh}{\text{nbh}}
\newcommand{\Nbh}{\text{Nbh}}
\newcommand{\om}[2]{\omega^{#1}{}_{#2}} 
\newcommand{\GMA}[3]{\Gamma_{#1}{}_{#2}{}^{#3 }}
\newcommand{\GMAprime}[3]{\Gamma^{\prime} _{#1#2}{}^{#3 }}
\newcommand{\DEL}[2]{\nabla_{#1}{#2}}
\newcommand{\DBYD}[1]{\frac{d}{d{#1}}}
\newcommand{\CDOT}{\dot{C}}
\newcommand{\FM}{\mathcal{F}(\M)}
\newcommand{\FUM}{\mathcal{F}(\UM)}
\newcommand{\TTT}{\pmb{T}}
\newcommand{\TORT}{\texttt{Tor}}
\newcommand{\RRR}{\pmb{R}}
\newcommand{\METT}{\texttt{S}}
\newcommand{\RIEM}{\texttt{Riem}}
\newcommand{\wtRIEM}{\wh{\texttt{R}}\texttt{iem}}
\newcommand{\RIC}{\texttt{Ric}}
\newcommand{\EIN}{\texttt{Ein}}
\newcommand{\EINFM}[1]{\mathcal{G}_{#1}}
\newcommand{\EINEHFM}[1]{\mathcal{G}^{\text{(EH)}}_{#1}}
\newcommand{\RFORM}[2]{R^{#1}{}_{#2}}
\newcommand{\ACC }{\mathcal{A}}
\newcommand{\FORALL}{\text{  for all  }}
\newcommand{\NBEIN}{\mathcal{E}}
\newcommand{\WWW}{\mathcal{W}}
\newcommand{\TT}{\mathcal{T}}
\newcommand{\FORCE}{\mathcal{F}}
\newcommand{\GSTAR}{{\g^{-1}}}
\newcommand{\GG}{\breve{\g}}
\newcommand{\gamXp }{{C_{_{ X_{\pp}}}}}
\newcommand{\gamX }{{C_{_{ X}}}}
\newcommand{\expp}{ \exp_{\pp}    }
\newcommand{\gamXdot }{{\dot{C}_{_{ X_{\pp}}}}}
\newcommand{\g}{\texttt{g}}
\newcommand{\G}{\texttt{G}}
%%%
\newcommand{\gPG}{\g_{\text{PG}}}
\newcommand{\gES}{\g_{\text{ES}}}
\newcommand{\gKS}{\g_{\text{KS}}}
%
\newcommand{\MPG}{\M_{\text{PG}}}
\newcommand{\MES}{\M_{\text{ES}}}
\newcommand{\MKS}{\M_{\text{KS}}}
%%%
\newcommand{\GSTARUM}{{\g_{\,\U_{\mbox{\tiny$\M$}}}^{-1}}}
\newcommand{\gUM}{{\g_{\,\U_{\mbox{\tiny$\M$}}}}}
\renewcommand{\labelitemi}{$-$}
\newcommand{\dom}{\text{dom}}
\newcommand{\im}{\text{im}}
\newcommand{\PHYSDIM}[1]{\pmb{\left[\vphantom{#1}\right.} #1 \pmb{\left.\vphantom{#1}\right]}}
\newcommand{\TIME}{\textbf{\textsc{t}}}
\newcommand{\MASS}{\textbf{\textsc{m}}}
\newcommand{\LENGTH}{\textbf{\textsc{l}}}
\newcommand{\CHARGE}{\textbf{\textsc{q}}}
\newcommand{\TEMPDIM}{\textbf{\textsc{k}}}
\newcommand{\eme}{\pmb{e}}
\newcommand{\emb}{\pmb{b}}
\newcommand{\emd}{\pmb{d}}
\newcommand{\emh}{\pmb{h}}
\newcommand{\emE}{\pmb{E}}
\newcommand{\emB}{\pmb{B}}
\newcommand{\emD}{\pmb{D}}
\newcommand{\emH}{\pmb{H}}
\newcommand{\emEE}{\pmb{\mathcal{E}}}
\newcommand{\emBB}{\pmb{\mathcal{B}}}
\newcommand{\emJ}{\pmb{J}_{(q)}} 
\newcommand{\emJJ}{\pmb{\mathcal{J}}_{(q)}}  
\newcommand{\emR}{\rho_{(q)}}  
\newcommand{\emj}{\mathcal{J}} 
\newcommand{\emm}{\pmb{M}}
\newcommand{\emp}{\pmb{\Pi}}
\newcommand{\force}{f}
\newcommand{\timeH}{\wh{H}}
\newcommand{\rotT}{\text{\large\begin{otherlanguage}{greek}\texttt{w}\end{otherlanguage}}}
\newcommand{\vortfm}{d\wt{Z}}
\newcommand{\svortfm}{\Pi^{\perp}_{Z}\vortfm}
\newcommand{\sigmaT}{\text{\large\begin{otherlanguage}{greek}\texttt{\textsigma}\end{otherlanguage}}}
\newcommand{\etaT}{\text{\large\begin{otherlanguage}{greek}\texttt{\texteta}\end{otherlanguage}}}
\newcommand{\deltaT}{\text{\large\begin{otherlanguage}{greek}\texttt{\textdelta}\end{otherlanguage}}}
\newcommand{\etaTs}{\text{\begin{otherlanguage}{greek}\texttt{\texteta}\end{otherlanguage}}}
\newcommand{\gMs}{\g_{\mbox{\tiny Mink}}}
\newcommand{\psiT}{\text{\large\begin{otherlanguage}{greek}\texttt{\textxi}\end{otherlanguage}}}
\newcommand{\UpsilonT}{\text{\large\begin{otherlanguage}{greek}\texttt{\textUpsilon}\end{otherlanguage}}}
\newcommand{\XiT}{\text{\large\begin{otherlanguage}{greek}\texttt{\textXi}\end{otherlanguage}}}
\newcommand{\ACTION}[1]{\mathcal{I}_{\text{#1}}}
\newcommand{\delvar}{\wh{\delta}}
\newcommand{\varye}[1]{\mathring{e}{}^{#1}}
\newcommand{\dotACTION}[1]{\mathring{\mathcal{I}}_{\text{#1}}}
\newcommand{\rightdot}{\hspace{-0.1cm}\mathring{\phantom{m}}}
\newcommand{\GLD}{\mathfrak{D}}
\newcommand{\fdot}{\mathring{f\mkern 4mu}{\mkern-4mu}}
\newcommand{\phidot}{\mathring{\phi\mkern 4mu}{\mkern-4mu}}
\newcommand{\phibardot}{\mathring{\overline{\phi\mkern 2mu}\mkern 2mu}{\mkern-4mu}}
\newcommand{\phibar}{\overline{\phi\mkern 2mu}{\mkern-2mu}}
\newcommand{\Adot}{\mathring{A\mkern 4mu}{\mkern-4mu}}
\newcommand{\trace}{\text{Tr}\,}
\newcommand{\traceg}{\text{Tr}^{(\g)}\,}
\newcommand{\SQRT}[2]{\sqrt{{#1}^{2} - {#2}^{2}\;}}
\newcommand{\PFT}[1]{\mathtt{T}^{(#1)}} 
\newcommand{\ENTROPY}{\mathcal{S}} 		
\newcommand{\INTENERGY}{\mathcal{E}} 	
\newcommand{\ENTHALPY}{\mathcal{H}}		
\newcommand{\PRESSURE}{\mathcal{P}}		
\newcommand{\TEMP}{\mathcal{T}}			
\newcommand{\mR}{\rho_{\text{m}}}			
\newcommand{\FINDEX}{\wh{\mathcal{F}}}	
\newcommand{\FJ}{\mathcal{J}^{(\FINDEX)}}		
\newcommand{\mJ}{\mathcal{J}^{(\text{m})}}		
\newcommand{\idmap}{\mathbb{I}}	
\newcommand{\norm}[1]{\left\lVert#1\right\rVert}	
\newcommand{\innerprod}[2]{\left\langle{\,}{#1},{\,}{#2}{\,}\right\rangle}	
\newcommand{\biform}[2]{B\!\left({#1},{\,}{#2}\right)}	
\renewcommand{\ket}[1]{\left|\,#1\,\right\rangle}
\renewcommand{\bra}[1]{\left\langle\,#1\,\right|}
\newcommand{\hh}{\mathtt{h}}
\newcommand{\Pmom}{\pmb{P}}
\newcommand{\pmom}{\pmb{\pi}}
\newcommand{\energy}{\gamma}
\newcommand{\TPM}{T_{\pp}\M}
\newcommand{\TPMPERP}{T^{\perp}_{\pp}\M}
\newcommand{\TPMPAR}{T^{\|}_{\pp}\M}
\newcommand{\TCM}{T_{C(\tau)}\M}
\newcommand{\TCMZ}{T_{C(\tau_{0})}\M}
\newcommand{\TCMPERP}{T^{\perp}_{C(\tau)}\M}
\newcommand{\TCMPAR}{T^{\|}_{C(\tau)}\M}
\newcommand{\TCMPERPZ}{T^{\perp}_{C(\tau_{0})}\M}
\newcommand{\TCMPARZ}{T^{\|}_{C(\tau_{0})}\M}
%%%
\newcommand{\TCMZs}{T_{C(s_{0})}\M}
\newcommand{\TCMPERPZs}{T^{\perp}_{C(s_{0})}\M}
\newcommand{\TCMPARZs}{T^{\|}_{C(s_{0})}\M}
\newcommand{\TCMPERPs}{T^{\perp}_{C(s)}\M}
\newcommand{\TCMPARs}{T^{\|}_{C(s)}\M}
%%%
%%%
\newcommand{\AAA}{\pmb{A}}
\newcommand{\tINT}{\mbox{\scriptsize INT}}
\newcommand{\tEXT}{\mbox{\scriptsize EXT}}
\newcommand{\FINTr}{F^{\tINT}_{r}\!}
\newcommand{\FEXTr}{F^{\tEXT}_{r}\!}
\newcommand{\FINTt}{F^{\tINT}_{t}\!}
\newcommand{\FEXTt}{F^{\tEXT}_{t}\!}
\newcommand{\FINTR}{F^{\tINT}_{R}\!}
\newcommand{\leaf}{\ell}
\newcommand{\ETAPM}{\eta_{\pm}^{\Delta}}
\newcommand{\QHAT}{\widehat{Q}_{0}}
\newcommand{\QUAD}[1]{\quad\text{#1}\quad}
\newcommand{\QQUAD}[1]{\qquad\text{#1}\qquad}
\newcommand{\metscale}{\Upsilon}
\newcommand{\FORANY}{\text{for any}}
\newcommand{\W}{\ell_{0}}
\newcommand{\realF}{F}
\newcommand{\compF}{\mathcal{F}}
\newcommand{\compA}{\mathcal{A}}
\newcommand{\EINg}[1]{\texttt{Ein}^{(#1)}}
\newcommand{\NABLAg}[1]{\nabla^{(#1)}}
\newcommand{\LAPg}[1]{\text{Lap}^{(#1)}}
\newcommand{\DIVg}[1]{\text{Div}^{(#1)}}
\newcommand{\TR}[1]{\text{Tr}^{(#1)}}
\newcommand{\RICg}[1]{\texttt{Ric}^{(#1)}}
\newcommand{\MANg}[1]{\M^{(#1)}}
\newcommand{\TRREV}[1]{\mu^{(#1)}}
\newcommand{\HESSg}[1]{\text{Hess}^{(#1)}}
\newcommand{\CVRR}[1]{ \mathcal{R}^{\g^{(#1)}} }
\newcommand{\h}{\texttt{h}}
\newcommand{\UP}{\mathcal{P}_{\mathcal{U}}}
\newcommand{\HMAX}{\mathcal{H}}
\newcommand{\taumax}{\tau_{\text{max}}}
\newcommand{\AR}{\mathcal{A}(\taumax)}
\newcommand{\proj}{\textrm{P}}
\newcommand{\PROJ}{\mathcal{P}}
\newcommand{\mbasis}[1]{\pmb{m}_{#1}}
\newcommand{\sLie}{\wh{\mathcal{L}}}
\newcommand{\hop}{\mathcal{H}}
\newcommand{\SSR}{\wh{\mathcal{S}}}
\newcommand{\gC}{\g_{C(\tau)}\!}
\newcommand{\gCES}{\g_{C(\tau)}^{\text{ES}}\!}
\newcommand{\gCs}{\g_{C(s)}\!}
\newcommand{\gCCART}{\g_{C(\tau)}^{\text{Cart}}\!}
\newcommand{\gCsCART}{\g_{C(s)}^{\text{Cart}}\!}
\newcommand{\gCsig}{\g_{C(\sigma)}\!}
\newcommand{\incfig}[2]{%
    \def\svgwidth{#1}
    \import{Figures/}{#2.pdf_tex}
	}
\newcommand{\INPUT}[1]{%
	\let\cleardoublepage\clearpage
	\newpage
	\pagestyle{plain}
	\input{#1} 
	}
\newcommand{\normvec}[1]{\frac{#1}{\norm{#1}}}
\newcommand{\TOp}{\mathcal{T}}
\newcommand{\CIF}{\chi}
\newcommand{\spatLie}{\mathscr{L}}
\newcommand{\spatHp}{\#_{\mbox{\scriptsize $V$}}^{\pp}}
\newcommand{\spatH}{\#_{\mbox{\scriptsize $V$}}}
\newcommand{\spatHZ}{\#_{\mbox{\scriptsize $Z$}}}
\newcommand{\spatHZp}{\#_{\mbox{\scriptsize $Z$}}^{\pp}}
\newcommand{\TWOSQMATRIX}[4]{	\begin{pmatrix*}[c]
									#1	&	#2	\\[0.1cm]
									#3	&	#4	
								\end{pmatrix*}					
								} % (2x2) matrix
\newcommand{\THREESQMATRIX}[9]{	\begin{pmatrix*}[c]
									#1	&	#2	&	#3	\\[0.1cm]
									#4	&	#5	&	#6	\\[0.1cm]
									#7	&	#8	&	#9	
								\end{pmatrix*}					
								} % (3x3) matrix
																
\newcommand{\TWOONEMATRIX}[2]{	\begin{pmatrix*}[c]
									#1	\\[0.1cm]
									#2	
								\end{pmatrix*}					
								} % (2x1) matrix
\newcommand{\THREEONEMATRIX}[3]{	\begin{pmatrix*}[c]
										#1	\\[0.1cm]
										#2	\\[0.1cm]
										#3		
									\end{pmatrix*}					
									} % (3x1) matrix
\newcommand{\FOURONEMATRIX}[4]{	\begin{pmatrix*}[c]
									#1	\\[0.1cm]
									#2	\\[0.1cm]
									#3	\\[0.1cm]
									#4	
								\end{pmatrix*}					
								} % (4x1) matrix

%%%%%%%%%%%%%%%%%%%%%%
%%%% ENVIRONMENTS %%%%
%%%%%%%%%%%%%%%%%%%%%%
\makeatletter
\mdfsetup{skipabove=0.3cm,skipbelow=0.4cm}

\newcounter{propcounter}
\numberwithin{propcounter}{chapter}
\setcounter{propcounter}{0}

\newenvironment{todo}
    {	\vspace{-0.6cm}
    	\def\FrameCommand
        {%
    		{\color{red!70!black}\vrule width 1em}%
            \hspace{-0.5em}%
    		\setlength{\fboxrule}{1.6pt}
            \fboxsep=\FrameSep\fcolorbox{red!70!black}{white}%
        }%
    	\MakeFramed{\hsize\hsize\advance\hsize-\width\FrameRestore}%
    	{\color{red!60!black}\large\underline{\textsc{To do}}}:
    	\begin{TODO}
    }
    {	\end{TODO}
		\vspace{-0.2cm}
        \endMakeFramed	%
    }
%%%
\newenvironment{prop}[1]{
	\refstepcounter{propcounter}
	\def\@currentlabel{\thechapter--\arabic{propcounter}}
    \def\FrameCommand
    {%
        {\color{black}\vrule width 0.3em}%
        \hspace{0.em}%
		\fboxsep=\FrameSep\colorbox{white!93!black}%
    }%
    \MakeFramed{\hsize\hsize\advance\hsize-\width\FrameRestore}%
	\ifstrempty{#1}{%
					{\bf Proposition\;\@currentlabel} \\[0.2cm] }{%
					{\bf Proposition\;\@currentlabel} \; (#1) \\[0.2cm] }
	}
	{%
		\endMakeFramed
	}
%%%
\newenvironment{defn}{
		\def\FrameCommand
		{%
			{\color{black}\vrule width 0.4em}%
			\hspace{0.em}%
			\fboxsep=\FrameSep\colorbox{white!93!black}%
		}%
		\MakeFramed{\hsize\hsize\advance\hsize-\width\FrameRestore}%
		{\bf Definition} \\[0.2cm] 
		}
	{%
		\endMakeFramed
	}
%%%
\newenvironment{DEFN}[1]{%
    \def\FrameCommand
    {%
        {\color{black}\vrule width 0.4em}%
        \hspace{0.em}%
		\fboxsep=\FrameSep\colorbox{white!93!black}%
    }%
    \MakeFramed{\hsize\hsize\advance\hsize-\width\FrameRestore}%
	\ifstrempty{#1}{%
					{\bf Definition} \\[0.2cm] }{%
					{\bf Definition} \; (#1) \\[0.2cm] }
	}
	{%
		\endMakeFramed
	}
%%%
\newenvironment{example}{
		\def\FrameCommand
		{%
			{\color{black}\vrule width 0.4em}%
			\hspace{0.em}%
			\fboxsep=\FrameSep\colorbox{white!93!black}%
		}%
		\MakeFramed{\hsize\hsize\advance\hsize-\width\FrameRestore}%
		{\bf Example} \\[0.2cm] 
		}
	{%
		\endMakeFramed
	}
%%%
\newenvironment{exampledef}{
		\def\FrameCommand
		{%
			{\color{black}\vrule width 0.4em}%
			\hspace{0.em}%
			\fboxsep=\FrameSep\colorbox{white!93!black}%
		}%
		\MakeFramed{\hsize\hsize\advance\hsize-\width\FrameRestore}%
		{\bf Example and Definition} \\[0.2cm] 
		}
	{%
		\endMakeFramed
	}
%%%
\renewenvironment{proof}
	{	\vspace{-0.4cm}
		\mdfsetup{	innertopmargin=5pt,linecolor=black,
					linewidth=1.2pt,topline=true,
					backgroundcolor=white, roundcorner=0pt,
					frametitleaboveskip=\dimexpr-\ht\strutbox\relax
					}
		\begin{mdframed}[]\relax%
		{\bf Proof:}
	}
	{	\qed%
		\vspace{0.1cm}\end{mdframed}
		%\endMakeFramed	%
		\vspace{0.3cm}
	}

\makeatother

%%%%%%%%%%%%%%%%%%%%%%%%%
%%% TABLE OF CONTENTS %%%
%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\TABLEOFCONTENTS{
	\pagestyle{plain}
	\newpage
	\setcounter{page}{1} 
	\pagenumbering{roman}
	\pdfbookmark[1]{Contents}{contents}
	\tableofcontents
	\newpage
	\setcounter{page}{1} 
	\pagenumbering{arabic}
}

%%%%%%%%%%%%%%%%%%%%
%%%% Page Style %%%%
%%%%%%%%%%%%%%%%%%%%	
\setlength{\parindent}{0cm}
\addtolength{\textheight}{1cm}
\RequirePackage[autooneside=false,automark,headsepline]{scrlayer-scrpage}
	\setkomafont{section}{\Large\rmfamily\bfseries}
	\setkomafont{subsection}{\large\rmfamily\bfseries}
	\RedeclareSectionCommand[   afterskip=0.2cm,
	                            beforeskip=1cm]{section}

	\clearpairofpagestyles
	\ihead{\leftmark}
	\ohead{\ifstr{\leftmark}{\rightmark}{}{\rightmark}}
	\addtokomafont{pagehead}{\rm\upshape}
	\cfoot*{\thepage}
	\addtokomafont{pagefoot}{\upshape}
	\makeatletter
		\newcommand*\addsubsec{\secdef\@addsubsec\@saddsubsec}
		\newcommand*{\@addsubsec}{}
		\def\@addsubsec[#1]#2{\subsection*{#2}\addcontentsline{toc}{subsection}{#1}
			\if@twoside\ifx\@mkboth\markboth\markright{#1}\fi\fi
		}
		\newcommand*{\@saddsubsec}[1]{\subsection*{#1}\@mkboth{}{}}
	\makeatother

%%%%%%%%%%%%%%%%%%%%
%%%% TITLE PAGE %%%%
%%%%%%%%%%%%%%%%%%%%
\makeatletter
	\newcommand\MAKETITLE{%
		\textcolor{white}{%
			\pagestyle{empty}
			\quad\vspace{2cm}
			\subtitlecheck
			\begin{center}
				\parbox{16cm}{\flushleft%
					{\huge \bf\@title } \\[0.3cm]
					\ifsubtitle
						{\Large \bf\e@subtitle} \\[1cm]
					\fi
					{\large \@author} \\[1.5cm]
					$\left[\df\right.$%
						{\small\underline{\expandafter\path\expandafter{\currfilename}} \;version: \today\;\text{at}\;\currenttime }%
						$\left.\df\right]$ \\[3cm]
						}
					\parbox{2cm}{\;}\includegraphics[width=10cm]{Figures/ENERGY.jpg}
			\end{center} 
			\vspace{0.4cm}
			\pagecolor{black}\afterpage{\nopagecolor}
			\newpage
			}
		}

	\renewcommand\maketitle{%
			\pagestyle{empty}
			\quad\vspace{2cm}
			\subtitlecheck
			\begin{center}
				\parbox{14cm}{\flushleft%
					{\huge \bf\@title } \\[0.3cm]
					\ifsubtitle
						{\Large \bf\e@subtitle} \\[1cm]
					\fi
					{\large \@author} \\[0.5cm]
					{\normalsize	\e@affiliation}\\[1.5cm]
					$\left[\df\right.$%
						{\normalsize\underline{\expandafter\path\expandafter{\currfilename}} \;version: \today\;\text{at}\;\currenttime }%
						$\left.\df\right]$ 
						}
			\end{center} 
			\vspace{0.4cm}
			\newpage
		}
\makeatother

%%%%%%%%%%%%%%%%%%%%
%%% BIBLIOGRAPHY %%%
%%%%%%%%%%%%%%%%%%%%
\newcommand{\BIBLIOGRAPHY}[2]{%
	%\newpage\mbox{}
	\renewcommand{\bibname}{References}
	\bibliographystyle{#1}
	\bibliography{#2}
	}
\WithSuffix\newcommand\BIBLIOGRAPHY*[2]{\nocite{*}\BIBLIOGRAPHY{#1}{#2}}



