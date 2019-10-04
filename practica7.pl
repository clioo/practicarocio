padece('Pedro','Gripe').
padece('Pedro','Hpatitis').
padece('Juan','Gripe').
padece('María','Gripe').
padece('Carlos','Intoxicación').
sintomaDe('Fiebre','Gripe').
sintomaDe('Cansancio','Hepatitis').
sintomaDe('Diarrea','Intoxicación').
sintomaDe('Cansancio','Gripe').
suprime('Aspirina','Fiebre').
suprime('Lotomil','Diarrea').

%A alivia a B si la enfermedad tiene un síntoma que sea suprimido por el fármaco.
alivia(A,B) :-
sintomaDe(C,B),suprime(D,C).

%A debe tomar B si padece una enfermedad que sea aliviada por el fármaco.
debeTomar(A,B) :-
padece(A,C), alivia(D,C).

%1) ¿Podemos conocer qué dolencia tiene Pedro? ¿Y María?
% padece('Pedro',X); padece('María',X).
%2) ¿Quién padece gripe?
% padece(X,'Gripe').
%3) ¿Qué síntomas tiene Pedro?
% padece('Pedro', ENFERMEDAD), sintomaDe(SINTOMA,ENFERMEDAD).
%4) ¿Quién padece diarrea?
% padece(PERSONA,ENFERMEDAD), sintomaDe('Diarrea',ENFERMEDAD).
%5) ¿Y quién está cansado?
%padece(PERSONA,ENFERMEDAD), sintomaDe('Cansancio',ENFERMEDAD).
%6) ¿Hay algún fármaco que alivie a Pedro?
% padece('Pedro',ENFERMEDAD), alivia(FARMACO, ENFERMEDAD).
%7) ¿Hay algún síntoma que compartan Juan y María?
% padece('Juan',ENFERMEDAD), padece('María',ENFERMEDAD) , sintomaDe(SINTOMA,ENFERMEDAD).

