childnode(a,b). childnode(a,c). childnode(c,d). childnode(c,e).
path(A,B,[A|L]):-
child(A,B,L).
child(A,B,[B|[]):-
childnode(A,B),!.
child(A,B,[X|L1]):- childnode(A,X), child(X,B,L1).



OUTPUT:
 Goal : path(a,e,L)
 L= [“a”,”c”,”e”]
