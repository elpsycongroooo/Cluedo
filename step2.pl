/* definition des predicats de base */
/* house(place, color, nationality, smoke, drink, animal) */

a_droite(X, Y) :- (Z is Y + 1), Z is X.
a_cote_de(N, M) :- a_droite(N, M).
a_cote_de(N, M) :- a_droite(M, N).
enigme(Problem) :-
Problem = 
[
	house(1, Color1, Nation1, Smoke1, Drinks1, Pet1),
	house(2, Color2, Nation2, Smoke2, Drinks2, Pet2),
	house(3, Color3, Nation3, Smoke3, Drinks3, Pet3),
	house(4, Color4, Nation4, Smoke4, Drinks4, Pet4),
	house(5, Color5, Nation5, Smoke5, Drinks5, Pet5)
],
member(house(_, rouge, anglais, _, _, _), Problem),
member(house(_, _, suedois, _, _, chiens), Problem),
member(house(_, _, danois, _, the, _), Problem),
member(house(M, verte, _, _, cafe, _), Problem),
member(house(N, blanche, _, _, _, _), Problem),
a_droite(N, M),
member(house(_, _, _, pallmall, _, oiseaux), Problem),
member(house(_, jaune, _, dunhill, _, _), Problem),
member(house(3, _, _, _, lait, _), Problem),
member(house(1, _, norvegien, _, _, _), Problem),
member(house(E, bleu, _, _, _, _), Problem),
a_cote_de(1, E),
member(house(R, _, _, blend, _, _), Problem),
member(house(Q, _, _, _, _, chats), Problem),
member(house(P, _, _, _, eau, _), Problem),
a_cote_de(R, Q),
a_cote_de(R, P),
member(house(L, _, _, _, _, cheval), Problem),
member(house(O, _, _, dunhill, _, _), Problem),
a_cote_de(L, O),
member(house(_, _, _, bluemaster, biere, _), Problem),
member(house(_, _, allemand, prince, _, _), Problem),
member(house(_, _, _, _, _, poisson), Problem).
