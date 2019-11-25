Domains
    list = integer*.

Predicates
    quicksort(list,list).
    split(integer,list,list,list).
    concatenate(list,list,list).
    printlist(list).

Clauses
    quicksort([],[]).
    quicksort([Head|Tail],SortedList) :-
        split(Head,Tail,SList,BList),
        quicksort(SList,SList1),
        quicksort(BList,BList1),
        concatenate(SList1,[Head|Blist1],SortedList),
        printlist(SortedList).

    split(_,[],[],[]).
    split(Item,[Head1|Tail1],[Head1|SList],BList) :-
        Item > Head1 , ! ,
        split(Item,Tail1,SList,BList).
    split(Item,[Head1|Tail1],SList,[Head1|BList]) :-
        split(Item,Tail1,SList,BList).

    concatenate([],List,List).
    concatenate([Item|List1],List2,[Item|List3]) :-
        concatenate(List1,List2,List3).

    printlist([]) :- nl.
    printlist([Head|Tail]) :-
        write(Head,\" \"),
        printlist(Tail).

Output

Goal: quicksort([2,4,1,3,5,9,6],L).

1
3
6
6 9
5 6 9
3 4 5 6 9
1 2 3 4 5 6 9
L=[1,2,3,4,5,6,9]
1 Solution
