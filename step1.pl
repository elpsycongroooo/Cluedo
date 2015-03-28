/* inclusion des predicats de base */
homme(H) :- H = marc; H = luc; H = jean; H = jules; H = leon; H = loic; H = gerard; H = jacques; H = herve; H = paul.
femme(F) :- F = anne; F = betty; F = lisa; F = sylvie; F = eve; F = julie; F = valerie.
mari_de(marc, anne).
mari_de(luc, betty).
mari_de(jules, lisa).
mari_de(leon, sylvie).
mari_de(loic, eve).
mari_de(paul, julie).
enfant_de(jean, marc).
enfant_de(jules, marc).
enfant_de(leon, marc).
enfant_de(lisa, luc).
enfant_de(loic, luc).
enfant_de(gerard, luc).
enfant_de(jacques, jules).
enfant_de(herve, leon).
enfant_de(julie, leon).
enfant_de(paul, loic).
enfant_de(valerie, loic).

/* definition des regles */
enfant_de(E, P) :- femme_de(P, M), enfant_de(E, M).
femme_de(F, M) :- mari_de(M, F).
beaupere_de(Bp, Bf) :- homme(Bp), homme(Bf), mari_de(Bf, J), enfant_de(J, Bp).
beaupere_de(Bp, Bf) :- homme(Bp), femme(Bf), femme_de(Bf, J), enfant_de(J, Bp).
bellemere_de(Bm, Bf) :- femme(Bm), femme(Bf), femme_de(Bf, J), enfant_de(J, Bm).
bellemere_de(Bm, Bf) :- femme(Bm), homme(Bf), mari_de(Bf, J), enfant_de(J, Bm).
ancetre_de(A, D) :- enfant_de(D, A).
ancetre_de(A, X) :- enfant_de(X, T), ancetre_de(A, T).
