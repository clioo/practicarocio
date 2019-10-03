%%
%% declaraciones
%%
padrede('Juan', 'María'). % Juan es padre de María
padrede('Pablo', 'Juan'). % Pablo es padre de Juan
padrede('Pablo', 'Marcela'). % Pablo es padre de Marcela
padrede('Carlos', 'Débora'). % Carlos es padre de Débora
madreDe('Marcela','Laura'). %Marcela es madre de laura
madreDe('Laura','Luna'). %Laura es madre de Luna
madreDe('Juana','María'). %Juana es madre de María
esMujer('Marcela').
esMujer('Débora').
esMujer('María').
esMujer('Luna').
esMujer('Laura').
esHombre('Pablo').
esHombre('Juan').
esHombre('Carlos').

%or = ; and = ,

%A es progenitor de B
progenitorDe(A,B) :-
padrede(A,B);
madreDe(A,B).

% A es hijo de B si B es padre de A y A es hombre
hijode(A,B) :- 
padrede(B,A);
madreDe(B,A),
esHombre(A).

%A es hija de B si B es madre de A
hijaDe(A,B) :- 
padrede(B,A);
madreDe(B,A),
esMujer(A).


% A es abuelo de B si A es padre de C y C es padre B, C también puede ser madre
abuelode(A,B) :- 
progenitorDe(A,C), 
progenitorDe(C,B),
esHombre(A).

% A es abuela de B si A es padre de C y C es padre B, C también puede ser madre
abuelaDe(A,B) :- 
progenitorDe(A,C), 
progenitorDe(C,B),
esMujer(A).

%A es descendiente de B si A es hijo o hija de B
descendienteDe(A,B) :-
hijaDe(A,B);
hijode(A,B).

%A es antepasado de B si es Abuela o Abuelo, Padre o Madre
antepasadoDe(A,B) :-
progenitorDe(A,B);
abuelode(A,B);
abuelaDe(A,B).

% A es Hermana de B si comparten progenitor
hermanaDe(A,B) :- 
progenitorDe(C,A),
progenitorDe(C,B),
A \== B,
esMujer(A).    

% A es hermano de B si comparten padre o madre
hermanoDe(A,B) :-
progenitorDe(C,A),
progenitorDe(C,B),
A \== B,
esHombre(A).    

%A es tío de B si el progenitor de B es hermano o hermana de A
tioDe(A,B) :-
progenitorDe(C,B),
hermanoDe(A,C).

%A es tía de B si el progenitor de B es hermano o hermana de A
tiaDe(A,B) :-
progenitorDe(C,B),
hermanaDe(A,C).

% A y B son familiares si A es progenitor, antepasado, descendiente, tío o tía
familiarde(A,B) :- 
progenitorDe(A,B);
antepasadoDe(A,B);
descendienteDe(A,B);
tioDe(A,B);
tiaDe(A,B);
progenitorDe(B,A);
antepasadoDe(B,A);
descendienteDe(B,A);
tioDe(B,A);
tiaDe(B,A).

%Consultas
%De quien es padre ____?
% padrede(abraham,X).
%
%Quienes son hermanos de quien? y �hermanas?
%hermanoDe(X,Y).
%hermanaDe(X,Y).
%
%�Quien es abuelo de quien? y �abuela?
%
%abuelode(X,Y).
%abuelaDe(X,Y).
%
%�Quienes son tios de quien? y �tias?
%tioDe(X,Y).
%tiaDe(X,Y).
%
%�Quienes son antepasados de ____?
%antepasadoDe(X,abraham).
%
%�Quienes son los descendientes de ____?
%descendienteDe(X,juan).
