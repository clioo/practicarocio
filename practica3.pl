esAlumno('Maria').
esAlumno('Alfredo').
esAlumno('Tomas').
esAlumno('Susana').
esAlumno('Juan').
leelibro('Alfredo').
leelibro('Maria').
siempreAsiste('Alfredo').
siempreAsiste('Maria').
realizaEjercicios('Alfredo').
realizaEjercicios('Maria').
sabeTodo('Tomas').
tutorde('Maria','Juan').
tutorde('Juan','Susana').
primerParcial('Maria',10).
primerParcial('Alfredo',10).
primerParcial('Tomas',10).
primerParcial('Susana',5).
primerParcial('Juan',7).
segundoParcial('Maria',10).
segundoParcial('Alfredo',7).
segundoParcial('Tomas',10).
segundoParcial('Susana',6).
segundoParcial('Juan',9).

estaPreparado(A) :-
siempreAsiste(A) , realizaEjercicios(A) , leelibro(A).

estaPreparado(A) :-
estaPreparado(B) , tutorde(B,A).

esAprobatorio(A) :- estaPreparado(A).

%El promedio de A es B si tiene primer parcial y segundo y B se calcula (p1+p2)/2
promedio(A,B) :-
primerParcial(A,P1), segundoParcial(A,P2), B is (P1+P2)/2.

esExento(A) :-
promedio(A,10), siempreAsiste(A).

% Consultas
%1. ¿Quiénes están preparados para el examen?
% estaPreparado(X).
%2.	¿Quién está exento?
% esExento(X).
%3.	¿Quién aprueba el examen?
% esAprobatorio(X).
%4.	¿Aprueba el examen Juan?
% esAprobatorio('Juan').
%5.	¿Está Susana preparada para el examen?
% estaPreparado('Susana').
%6.	¿Quién es el sabio del grupo?
% sabeTodo(X).
%7.	¿Qué alumnos tienen promedio  de 8?
% promedio(X,8).
%8.	¿Cuál es el promedio que tiene Susana?
% promedio('Susana',X).
