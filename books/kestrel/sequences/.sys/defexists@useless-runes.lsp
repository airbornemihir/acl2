(GENERIC-EXISTS)
(GENERIC-EXISTS-OF-CONS
 (20 2 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (10 10 (:TYPE-PRESCRIPTION LEN))
 (4 2 (:REWRITE DEFAULT-<-2))
 (3 3 (:REWRITE DEFAULT-CDR))
 (3 3 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 2 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (2 2 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (2 2 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 )
(GENERIC-EXISTS-OF-APPEND
 (388 33 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (80 40 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (66 33 (:REWRITE DEFAULT-<-2))
 (65 35 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (65 33 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (41 41 (:REWRITE DEFAULT-CAR))
 (40 40 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (40 40 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (33 33 (:REWRITE DEFAULT-<-1))
 (33 33 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (33 33 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (30 30 (:REWRITE DEFAULT-CDR))
 )
(GENERIC-EXISTS-OF-REVAPPEND
 (285 25 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (50 25 (:REWRITE DEFAULT-<-2))
 (44 32 (:REWRITE DEFAULT-CAR))
 (44 26 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (44 25 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (39 27 (:REWRITE DEFAULT-CDR))
 (25 25 (:REWRITE DEFAULT-<-1))
 (25 25 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (25 25 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 )
(GENERIC-EXISTS-OF-CDR
 (40 5 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (17 17 (:TYPE-PRESCRIPTION LEN))
 (13 1 (:REWRITE LEN-OF-CDR))
 (12 3 (:REWRITE DEFAULT-CDR))
 (6 1 (:REWRITE EQUAL-OF-LEN-AND-0))
 (5 5 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (5 5 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (4 4 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (4 2 (:REWRITE DEFAULT-<-2))
 (4 2 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (2 2 (:REWRITE DEFAULT-CAR))
 (2 2 (:REWRITE DEFAULT-<-1))
 (2 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(GENERIC-EXISTS-OF-NTHCDR
 (909 55 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (665 38 (:REWRITE DEFAULT-CDR))
 (423 28 (:REWRITE LEN-OF-CDR))
 (288 18 (:REWRITE LEN-OF-NTHCDR))
 (222 111 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (171 111 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (159 45 (:DEFINITION NFIX))
 (132 96 (:REWRITE DEFAULT-<-2))
 (111 111 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (102 96 (:REWRITE DEFAULT-<-1))
 (93 9 (:REWRITE CONSP-OF-NTHCDR))
 (75 65 (:REWRITE DEFAULT-+-2))
 (75 25 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (71 65 (:REWRITE DEFAULT-+-1))
 (70 3 (:REWRITE CAR-OF-NTHCDR))
 (67 3 (:DEFINITION NTH))
 (55 55 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (47 10 (:REWRITE EQUAL-OF-LEN-AND-0))
 (39 39 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (36 6 (:REWRITE ASSOCIATIVITY-OF-+))
 (35 20 (:REWRITE DEFAULT-CAR))
 (35 7 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (21 7 (:DEFINITION POSP))
 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
 (16 16 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (14 11 (:REWRITE ZP-OPEN))
 (8 8 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (7 7 (:TYPE-PRESCRIPTION POSP))
 (7 7 (:REWRITE FOLD-CONSTS-IN-+))
 (6 2 (:REWRITE COMMUTATIVITY-OF-+))
 )
(GENERIC-EXISTS-OF-FIRSTN
 (967 56 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (606 49 (:REWRITE DEFAULT-CDR))
 (599 64 (:REWRITE LEN-OF-CDR))
 (264 22 (:REWRITE LEN-OF-FIRSTN))
 (199 137 (:REWRITE DEFAULT-<-2))
 (141 137 (:REWRITE DEFAULT-<-1))
 (138 11 (:REWRITE FIRSTN-BECOMES-TAKE))
 (98 22 (:DEFINITION MIN))
 (84 70 (:REWRITE DEFAULT-+-2))
 (84 34 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (70 70 (:REWRITE DEFAULT-+-1))
 (60 60 (:REWRITE GENERIC-EXISTS-OF-NTHCDR))
 (57 39 (:REWRITE DEFAULT-CAR))
 (56 56 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (51 51 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (45 14 (:REWRITE EQUAL-OF-LEN-AND-0))
 (30 30 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (18 6 (:REWRITE FOLD-CONSTS-IN-+))
 (16 10 (:REWRITE ZP-OPEN))
 (11 11 (:REWRITE FIRSTN-WHEN-ZP-CHEAP))
 (5 5 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (4 4 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 (1 1 (:REWRITE CDR-CONS))
 )
(GENERIC-EXISTS-OF-TAKE
 (2116 57 (:REWRITE TAKE-DOES-NOTHING))
 (822 82 (:REWRITE DEFAULT-CDR))
 (589 494 (:REWRITE DEFAULT-+-2))
 (494 494 (:REWRITE DEFAULT-+-1))
 (216 146 (:REWRITE DEFAULT-<-2))
 (189 189 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (162 162 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 (149 149 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (149 146 (:REWRITE DEFAULT-<-1))
 (89 89 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (72 72 (:REWRITE GENERIC-EXISTS-OF-NTHCDR))
 (72 72 (:REWRITE GENERIC-EXISTS-OF-FIRSTN))
 (23 23 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (10 1 (:LINEAR LEN-OF-CDR-LINEAR-STRONG))
 (8 1 (:LINEAR LEN-OF-CDR-LINEAR))
 (1 1 (:REWRITE CDR-CONS))
 )
(GENERIC-EXISTS-OF-TRUE-LIST-FIX
 (794 43 (:REWRITE GENERIC-EXISTS-OF-CDR))
 (558 42 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (308 34 (:REWRITE DEFAULT-CDR))
 (175 15 (:REWRITE LEN-OF-CDR))
 (88 67 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (84 28 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (61 28 (:REWRITE DEFAULT-<-2))
 (60 15 (:REWRITE EQUAL-OF-LEN-AND-0))
 (43 43 (:REWRITE GENERIC-EXISTS-OF-TAKE))
 (43 43 (:REWRITE GENERIC-EXISTS-OF-NTHCDR))
 (43 43 (:REWRITE GENERIC-EXISTS-OF-FIRSTN))
 (42 42 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (35 35 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (30 15 (:REWRITE DEFAULT-+-2))
 (28 28 (:REWRITE DEFAULT-<-1))
 (24 24 (:REWRITE DEFAULT-CAR))
 (15 15 (:REWRITE DEFAULT-+-1))
 (15 15 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (2 2 (:REWRITE CDR-CONS))
 )
(GENERIC-EXISTS-OF-REVERSE-LIST
 (1102 61 (:REWRITE GENERIC-EXISTS-OF-CDR))
 (827 59 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (389 53 (:REWRITE DEFAULT-CDR))
 (284 27 (:REWRITE LEN-OF-CDR))
 (143 96 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (120 37 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (95 5 (:DEFINITION BINARY-APPEND))
 (88 42 (:REWRITE DEFAULT-<-2))
 (85 20 (:REWRITE EQUAL-OF-LEN-AND-0))
 (61 61 (:REWRITE GENERIC-EXISTS-OF-TAKE))
 (61 61 (:REWRITE GENERIC-EXISTS-OF-NTHCDR))
 (61 61 (:REWRITE GENERIC-EXISTS-OF-FIRSTN))
 (59 59 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (52 52 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (47 27 (:REWRITE DEFAULT-+-2))
 (42 42 (:REWRITE DEFAULT-<-1))
 (36 36 (:REWRITE DEFAULT-CAR))
 (36 18 (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
 (27 27 (:REWRITE DEFAULT-+-1))
 (24 24 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (18 18 (:TYPE-PRESCRIPTION BINARY-APPEND))
 (6 2 (:REWRITE FOLD-CONSTS-IN-+))
 (2 2 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 (2 2 (:REWRITE CDR-CONS))
 )
(GENERIC-EXISTS-WHEN-NOT-CONSP)
(GENERIC-PREDICATE-WHEN-GENERIC-EXISTS
 (101 11 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (42 11 (:REWRITE DEFAULT-CDR))
 (19 19 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (19 10 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (17 9 (:REWRITE DEFAULT-<-2))
 (13 13 (:REWRITE GENERIC-EXISTS-OF-TAKE))
 (13 13 (:REWRITE GENERIC-EXISTS-OF-NTHCDR))
 (13 13 (:REWRITE GENERIC-EXISTS-OF-FIRSTN))
 (11 11 (:REWRITE DEFAULT-CAR))
 (11 11 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (9 9 (:REWRITE DEFAULT-<-1))
 (9 9 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (9 7 (:REWRITE GENERIC-EXISTS-WHEN-NOT-CONSP))
 (5 1 (:REWRITE LEN-OF-CDR))
 (1 1 (:REWRITE DEFAULT-+-2))
 (1 1 (:REWRITE DEFAULT-+-1))
 (1 1 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(GENERIC-EXISTS-OF-REMOVE1
 (1066 65 (:REWRITE GENERIC-EXISTS-OF-CDR))
 (854 79 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (507 133 (:REWRITE DEFAULT-CDR))
 (315 28 (:REWRITE GENERIC-EXISTS-WHEN-NOT-CONSP))
 (309 42 (:REWRITE LEN-OF-CDR))
 (125 125 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (96 55 (:REWRITE DEFAULT-<-2))
 (89 39 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (81 65 (:REWRITE GENERIC-PREDICATE-WHEN-GENERIC-EXISTS))
 (79 79 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (78 78 (:REWRITE DEFAULT-CAR))
 (72 72 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (65 65 (:REWRITE GENERIC-EXISTS-OF-TAKE))
 (65 65 (:REWRITE GENERIC-EXISTS-OF-NTHCDR))
 (65 65 (:REWRITE GENERIC-EXISTS-OF-FIRSTN))
 (63 20 (:REWRITE EQUAL-OF-LEN-AND-0))
 (62 42 (:REWRITE DEFAULT-+-2))
 (55 55 (:REWRITE DEFAULT-<-1))
 (42 42 (:REWRITE DEFAULT-+-1))
 (38 38 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (16 16 (:TYPE-PRESCRIPTION MEMBERP))
 (12 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 (1 1 (:REWRITE CDR-CONS))
 )
(GENERIC-EXISTS-OF-REMOVE-EQUAL
 (1248 65 (:REWRITE GENERIC-EXISTS-OF-CDR))
 (1019 78 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (571 121 (:REWRITE DEFAULT-CDR))
 (382 28 (:REWRITE GENERIC-EXISTS-WHEN-NOT-CONSP))
 (352 43 (:REWRITE LEN-OF-CDR))
 (172 133 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (127 43 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (110 58 (:REWRITE DEFAULT-<-2))
 (83 20 (:REWRITE EQUAL-OF-LEN-AND-0))
 (81 81 (:REWRITE DEFAULT-CAR))
 (81 65 (:REWRITE GENERIC-PREDICATE-WHEN-GENERIC-EXISTS))
 (78 78 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (69 69 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (65 65 (:REWRITE GENERIC-EXISTS-OF-TAKE))
 (65 65 (:REWRITE GENERIC-EXISTS-OF-NTHCDR))
 (65 65 (:REWRITE GENERIC-EXISTS-OF-FIRSTN))
 (63 43 (:REWRITE DEFAULT-+-2))
 (58 58 (:REWRITE DEFAULT-<-1))
 (43 43 (:REWRITE DEFAULT-+-1))
 (37 37 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (16 16 (:TYPE-PRESCRIPTION MEMBERP))
 (12 4 (:REWRITE FOLD-CONSTS-IN-+))
 (4 4 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 (1 1 (:REWRITE CDR-CONS))
 )
(GENERIC-EXISTS-WHEN-PERM
 (635 39 (:REWRITE GENERIC-EXISTS-OF-CDR))
 (610 55 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (289 65 (:REWRITE DEFAULT-CDR))
 (147 14 (:REWRITE LEN-OF-CDR))
 (82 41 (:REWRITE DEFAULT-<-2))
 (79 79 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (79 41 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (55 55 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (52 52 (:REWRITE DEFAULT-CAR))
 (49 14 (:REWRITE EQUAL-OF-LEN-AND-0))
 (48 48 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (41 41 (:REWRITE DEFAULT-<-1))
 (39 39 (:REWRITE GENERIC-EXISTS-OF-TAKE))
 (39 39 (:REWRITE GENERIC-EXISTS-OF-NTHCDR))
 (39 39 (:REWRITE GENERIC-EXISTS-OF-FIRSTN))
 (32 18 (:REWRITE GENERIC-EXISTS-WHEN-NOT-CONSP))
 (28 14 (:REWRITE DEFAULT-+-2))
 (18 18 (:REWRITE PERM-WHEN-NOT-CONSP-ARG2-CHEAP))
 (16 16 (:REWRITE PERM-TRANSITIVE-2))
 (16 16 (:REWRITE PERM-TRANSITIVE-1))
 (14 14 (:REWRITE DEFAULT-+-1))
 (14 14 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 )
(PERM-IMPLIES-EQUAL-GENERIC-EXISTS-1)
(GENERIC-EXISTS-OF-SUBRANGE
 (1919 40 (:REWRITE GENERIC-EXISTS-OF-CDR))
 (1596 12 (:REWRITE CDR-OF-TAKE))
 (1250 28 (:REWRITE TAKE-DOES-NOTHING))
 (931 21 (:REWRITE LEN-OF-CDR))
 (836 25 (:REWRITE DEFAULT-CDR))
 (612 24 (:REWRITE CONSP-FROM-LEN-CHEAP))
 (331 241 (:REWRITE DEFAULT-+-2))
 (319 256 (:REWRITE DEFAULT-<-1))
 (310 241 (:REWRITE DEFAULT-+-1))
 (307 256 (:REWRITE DEFAULT-<-2))
 (263 153 (:REWRITE LEN-WHEN-NOT-CONSP-CHEAP))
 (170 85 (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
 (93 93 (:TYPE-PRESCRIPTION TRUE-LISTP))
 (90 90 (:REWRITE DEFAULT-UNARY-MINUS))
 (88 8 (:REWRITE CONSP-OF-NTHCDR))
 (61 13 (:REWRITE NTHCDR-WHEN-NOT-POSP))
 (60 24 (:REWRITE CONSP-WHEN-LEN-GREATER))
 (57 57 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (54 1 (:REWRITE NTHCDR-IFF))
 (53 37 (:REWRITE FOLD-CONSTS-IN-+))
 (47 47 (:REWRITE GENERIC-PREDICATE-WHEN-GENERIC-EXISTS))
 (45 3 (:DEFINITION TRUE-LISTP))
 (43 43 (:REWRITE GENERIC-EXISTS-OF-TAKE))
 (43 43 (:REWRITE GENERIC-EXISTS-OF-FIRSTN))
 (36 12 (:DEFINITION POSP))
 (24 24 (:REWRITE CONSP-WHEN-LEN-EQUAL-CONSTANT))
 (14 14 (:REWRITE NTHCDR-WHEN-EQUAL-OF-LEN))
 (13 13 (:REWRITE NTHCDR-WHEN-NOT-CONSP-CHEAP))
 (12 12 (:TYPE-PRESCRIPTION POSP))
 (9 9 (:TYPE-PRESCRIPTION NATP))
 (5 5 (:LINEAR LEN-POSITIVE-WHEN-CONSP-LINEAR-CHEAP))
 (4 4 (:REWRITE CONSP-OF-CDR-WHEN-LEN-KNOWN))
 (3 3 (:REWRITE LEN-OF-CDDR-WHEN-EQUAL-OF-LEN))
 )
(DEFEXISTS-FN)
