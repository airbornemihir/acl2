(MERGE-DAG-INTO-DAG-QUICK
 (1020 1017 (:TYPE-PRESCRIPTION NATP-OF-TOP-NODENUM-WHEN-PSEUDO-DAGP))
 (952 952 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (520 260 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (260 260 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (240 224 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (222 222 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (208 208 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (208 208 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (190 2 (:REWRITE MAXELEM-SINGLETON-ALT))
 (124 4 (:REWRITE WEAK-DAGP-AUX-WHEN-PSEUDO-DAGP-AUX-2))
 (114 6 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
 (102 6 (:LINEAR LEN-OF-CDR-LINEAR))
 (100 18 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (96 12 (:REWRITE LEN-OF-NTH-WHEN-ALL-DARGP))
 (72 72 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-DIMENSIONS))
 (64 64 (:REWRITE DEFAULT-+-2))
 (64 64 (:REWRITE DEFAULT-+-1))
 (64 58 (:REWRITE DEFAULT-<-2))
 (60 60 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (58 58 (:REWRITE USE-ALL-<-2))
 (58 58 (:REWRITE USE-ALL-<))
 (58 58 (:REWRITE DEFAULT-<-1))
 (54 2 (:REWRITE CDR-OF-REVERSE-LIST))
 (48 2 (:REWRITE CONSP-OF-TAKE))
 (45 45 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (45 45 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (44 44 (:REWRITE USE-ALL-<=-2))
 (44 44 (:REWRITE USE-ALL-<=))
 (38 2 (:REWRITE TAKE-DOES-NOTHING))
 (32 32 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (30 30 (:REWRITE DEFAULT-CDR))
 (30 20 (:REWRITE STRIP-CARS-WHEN-NOT-CONSP-CHEAP))
 (24 24 (:TYPE-PRESCRIPTION ALL-DARGP))
 (24 12 (:REWRITE NTH-WHEN-ZP-CHEAP))
 (24 12 (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
 (24 6 (:REWRITE EQUAL-OF-+-WHEN-NEGATIVE-CONSTANT))
 (24 2 (:REWRITE ZP-OPEN))
 (22 2 (:REWRITE LEN-OF-TAKE))
 (20 20 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (20 4 (:REWRITE LEN-OF-STRIP-CARS))
 (20 2 (:DEFINITION NFIX))
 (19 19 (:REWRITE DEFAULT-CAR))
 (18 2 (:REWRITE MAXELEM-WHEN-NON-CONSP))
 (12 12 (:TYPE-PRESCRIPTION ZP))
 (12 12 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
 (12 12 (:REWRITE USE-ALL-CONSP-2))
 (12 12 (:REWRITE USE-ALL-CONSP))
 (12 12 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
 (12 12 (:REWRITE NTH-WHEN-NOT-CDDR))
 (12 12 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
 (12 12 (:REWRITE LEN-OF-NTH-WHEN-ALL-DARGP-LESS-THAN))
 (12 12 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP-CHEAP))
 (12 12 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
 (12 12 (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
 (12 6 (:TYPE-PRESCRIPTION NATP-OF-MAXELEM-OF-STRIP-CARS-WHEN-REV-DAGP))
 (12 6 (:TYPE-PRESCRIPTION NATP-OF-MAXELEM-2))
 (12 4 (:REWRITE DAG-VARIABLE-ALISTP-FORWARD-TO-ALIST))
 (8 8 (:TYPE-PRESCRIPTION PSEUDO-DAGP-AUX))
 (8 8 (:TYPE-PRESCRIPTION DAG-VARIABLE-ALISTP))
 (8 8 (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
 (8 8 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
 (8 8 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (8 4 (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (6 6 (:TYPE-PRESCRIPTION RATIONALP-OF-MAXELEM))
 (6 6 (:TYPE-PRESCRIPTION NAT-LISTP))
 (6 6 (:REWRITE WEAK-DAGP-WHEN-PSEUDO-DAGP-AUX))
 (6 6 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (6 6 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (6 6 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
 (6 6 (:REWRITE ALL-<-TRANSITIVE-FREE))
 (6 6 (:REWRITE ALL-<-TRANSITIVE))
 (4 4 (:REWRITE WEAK-DAGP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (4 4 (:REWRITE EQUAL-OF-+-COMBINE-CONSTANTS))
 (4 4 (:REWRITE ALISTP-WHEN-PSEUDO-DAGP-AUX))
 (4 4 (:REWRITE ALISTP-WHEN-BOUNDED-NATP-ALISTP))
 (4 1 (:TYPE-PRESCRIPTION TRUE-LISTP-OF-AREF1-WHEN-DAG-PARENT-ARRAYP))
 (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
 (2 2 (:REWRITE NOT-ALL-<-WHEN-MEMBERP))
 (2 2 (:REWRITE NOT-ALL-<-WHEN-MEMBER-EQUAL))
 (2 2 (:REWRITE BOUNDED-INTEGER-ALISTP-WHEN-PSEUDO-DAGP-AUX))
 (2 2 (:REWRITE BOUNDED-INTEGER-ALISTP-WHEN-BOUNDED-INTEGER-ALISTP))
 (2 2 (:DEFINITION FIX))
 (1 1 (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (1 1 (:TYPE-PRESCRIPTION DAG-PARENT-ARRAYP))
 (1 1 (:REWRITE BOUNDED-NATP-ALISTP-WHEN-PSEUDO-DAGP-AUX))
 (1 1 (:REWRITE BOUNDED-NATP-ALISTP-MONOTONE))
 (1 1 (:REWRITE <-OF-+-COMBINE-CONSTANTS-2))
 )
(TRUE-LISTP-OF-MV-NTH-2-OF-MERGE-DAG-INTO-DAG-QUICK
 (193 17 (:REWRITE DEFAULT-CAR))
 (55 26 (:REWRITE DEFAULT-<-2))
 (53 53 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (53 53 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (53 53 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (53 53 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (43 23 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (26 26 (:REWRITE USE-ALL-<-2))
 (26 26 (:REWRITE USE-ALL-<))
 (26 26 (:REWRITE DEFAULT-<-1))
 (26 26 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (26 5 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (25 25 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (24 24 (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
 (23 23 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (23 23 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (18 10 (:REWRITE DEFAULT-+-2))
 (16 10 (:REWRITE DEFAULT-+-1))
 (13 13 (:REWRITE USE-ALL-CONSP-2))
 (13 13 (:REWRITE USE-ALL-CONSP))
 (13 13 (:REWRITE USE-ALL-<=-2))
 (13 13 (:REWRITE USE-ALL-<=))
 (13 13 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (10 5 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (9 9 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (8 4 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-CHEAP))
 (6 3 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (5 5 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (5 5 (:TYPE-PRESCRIPTION ARRAY1P))
 (4 4 (:TYPE-PRESCRIPTION PSEUDO-DAGP))
 (4 4 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (3 3 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (3 3 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (3 3 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 )
(DARGP-LESS-THAN-OF-MV-NTH-1-OF-MERGE-DAG-INTO-DAG-QUICK
 (5945 140 (:REWRITE USE-ALL-NATP-FOR-CAR))
 (4989 57 (:DEFINITION NAT-LISTP))
 (3547 587 (:REWRITE DEFAULT-CAR))
 (3209 73 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
 (3107 78 (:REWRITE USE-ALL-<-FOR-CAR))
 (2545 73 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
 (2064 54 (:REWRITE ALL-<-OF-0-WHEN-NAT-LISTP))
 (887 75 (:REWRITE ALL-<-WHEN-NOT-CONSP))
 (842 421 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-CHEAP))
 (702 22 (:REWRITE NOT-<-OF-CAR-WHEN-ALL-<-2))
 (675 235 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (556 556 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (511 511 (:TYPE-PRESCRIPTION NAT-LISTP))
 (511 107 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (502 22 (:REWRITE USE-ALL-<=-FOR-CAR))
 (454 454 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (420 140 (:REWRITE NATP-OF-CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (409 259 (:REWRITE DEFAULT-<-2))
 (400 20 (:REWRITE ALL-<=-WHEN-NOT-CONSP))
 (374 374 (:TYPE-PRESCRIPTION NATP))
 (368 360 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (345 345 (:TYPE-PRESCRIPTION ALL-NATP))
 (339 54 (:REWRITE ALL-<-OF-0-WHEN-ALL-NATP))
 (318 318 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (294 294 (:REWRITE USE-ALL-CONSP-2))
 (294 294 (:REWRITE USE-ALL-CONSP))
 (273 270 (:REWRITE DEFAULT-+-2))
 (270 270 (:REWRITE DEFAULT-+-1))
 (259 259 (:REWRITE USE-ALL-<-2))
 (259 259 (:REWRITE USE-ALL-<))
 (259 259 (:REWRITE DEFAULT-<-1))
 (259 259 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (251 51 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (248 72 (:REWRITE DEFAULT-CDR))
 (220 110 (:REWRITE INTEGERP-OF-CAR-WHEN-NAT-LISTP-CHEAP))
 (220 110 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-NATP-CHEAP))
 (220 110 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-INTEGERP-CHEAP))
 (220 110 (:REWRITE INTEGERP-OF-CAR-OF-CAR-WHEN-WEAK-DAGP-CHEAP))
 (220 110 (:REWRITE INTEGERP-OF-CAR-OF-CAR-WHEN-WEAK-DAGP-AUX-CHEAP))
 (214 107 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (170 170 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (150 150 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (150 150 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (146 73 (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
 (140 140 (:REWRITE USE-ALL-NATP-2))
 (140 140 (:REWRITE USE-ALL-NATP))
 (140 140 (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (110 110 (:TYPE-PRESCRIPTION WEAK-DAGP))
 (110 110 (:TYPE-PRESCRIPTION ALL-INTEGERP))
 (110 110 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (110 110 (:REWRITE INTEGERP-OF-CAR-WHEN-ALL-DARGP-LESS-THAN))
 (110 110 (:REWRITE INTEGERP-OF-CAAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (109 109 (:REWRITE USE-ALL-<=-2))
 (109 109 (:REWRITE USE-ALL-<=))
 (107 107 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (102 102 (:TYPE-PRESCRIPTION ALL-CONSP))
 (92 4 (:REWRITE WEAK-DAGP-AUX-WHEN-PSEUDO-DAGP-AUX-2))
 (86 32 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (79 79 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
 (79 79 (:REWRITE ALL-<-TRANSITIVE-FREE))
 (79 79 (:REWRITE ALL-<-TRANSITIVE))
 (78 78 (:REWRITE NOT-<-OF-CAR-WHEN-ALL-DARGP-LESS-THAN-2))
 (78 78 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (78 78 (:REWRITE <-OF-0-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (75 75 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
 (73 73 (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
 (51 51 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (42 3 (:REWRITE LEN-OF-CDR))
 (40 40 (:TYPE-PRESCRIPTION ALL-<=))
 (40 4 (:REWRITE LEN-OF-REVERSE-LIST))
 (38 38 (:REWRITE FOLD-CONSTS-IN-+))
 (32 8 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (27 23 (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (24 16 (:REWRITE STRIP-CARS-WHEN-NOT-CONSP-CHEAP))
 (24 12 (:REWRITE NTH-WHEN-ZP-CHEAP))
 (24 12 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
 (20 20 (:REWRITE ALL-<=-WHEN-NOT-CONSP-CHEAP))
 (20 20 (:REWRITE ALL-<=-MONOTONE))
 (16 8 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (16 1 (:REWRITE USE-ALL-DARGP-LESS-THAN-FOR-CAR))
 (12 12 (:TYPE-PRESCRIPTION ZP))
 (12 12 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
 (12 12 (:REWRITE NTH-WHEN-NOT-CDDR))
 (10 5 (:REWRITE DARGP-LESS-THAN-WHEN-MYQUOTEP-CHEAP))
 (8 8 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (8 1 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-<))
 (5 5 (:REWRITE USE-ALL-DARGP-LESS-THAN-2))
 (5 5 (:REWRITE USE-ALL-DARGP-LESS-THAN))
 (5 5 (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
 (5 5 (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
 (5 5 (:REWRITE DARGP-LESS-THAN-WHEN-EQUAL-OF-NTH-0-AND-QUOTE))
 (4 4 (:REWRITE WEAK-DAGP-AUX-WHEN-PSEUDO-DAGP-AUX))
 (4 4 (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
 (4 2 (:REWRITE LEN-OF-NTH-WHEN-ALL-DARGP))
 (3 3 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (3 3 (:REWRITE EQUAL-OF-LEN-AND-0))
 (3 3 (:REWRITE DARGP-LESS-THAN-WHEN-QUOTEP-CHEAP))
 (3 3 (:REWRITE DARGP-LESS-THAN-MONO))
 (3 3 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (2 2 (:TYPE-PRESCRIPTION ALL-DARGP-LESS-THAN))
 (2 2 (:TYPE-PRESCRIPTION ALL-DARGP))
 (2 2 (:REWRITE LEN-OF-NTH-WHEN-ALL-DARGP-LESS-THAN))
 (2 2 (:REWRITE DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
 (2 2 (:REWRITE DARGP-LESS-THAN-WHEN-CONSP-CHEAP))
 (2 1 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-ALL-MYQUOTEP-CHEAP))
 (1 1 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
 (1 1 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
 (1 1 (:REWRITE ALL-DARGP-LESS-THAN-WHEN-NOT-CONSP))
 (1 1 (:REWRITE ALL-DARGP-LESS-THAN-MONOTONE))
 )
(NATP-OF-MV-NTH-1-OF-MERGE-DAG-INTO-DAG-QUICK
 (960 36 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (276 276 (:TYPE-PRESCRIPTION LEN))
 (228 12 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (192 48 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (168 12 (:REWRITE LEN-OF-CDR))
 (73 73 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (73 73 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (73 73 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (73 73 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (72 36 (:REWRITE DEFAULT-<-2))
 (42 42 (:REWRITE DEFAULT-CDR))
 (36 36 (:REWRITE USE-ALL-CONSP-2))
 (36 36 (:REWRITE USE-ALL-CONSP))
 (36 36 (:REWRITE USE-ALL-<-2))
 (36 36 (:REWRITE USE-ALL-<))
 (36 36 (:REWRITE DEFAULT-<-1))
 (36 36 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (36 36 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (36 36 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (36 36 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (36 36 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (30 30 (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
 (30 30 (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
 (24 24 (:REWRITE DEFAULT-CAR))
 (24 12 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (12 12 (:REWRITE EQUAL-OF-LEN-AND-0))
 (12 12 (:REWRITE DEFAULT-+-1))
 (12 12 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (2 1 (:REWRITE DARGP-LESS-THAN-WHEN-MYQUOTEP-CHEAP))
 (1 1 (:REWRITE USE-ALL-DARGP-LESS-THAN-2))
 (1 1 (:REWRITE USE-ALL-DARGP-LESS-THAN))
 (1 1 (:REWRITE DARGP-LESS-THAN-WHEN-QUOTEP-CHEAP))
 (1 1 (:REWRITE DARGP-LESS-THAN-WHEN-NATP-CHEAP))
 (1 1 (:REWRITE DARGP-LESS-THAN-WHEN-EQUAL-OF-NTH-0-AND-QUOTE))
 (1 1 (:REWRITE DARGP-LESS-THAN-WHEN-EQUAL-OF-CAR-AND-QUOTE))
 (1 1 (:REWRITE DARGP-LESS-THAN-MONO))
 )
(MYQUOTEP-OF-MV-NTH-1-OF-MERGE-DAG-INTO-DAG-QUICK
 (2972 209 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (724 724 (:TYPE-PRESCRIPTION LEN))
 (551 29 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (459 111 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (457 211 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (406 29 (:REWRITE LEN-OF-CDR))
 (211 211 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (211 211 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (211 211 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (209 209 (:REWRITE USE-ALL-CONSP-2))
 (209 209 (:REWRITE USE-ALL-CONSP))
 (209 209 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (209 209 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (205 123 (:REWRITE DEFAULT-<-2))
 (123 123 (:REWRITE USE-ALL-<-2))
 (123 123 (:REWRITE USE-ALL-<))
 (123 123 (:REWRITE DEFAULT-<-1))
 (123 123 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (106 106 (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
 (99 99 (:REWRITE DEFAULT-CDR))
 (82 82 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (82 82 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (58 29 (:REWRITE DEFAULT-+-2))
 (53 53 (:REWRITE DEFAULT-CAR))
 (41 41 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (33 33 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (29 29 (:REWRITE EQUAL-OF-LEN-AND-0))
 (29 29 (:REWRITE DEFAULT-+-1))
 (2 1 (:REWRITE DARGP-LESS-THAN-WHEN-NATP-CHEAP))
 (2 1 (:REWRITE DARGP-LESS-THAN-WHEN-MYQUOTEP-CHEAP))
 (1 1 (:TYPE-PRESCRIPTION NATP))
 (1 1 (:REWRITE USE-ALL-DARGP-LESS-THAN-2))
 (1 1 (:REWRITE USE-ALL-DARGP-LESS-THAN))
 (1 1 (:REWRITE DARGP-LESS-THAN-WHEN-QUOTEP-CHEAP))
 (1 1 (:REWRITE DARGP-LESS-THAN-WHEN-NOT-CONSP-CHEAP))
 (1 1 (:REWRITE DARGP-LESS-THAN-WHEN-EQUAL-OF-NTH-0-AND-QUOTE))
 (1 1 (:REWRITE DARGP-LESS-THAN-WHEN-EQUAL-OF-CAR-AND-QUOTE))
 (1 1 (:REWRITE DARGP-LESS-THAN-WHEN-CONSP-CHEAP))
 (1 1 (:REWRITE DARGP-LESS-THAN-MONO))
 )
(NOT-QUOTEP-OF-MV-NTH-2-OF-MERGE-DAG-INTO-DAG-QUICK
 (230 115 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (181 24 (:REWRITE DEFAULT-CAR))
 (156 156 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (153 153 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (153 153 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (115 115 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (66 10 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (64 28 (:REWRITE DEFAULT-+-2))
 (55 16 (:REWRITE REVERSE-BECOMES-REVERSE-LIST))
 (48 30 (:REWRITE DEFAULT-<-2))
 (46 28 (:REWRITE DEFAULT-+-1))
 (40 5 (:REWRITE LEN-OF-NTH-WHEN-ALL-DARGP))
 (30 30 (:REWRITE USE-ALL-<-2))
 (30 30 (:REWRITE USE-ALL-<))
 (30 30 (:REWRITE DEFAULT-<-1))
 (30 30 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (26 26 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (25 25 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (25 25 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (24 24 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (21 21 (:REWRITE USE-ALL-<=-2))
 (21 21 (:REWRITE USE-ALL-<=))
 (20 10 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (13 13 (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
 (10 10 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (10 10 (:TYPE-PRESCRIPTION ARRAY1P))
 (10 10 (:TYPE-PRESCRIPTION ALL-DARGP))
 (10 5 (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
 (9 9 (:REWRITE USE-ALL-CONSP-2))
 (9 9 (:REWRITE USE-ALL-CONSP))
 (9 9 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (8 4 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-CHEAP))
 (7 7 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (5 5 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
 (5 5 (:REWRITE LEN-OF-NTH-WHEN-ALL-DARGP-LESS-THAN))
 (5 5 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP-CHEAP))
 (5 5 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
 (5 5 (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
 (5 5 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (5 5 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (4 4 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (3 3 (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 )
(<=-OF-LEN-OF-MV-NTH-2-OF-MERGE-DAG-INTO-DAG-QUICK-LINEAR
 (408 204 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (204 204 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (200 200 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (197 197 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (197 197 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (114 17 (:REWRITE DEFAULT-CAR))
 (96 12 (:REWRITE LEN-OF-NTH-WHEN-ALL-DARGP))
 (66 44 (:REWRITE DEFAULT-<-2))
 (64 44 (:REWRITE DEFAULT-<-1))
 (64 43 (:REWRITE DEFAULT-+-1))
 (63 18 (:REWRITE REVERSE-BECOMES-REVERSE-LIST))
 (44 44 (:REWRITE USE-ALL-<-2))
 (44 44 (:REWRITE USE-ALL-<))
 (44 44 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (43 43 (:REWRITE DEFAULT-+-2))
 (37 37 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (37 37 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (35 35 (:REWRITE USE-ALL-<=-2))
 (35 35 (:REWRITE USE-ALL-<=))
 (32 6 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (30 30 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (24 24 (:TYPE-PRESCRIPTION ALL-DARGP))
 (24 12 (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
 (16 16 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (15 15 (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
 (12 12 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
 (12 12 (:REWRITE LEN-OF-NTH-WHEN-ALL-DARGP-LESS-THAN))
 (12 12 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP-CHEAP))
 (12 12 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
 (12 12 (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
 (12 6 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (9 9 (:REWRITE USE-ALL-CONSP-2))
 (9 9 (:REWRITE USE-ALL-CONSP))
 (9 9 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (8 4 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-CHEAP))
 (7 7 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (7 7 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (6 6 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (6 6 (:TYPE-PRESCRIPTION ARRAY1P))
 (5 5 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (4 4 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 )
(PSEUDO-DAGP-AUX-OF-MV-NTH-2-OF-MERGE-DAG-INTO-DAG-QUICK
 (1367 453 (:REWRITE DEFAULT-+-2))
 (1021 453 (:REWRITE DEFAULT-+-1))
 (1000 534 (:REWRITE DEFAULT-<-2))
 (930 328 (:REWRITE DEFAULT-CAR))
 (786 534 (:REWRITE DEFAULT-<-1))
 (748 38 (:DEFINITION WF-DAGP))
 (701 701 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (674 146 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (651 651 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (651 651 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (534 534 (:REWRITE USE-ALL-<-2))
 (534 534 (:REWRITE USE-ALL-<))
 (534 534 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (456 456 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (456 456 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (332 166 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (304 304 (:REWRITE USE-ALL-<=-2))
 (304 304 (:REWRITE USE-ALL-<=))
 (302 302 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (292 146 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (288 288 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (230 230 (:REWRITE USE-ALL-CONSP-2))
 (230 230 (:REWRITE USE-ALL-CONSP))
 (230 230 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (166 166 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (162 38 (:REWRITE ALEN1-OF-MAKE-DAG-PARENT-ARRAY-WITH-NAME2))
 (146 146 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (144 144 (:REWRITE TRUE-LISTP-WHEN-PSEUDO-DAGP-AUX))
 (124 38 (:REWRITE BOUNDED-DAG-PARENT-ARRAYP-OF-MAKE-DAG-PARENT-ARRAY-WITH-NAME2))
 (110 110 (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
 (96 96 (:TYPE-PRESCRIPTION ARRAY-TO-ALIST-AUX))
 (76 76 (:REWRITE ALEN1-OF-MAKE-INTO-ARRAY-WITH-LEN))
 (50 30 (:REWRITE PSEUDO-DAG-ARRAYP-OF-MAKE-INTO-ARRAY-WITH-LEN))
 (48 48 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (38 38 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (32 4 (:REWRITE LEN-OF-NTH-WHEN-ALL-DARGP))
 (30 30 (:REWRITE <-OF-+-COMBINE-CONSTANTS-1))
 (30 30 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (24 24 (:REWRITE WEAK-DAGP-WHEN-PSEUDO-DAGP-AUX))
 (14 14 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (12 8 (:REWRITE STRIP-CARS-WHEN-NOT-CONSP-CHEAP))
 (8 8 (:TYPE-PRESCRIPTION ALL-DARGP))
 (8 4 (:REWRITE NTH-WHEN-ZP-CHEAP))
 (8 4 (:REWRITE ALL-DARGP-WHEN-ALL-MYQUOTEP-CHEAP))
 (5 5 (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
 (5 5 (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
 (4 4 (:TYPE-PRESCRIPTION ZP))
 (4 4 (:TYPE-PRESCRIPTION ALL-MYQUOTEP))
 (4 4 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
 (4 4 (:REWRITE NTH-WHEN-NOT-CDDR))
 (4 4 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
 (4 4 (:REWRITE LEN-OF-NTH-WHEN-ALL-DARGP-LESS-THAN))
 (4 4 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP-CHEAP))
 (4 4 (:REWRITE ALL-DARGP-WHEN-NOT-CONSP))
 (4 4 (:REWRITE ALL-DARGP-WHEN-ALL-DARGP-LESS-THAN))
 (2 2 (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
 (2 2 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
 (2 2 (:REWRITE ALL-<-TRANSITIVE-FREE))
 (2 2 (:REWRITE ALL-<-TRANSITIVE))
 )
(INTEGERP-WHEN-NATP)
(ACL2-NUMBERP-WHEN-NATP)
(NOT-QUOTE-OF-ARRAY-TO-ALIST-AUX
 (188 2 (:DEFINITION ARRAY-TO-ALIST-AUX))
 (68 4 (:REWRITE ACL2-NUMBERP-WHEN-NATP))
 (55 16 (:REWRITE DEFAULT-<-2))
 (54 16 (:REWRITE DEFAULT-<-1))
 (54 12 (:REWRITE INTEGERP-WHEN-NATP))
 (48 3 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (32 2 (:REWRITE DEFAULT-CAR))
 (31 31 (:TYPE-PRESCRIPTION NATP))
 (23 23 (:TYPE-PRESCRIPTION ARRAY-TO-ALIST-AUX))
 (19 2 (:REWRITE LEN-OF-ARRAY-TO-ALIST-AUX))
 (18 18 (:REWRITE USE-ALL-NATP-2))
 (18 18 (:REWRITE USE-ALL-NATP))
 (18 18 (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (17 1 (:REWRITE CONSP-OF-ARRAY-TO-ALIST-AUX))
 (16 16 (:REWRITE USE-ALL-<-2))
 (16 16 (:REWRITE USE-ALL-<))
 (16 16 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (15 15 (:REWRITE USE-ALL-<=-2))
 (15 15 (:REWRITE USE-ALL-<=))
 (12 12 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (12 12 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (12 4 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12 3 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (7 6 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (6 6 (:REWRITE LEN-WHEN-PSEUDO-DAGP-AUX))
 (6 6 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (6 6 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (6 3 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (4 4 (:REWRITE USE-ALL-RATIONALP-2))
 (4 4 (:REWRITE USE-ALL-RATIONALP))
 (4 4 (:REWRITE DEFAULT-+-2))
 (4 4 (:REWRITE DEFAULT-+-1))
 (3 3 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (3 3 (:TYPE-PRESCRIPTION ARRAY1P))
 (3 3 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (2 2 (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (1 1 (:REWRITE USE-ALL-CONSP-2))
 (1 1 (:REWRITE USE-ALL-CONSP))
 (1 1 (:REWRITE QUOTE-LEMMA-FOR-ALL-DARGP-LESS-THAN-GEN-ALT))
 (1 1 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (1 1 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (1 1 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 )
(NATP-OF-+-OF--1
 (17 2 (:REWRITE INTEGERP-WHEN-NATP))
 (3 3 (:REWRITE USE-ALL-<=-2))
 (3 3 (:REWRITE USE-ALL-<=))
 (3 3 (:REWRITE USE-ALL-<-2))
 (3 3 (:REWRITE USE-ALL-<))
 (3 3 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-<-1))
 (3 3 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (2 2 (:REWRITE USE-ALL-NATP-2))
 (2 2 (:REWRITE USE-ALL-NATP))
 (2 2 (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (2 2 (:REWRITE INTEGERP-WHEN-DARGP-LESS-THAN))
 (1 1 (:REWRITE NONNEG-WHEN-DARGP-LESS-THAN))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
 )
(PSEUDO-DAGP-OF-MV-NTH-2-OF-MERGE-DAG-INTO-DAG-QUICK
 (2098 136 (:REWRITE USE-ALL-NATP-FOR-CAR))
 (1824 912 (:TYPE-PRESCRIPTION SYMBOLP-OF-CAR-OF-CAR-WHEN-SYMBOL-TERM-ALISTP))
 (1637 65 (:REWRITE ALL-NATP-WHEN-NAT-LISTP))
 (1442 65 (:DEFINITION NAT-LISTP))
 (1079 142 (:REWRITE NOT-<-OF-CAR-WHEN-ALL-<-2))
 (1032 48 (:REWRITE LEN-OF-CDR))
 (987 987 (:TYPE-PRESCRIPTION SYMBOL-TERM-ALISTP))
 (954 477 (:REWRITE CAR-OF-CAR-WHEN-PSEUDO-DAGP-CHEAP))
 (777 142 (:REWRITE USE-ALL-<=-FOR-CAR))
 (760 478 (:REWRITE DEFAULT-<-2))
 (742 711 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (711 711 (:REWRITE LEN-WHEN-BOUNDED-DAG-EXPRP-AND-QUOTEP))
 (707 575 (:REWRITE DEFAULT-CAR))
 (587 522 (:REWRITE DEFAULT-+-2))
 (526 522 (:REWRITE DEFAULT-+-1))
 (478 478 (:REWRITE USE-ALL-<-2))
 (478 478 (:REWRITE USE-ALL-<))
 (478 478 (:REWRITE DEFAULT-<-1))
 (478 478 (:REWRITE <-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (458 458 (:REWRITE LEN-WHEN-DARGP-LESS-THAN))
 (445 445 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (390 390 (:TYPE-PRESCRIPTION NAT-LISTP))
 (384 48 (:REWRITE EQUAL-OF-LEN-AND-0))
 (379 75 (:REWRITE USE-ALL-CONSP-FOR-CAR))
 (348 87 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP))
 (302 302 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (290 290 (:REWRITE USE-ALL-CONSP-2))
 (290 290 (:REWRITE USE-ALL-CONSP))
 (254 254 (:TYPE-PRESCRIPTION ALL-<=))
 (226 226 (:REWRITE <-OF-+-ARG2-WHEN-NEGATIVE-CONSTANT))
 (220 220 (:REWRITE <-OF-LEN-WHEN-NTH-NON-NIL))
 (220 220 (:REWRITE <-OF-LEN-WHEN-INTEGERP-OF-NTH))
 (211 157 (:REWRITE ALL-<-TRANSITIVE-FREE-2))
 (205 205 (:REWRITE USE-ALL-<=-2))
 (205 205 (:REWRITE USE-ALL-<=))
 (195 195 (:TYPE-PRESCRIPTION ALL-NATP))
 (178 136 (:REWRITE NATP-OF-CAR-OF-CAR-WHEN-PSEUDO-DAGP-AUX-2))
 (160 160 (:REWRITE FOLD-CONSTS-IN-+))
 (157 157 (:REWRITE ALL-<-TRANSITIVE-FREE))
 (157 157 (:REWRITE ALL-<-TRANSITIVE))
 (150 150 (:TYPE-PRESCRIPTION ALL-CONSP))
 (150 75 (:REWRITE CONSP-OF-CAR-WHEN-SYMBOL-TERM-ALISTP-CHEAP))
 (142 142 (:REWRITE ALL-<-WHEN-NOT-CONSP-CHEAP))
 (142 142 (:REWRITE ALL-<-WHEN-NOT-CONSP))
 (138 33 (:REWRITE AREF1-WHEN-TOO-LARGE-CHEAP))
 (136 136 (:REWRITE USE-ALL-NATP-2))
 (136 136 (:REWRITE USE-ALL-NATP))
 (136 136 (:REWRITE NATP-WHEN-ALL-DARGP-LESS-THAN-GEN))
 (130 65 (:REWRITE ALL-NATP-WHEN-NAT-LISTP-CHEAP))
 (127 127 (:REWRITE ALL-<=-WHEN-NOT-CONSP-CHEAP))
 (127 127 (:REWRITE ALL-<=-WHEN-NOT-CONSP))
 (127 127 (:REWRITE ALL-<=-MONOTONE))
 (126 15 (:REWRITE USE-ALL-<-FOR-CAR))
 (112 96 (:REWRITE PSEUDO-DAGP-AUX-WHEN-NOT-CONSP-CHEAP))
 (106 106 (:REWRITE MYQUOTEP-WHEN-DARGP-LESS-THAN))
 (106 106 (:REWRITE MYQUOTEP-WHEN-BOUNDED-DAG-EXPRP))
 (90 60 (:REWRITE STRIP-CARS-WHEN-NOT-CONSP-CHEAP))
 (90 45 (:REWRITE NTH-WHEN-ZP-CHEAP))
 (84 45 (:REWRITE NTH-WHEN-<=-LEN-CHEAP))
 (79 75 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP))
 (75 75 (:REWRITE TRUE-LISTP-OF-CAR-WHEN-WHEN-BOUNDED-NATP-ALISTP))
 (75 75 (:REWRITE CONSP-OF-CAR-WHEN-PSEUDO-DAGP-AUX))
 (75 75 (:REWRITE ALL-CONSP-WHEN-NOT-CONSP-CHEAP))
 (66 33 (:TYPE-PRESCRIPTION ALEN1-TYPE))
 (65 65 (:REWRITE ALL-NATP-WHEN-NOT-CONSP-CHEAP))
 (65 65 (:REWRITE ALL-NATP-WHEN-NOT-CONSP))
 (53 13 (:REWRITE PSEUDO-DAGP-AUX-OF-MINUS1-OF-LEN))
 (52 52 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (45 45 (:TYPE-PRESCRIPTION ZP))
 (45 45 (:REWRITE NTH-WHEN-NOT-CONSP-CHEAP))
 (45 45 (:REWRITE NTH-WHEN-NOT-CDDR))
 (33 33 (:TYPE-PRESCRIPTION POSP-OF-ALEN1))
 (31 31 (:REWRITE <-OF-+-ARG1-WHEN-NEGATIVE-CONSTANT))
 (30 15 (:REWRITE LEN-OF-NTH-WHEN-ALL-DARGP))
 (23 23 (:REWRITE <-OF-+-OF-1-STRENGTHEN))
 (15 15 (:TYPE-PRESCRIPTION ALL-DARGP))
 (15 15 (:REWRITE WEAK-DAGP-WHEN-PSEUDO-DAGP-AUX))
 (15 15 (:REWRITE LEN-OF-NTH-WHEN-ALL-DARGP-LESS-THAN))
 (15 15 (:REWRITE ARRAY1P-WHEN-PSEUDO-DAG-ARRAYP))
 (2 2 (:TYPE-PRESCRIPTION TYPE-OF-AREF1-WHEN-PSEUDO-DAG-ARRAYP-AUX))
 (2 2 (:REWRITE PSEUDO-DAG-ARRAYP-MONOTONE))
 )
