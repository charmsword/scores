%-------------------------HEADER {{{
\version "2.18.2"
\header {
  tagline = ""  % removed
% title = "Main Title"
% subtitle = "музыка из кинофильма «Вечное сияние чистого разума» (2004)"
% composer = "Jon Brion"
}
% \include "lilypond-book-preamble.ly"
%-------------------------}}}

global = {
\key c \minor
  \time 4/4
}

#(set-global-staff-size 17)
\paper {
  % between-system-space = 10\mm % does nothing?
  % between-system-padding = #1 % does nothing?
        %system-count = #4
  % ragged-bottom = ##t
  % ragged-last-bottom = ##t
  % bottom-margin=0\mm
  % top-margin=0\mm
  % paper-height=310\mm
}

arpaC = \relative c'' { \repeat percent 4 { c16 es g c } }
arpaDes = \relative c'' { \repeat percent 4 { des16 f g b } }

%%-------------------------I часть {{{
%\parallelMusic #'(
%voiceA 
%voiceB 
%)
%
%{
%  	%--------------------bar1 
%	\time 4/4
%	\arpaC |
%	r1 |
%	%--------------------bar2  
%
%	\arpaC |
%	r1 |
%	%--------------------bar3 
%
%	\arpaC |
%	c16( g8.) c16( g8.) c16( g8.) c16( g8.) |
%	%--------------------bar4 
%
%	\arpaDes |
%	des'16( as8.) des16( as8.) des16( as8.) des16( as8.)|
%	%--------------------bar5 
%
%	\arpaC |
%	c16( g8.) c16( g8.) c16( g8.) c16( g8.) |
%	%--------------------bar6 
%
%	\arpaDes |
%	des'16( as8.) des16( as8.) des16( as8.) des,16.( es32 f g as a |
%	%--------------------bar7 
%
%	\repeat percent 4 { bes16 es g bes  } |
%	bes2.( c4 |
%	%--------------------bar8 
%
%	\repeat percent 4 { c,16 es f a } |
%	a2) f4( g |
%	%--------------------bar9 
%
%	\repeat percent 4 { des,16 es f as } |
%	as4..-- g32 f es4 f) |
%}
%-------------------------}}} 
%------------------------- II часть {{{
\parallelMusic #'(
voiceAa
voiceBb
voiceCc
)

{
	%--------------------bar10 

	\partial 4
	b16^"арфа" es f g  |
	r4 |
	\clef "bass" r16 f-._"низкие духовые" es-. d-. |
	%--------------------bar11 

	\arpaC |
	r8^"гобой" c( d es as4. g8) |
	c16-. d-. es-. f-. g8-. r4. r16 g-. f-. es-. | 
	%--------------------bar12 

	\arpaDes |
	g4..( as32 g f4 bes) |
	des16-. es-. f-. g-. as8-. r4. r16 f-. es-. d-. |
	%--------------------bar13 

	b32(^"флейта; фигурации арфы продолжаются" bes a as g fis f e  es32 d des c ces bes a as) r2 |
	r4 fis8( g d' b c g~) |
	c16-. d-. es-. f-. g8-. r4. r16 es-. g(\glissando es) | 
	%--------------------bar14 

	as'32( g fis f e es d des  c32 ces bes a as g fis f) r2 |
	g8.( as32 g f4 es ces |
	des16-. es-. f-. g-. as8-. r8 r16 as-. c\glissando as c\glissando as c\glissando as |
	%--------------------bar15 
%
%	bes2.)( c8. b32 bes |
%	%--------------------bar16 
%
%	a2) f4 g |
%	%--------------------bar17 
%
%	as2 es4 f |
}

%-------------------------}}}
%-------------------------CONTEXT {{{
\layout { 
% ragged-right = ##f 
\context {
\RemoveEmptyStaffContext
}
%    \Score
%    defaultBarType = ""
}
%-------------------------}}} 
%-------------------------STAVES {{{
\new StaffGroup <<
\new Staff
<<
  \global
 \relative c'' {  \voiceAa }
 >>
\new Staff
<<
  \global
 \relative c'' {  \voiceBb }
 >>
\new Staff
<<
  \global
 \relative c { \voiceCc }
 >>
 >>
%-------------------------}}}
