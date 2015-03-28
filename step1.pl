/* inclusion des predicats de base */
homme(H) :- H = marc; H = luc; H = jean; H = jules; H = leon; H = loic; H = gerard; H = jacques; H = herve; H = paul.
femme(F) :- F = anne; F = betty; F = lisa; F = sylvie; F = eve; F = julie; F = valerie.
mari_de(marc, anne).
mari_de(luc, betty).
mari_de(jules, lisa).
mari_de(leon, sylvie).
mari_de(loic, eve).
mari_de(paul, julie).
enfant_de(marc, jean).
enfant_de(marc, jules).
enfant_de(marc, leon).
enfant_de(luc, lisa).
enfant_de(luc, loic).
enfant_de(luc, gerard).
enfant_de(jules, jacques).
enfant_de(leon, herve).
enfant_de(leon, julie).
enfant_de(loic, paul).
enfant_de(loic, valerie).
enfant_de(X, Y) :- femme_de(X, M), enfant_de(M, Y).
femme_de(X, Y) :- mari_de(Y, X).
beaupere_de(X, Y) :- mari_de(Y, J), enfant_de(X, J), homme(X).
bellemere_de(X, Y) :- femme_de(Y, J), enfant_de(X, J), femme(X).
