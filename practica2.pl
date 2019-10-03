%2 divide a 6
divideA(2,6).
%2 divide a 12
divideA(2,12).
%3 divide a 6
divideA(3,6).
%3 divide a 12
divideA(3,12).
%" Si un número es divisible por 2 y por 3 entonces es divisible por 6 y es diferente a 6
divideA(6,A) :-
divideA(2,A) , divideA(3,A), A \== 6.

%Consultas
%�Existe algun multiplo de 2?
% divideA(2,X).
%
%�Cuales son los divisores de 6?
% divideA(X,6).
%
%�Conocemos algun multiplo de 6?
% divideA(6,X).