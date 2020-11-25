:- dynamic madre/2.

femenino(petra).
femenino(carmen).
femenino(maria).
femenino(rosa).
femenino(ana).
femenino(cande).
madre(petra, juan).
madre(petra, rosa).
madre(carmen, pedro).
madre(maria, ana).
madre(maria, enrique).
madre(rosa, raul).
madre(rosa, alfonso).
madre(rosa, cande).
masculino(angel).
masculino(pepe).
masculino(juan).
masculino(pedro).
masculino(enrique).
masculino(raul).
masculino(alfonso).
padre(angel, juan).
padre(angel, rosa).
padre(pepe, pedro).
padre(juan, ana).
padre(juan, enrique).
padre(pedro, raul).
padre(pedro, alfonso).
padre(pedro, cande).

progenitor(X, Y) :- padre(X, Y).
progenitor(X, Y) :- madre(X, Y).

abuelo(X, Y) :- padre(X, Z), progenitor(Z, Y).
abuela(X, Y) :- madre(X, Z), progenitor(Z, Y).


hermano(X,Y) :-
progenitor(Z,X),
progenitor(Z,Y),
X\=Y.

% PREGUNTA 2
% a) Traduzca a Prolog las siguientes sentencias:
% � Todo quien tiene un ni�o es feliz (introduzca una relaci�n de un
% argumento feliz)
feliz(X):- progenitor(X, _).

% � Para todo X, si X tiene un ni�o que tiene una hermana, entonces X
% tiene dos ni�os (introduzca una
% nueva relaci�n de un argumento tienedosni�os)
tienedosni�os(X):-
    progenitor(X,Y),
    progenitor(X,Z),
    hermano(Y,Z),!.


% b) Defina la relaci�n nieto usando la relaci�n padre de la pregunta anterior.


hermana(X,Y) :-
progenitor(Z,X),
progenitor(Z,Y),
X\=Y,
femenino(X),!.

% c) Defina la relaci�n tia(X, Y) en t�rmino de padre y hermana.
tia(X, Y):- hermana(X,Z), padre(Z,Y). % no se si funciona















