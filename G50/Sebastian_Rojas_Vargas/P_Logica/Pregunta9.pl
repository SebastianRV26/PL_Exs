% PREGUNTA 9
%  a) Defina la relaci�n max(X, Y, Max) que es verdadera si Max es el
% n�mero m�s grande entre X e Y.
max(0, 1, 1).
max(X, Y, Max) :- Y=Max, Max>X.

% b) Defina el predicado maxlist(L, Max) que es verdadero si Max es el
% elemento mayor en la lista L.
% maxlist(L, Max).
% S� devuelve true para el m�ximo pero cuando Max no se conoce da error.

maxlist([], _).
maxlist([H|T], Max):-
    Max=<H, maxlist(T,H).
maxlist([H|T], Max):-
    Max>H, maxlist(T,Max).


% c) Defina sumlist(L, S) que es verdadero si S es la suma de los
% elementos de L.
sumlistAux([],0,0).
sumlistAux([], S, S).
sumlistAux([H|T],S, N):- N2 is N+H, sumlistAux(T,S,N2).

sumlist(L, S):- sumlistAux(L,S,0).

% d) �Qu� pasa en la subpregunta anterior si la lista no contiene puros
% n�meros?
% R/ Da error

% e) Defina un predicado ordenado(L) si la lista de n�meros L est�
% ordenada en forma ascendente.

ordenadoAux([],_).
ordenadoAux([H|T],E):- H>=E, ordenadoAux(T,H).

ordenado([H|T]):-ordenadoAux(T, H).











