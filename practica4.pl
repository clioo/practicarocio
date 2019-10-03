vende('La mejor','sandías'). %La mejor vende sandías
vende('La mejor','manzanas'). %La mejor vende sandías
vende('La mejor','melones'). %La mejor vende sandías
vende('La primera','cerezas'). %La primera vende cerezas
vende('La primera','manzanas'). %La primera vende manzanas
vende('La primera','naranjas'). %La primera vende naranjas
vende('La especial','moras'). %La especial vende moras
vende('La especial','naranjas'). %La especial vende naranjas
vende('La especial','melones'). %La especial vende naranjas
leGusta('Camila','manzanas').%A camila le gustan las manzanas
leGusta('Camila','cerezas').%A camila le gustan las cerezas
leGusta('Lucia','moras').%A Lucia le gustan las moras
leGusta('Lucia','melones').%A Lucia le gustan las melones
estaEn('La mejor','Bernal').%La mejor está en  Bernal
estaEn('La primera','Mataderos').%La mejor está en  Mataderos
estaEn('La especial','Mataderos').%La mejor está en  Mataderos
viveEn('Lucia','Bernal').%Lucia vive en Bernal
viveEn('Camila','Mataderos').%Camila vive en Mataderos
viveEn('Pedro','Mataderos').%Pedro vive en Mataderos

%X puede comprar fruta en un local en y si hay fruta que le gusta
puedeComprarFrutaEnLocal(X,Y) :-
    leGusta(X,Z), vende(Y,Z).

%El local X le puede ofrecer fruta a la persona Y si vende fruta que le gusta a la persona
puedeOfrecerFruta(X,Y,Z) :-
    leGusta(Y,Z),vende(X,Z).

%X puede ir caminando a Y si Y vende fruta que le gusta a X y  viven en el mismo lugar donde está Y
puedeIrCaminando(X,Y) :-
    viveEn(X,Z), estaEn(Y,Z).

%X puede ir a pie a Y si Y vende fruta que le gusta a X y  viven en el mismo lugar donde está Y
puedeIrAPieLeGusta(X,Y,Z) :-
    leGusta(X,Z), vende(Y,Z), viveEn(X,A), estaEn(Y,A).

%A dóne puede ir Camila a comprarse fruta?
%puedeComprarFrutaEnLocal('Camila',X).

%Quiénes pueden comprar fruta en "La mejor"?
%puedeComprarFrutaEnLocal(X,'La mejor').

%Qué fruta puede ofrecerle "La mejor" a "Camila"
%puedeOfrecerFruta('La mejor','Camila',X).

%4. ¿A dónde puede ir caminando Camila a comprarse fruta?
%puedeIrCaminando('Camila',X).

%5. ¿Quién puede ir caminando a comprar fruta a “La especial”?
%puedeIrCaminando(X,'La especial').

%6. ¿Qué frutas puede comprar Lucía yendo a pie?
%puedeIrAPieLeGusta('Lucia',X,Y).



