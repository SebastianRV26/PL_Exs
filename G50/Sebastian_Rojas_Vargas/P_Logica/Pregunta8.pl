% a) Defina dos predicados largopar(L) y largoimpar(L) que son verdaderos si los largos de la lista L
% son par o impar respectivamente.

largopar(L):-
    length(L,Len),
    0 is Len mod 2.

largoimpar(L):-
    not(largopar(L)).

% b) Defina la relación invertir(L, R) que es verdadera si R es la lista invertida de L.

invertir([],[]).
invertir([H|T],L):-
    invertir(T,S),
    append(S,[H],L).

% c) Defina palindrome(L) si la lista L es un palíndrome. Un palíndrome es una lsuta que al invertirla es
% la misma lista.
palindrome(L):-
   reverse(L,X),
   L = X.

%Miembro de una lista

miembro(N,[N|_]).
miembro(N,[_|Tail]):-
                    miembro(N,Tail), !.

% d) Defina la relación subconj(S, S1), donde S y S1 son listas representando conjuntos, que es verdadera si
% S1 es subconjunto de S.
subconj([], []).
subconj(S, [H1|_]):- miembro(H1,S), !.
subconj(S, [_|T1]):- subconj(S, T1) , !.
