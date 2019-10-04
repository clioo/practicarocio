esRufian('Bertoldo').
esRufian('Bartolo').
esNoble('Romeo').
esNoble('Bertoldo').
esPlebeyo('Bartolo').
esDama('Gertrudis').
esDama('Julieta').
esHermosa('Julieta').

%X desea a Y si es plebeyo
deseaPlebeyo(X,Y) :- 
esDama(Y), esPlebeyo(X).

%X desea a Y si X es noble y Y es hermosa
deseaNoble(X,Y) :-
esDama(Y), esNoble(X), esHermosa(Y).

%X rapta a Y
raptanPersonas(X,Y) :-
esRufian(X), (esRufian(Y); esNoble(Y); esPlebeyo(Y);esDama(Y)), X \== Y.

% 1) ¿Qué noble es un rufián?
% esNoble(X), esRufian(X).
% 2) ¿Quién es susceptible de ser raptada por Romeo?
%  raptanPersonas('Romeo',X).
% 3) ¿Quién puede raptar a Julieta?
% raptanPersonas(X,'Julieta').
% 4) ¿Quién rapta a quién?
% raptanPersonas(X, Y).
% 5) ¿A quién desea Bartolo? 
% deseaPlebeyo('Bartolo',X).
% 6) ¿A quién desea Romeo?
% deseaNoble('Romeo',Y).
% 7) ¿Cuál hermosa dama es deseada por Bartolo?
% deseaPlebeyo('Bartolo',Y), esHermosa(Y).
