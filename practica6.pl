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

%
raptan