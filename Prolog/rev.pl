domains

    list=symbol*


predicates

    rev(list)
    findrev(list,list,list)


clauses

    rev(L):-
        findrev(L,[],List2),
        write(\"\\nReverse Of Given List : \",List2).

    findrev([],List1,List1).

    findrev([X|Tail],List1,List2):-
        findrev(Tail,[X|List1],List2).
