%5 casas-> S = [[numero_casa,propietario,num_hijos],[...],[...],[...],[...]]

derecha(X,Y,[Y,X|T]).
derecha(X,Y,[H|T]):-derecha(X,Y,T).

izquierda(X,Y,[X,Y|T]).
izquierda(X,Y,[H|T]):-izquierda(X,Y,T).

familias(Solucion):-Solucion = [[N1,P1,H1],[N2,P2,H2],[N3,P3,[lucia,paula]],[N4,P4,[lola,paco,luis,maria,lucia,paula]],[N5,P5,[daniel]]],

member([_,antonio,_],Solucion),
member([_,alberto,_],Solucion),
member([_,pepe,_],Solucion),
member([_,eduardo,_],Solucion),
member([_,pablo,_],Solucion),

(H1 = [lola,paco,luis,maria]),
lista_invertida(H1,H2),

%izquierda([_,eduardo,_],[_,pablo,_],Solucion),

P5 = alberto,

derecha([_,pablo,_],[_,antonio,_],Solucion),
derecha([_,antonio,_],[_,eduardo,_],Solucion),
derecha([_,pepe,_],[_,pablo,_],Solucion),

N1 = 1,
N2 = 2,
N3 is (N1+N2),
N4 is (N2+N3),
N5 is (N3+N4).

%Lista invertida
lista_invertida([],[]).
lista_invertida([H|T],L):- lista_invertida(T,X), concat(X,[H],L).

concat([],L,L).
concat([Z|L1],L2,[Z|L3]):- concat(L1,L2,L3). 

%La solucion que me da el script es la siguiente:
%S = [[1, eduardo, [lola, paco, luis, maria]], [2, antonio, [maria, luis, paco, lola]], [3, pablo, [lucia, paula]], [5, pepe, [lola, paco, luis, maria, lucia, paula]], [8, alberto, [daniel]]] 