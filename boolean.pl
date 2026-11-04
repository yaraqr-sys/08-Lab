and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

neg(true, false).
neg(false, true).

logicGate(A, B, O) :-
    neg(A, X),
    neg(B, Y),
    and(A, B, I1),
    and(X, Y, I2),
    or(I1, I2, O).

