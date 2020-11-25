% PREGUNTA 10
% a) Dadas dos listas, Candidatos, Vetados, escriba una secuencia de
% metas (usando member y not) que
% a través de backtracking encuentre todos los items de Candidatos que no
% están en Vetados.


% b) Defina la relación de diferencia de conjuntos dif(C1, C2, D) que es
% verdadera si D = C1- C2.


% eliminar(E,L).
%eliminar(_, []).
eliminar(H, [H|T], T).
eliminar(E, [H|T], [H|T1]):- eliminar(E, T, T1), !.

%  dif(C1, C2, D)
%dif([],[],[]).
%dif(L,[],L).
%dif([H|T],[H],T).
%dif(C1, [H1|T2], D):-
%    dif(C1, T2, D).

% dif([1,2,3,4],[3,4], X).
% X = [1,2].
