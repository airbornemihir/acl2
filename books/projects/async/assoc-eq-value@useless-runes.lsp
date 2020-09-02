(ADE::ASSOC-EQ-VALUE)
(ADE::ASSOC-EQ-VALUE-CONS-1 (4 4 (:REWRITE DEFAULT-CAR))
                            (2 2 (:REWRITE DEFAULT-CDR)))
(ADE::ASSOC-EQ-VALUE-CONS-2 (9 9 (:REWRITE DEFAULT-CAR))
                            (5 5 (:REWRITE DEFAULT-CDR)))
(ADE::REWRITE-ASSOC-EQ-VALUE-4X (18 18 (:REWRITE DEFAULT-CAR))
                                (8 8 (:REWRITE DEFAULT-CDR)))
(ADE::ASSOC-EQ-VALUE-APPEND-PAIRLIS$
     (184 141 (:REWRITE DEFAULT-CAR))
     (182 77 (:REWRITE DEFAULT-CDR))
     (80 16 (:REWRITE CAR-OF-APPEND))
     (77 11 (:DEFINITION BINARY-APPEND))
     (56 16 (:REWRITE CONSP-OF-APPEND))
     (33 33 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (32 8 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
     (22 22
         (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV)))
(ADE::ASSOC-EQ-VALUE-PAIRLIS$-MEMBER (100 66 (:REWRITE DEFAULT-CAR))
                                     (38 36 (:REWRITE DEFAULT-CDR))
                                     (20 4 (:REWRITE ZP-OPEN))
                                     (13 13 (:REWRITE DEFAULT-+-2))
                                     (13 13 (:REWRITE DEFAULT-+-1))
                                     (4 4 (:REWRITE DEFAULT-<-2))
                                     (4 4 (:REWRITE DEFAULT-<-1)))
(ADE::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER (25 24 (:REWRITE DEFAULT-CAR))
                                         (16 15 (:REWRITE DEFAULT-CDR)))
(ADE::ASSOC-EQ-VALUE-PAIRLIS$-APPEND-MEMBER
     (121 100 (:REWRITE DEFAULT-CAR))
     (115 55 (:REWRITE DEFAULT-CDR))
     (60 30
         (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (30 30 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (30 30 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (21 7 (:REWRITE CAR-OF-APPEND))
     (14 14 (:REWRITE CONSP-OF-APPEND))
     (7 7 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
     (7 7 (:REWRITE APPEND-WHEN-NOT-CONSP)))
(ADE::ASSOC-EQ-VALUE-PAIRLIS$-APPEND-NOT-MEMBER-INDUCT)
(ADE::ASSOC-EQ-VALUE-PAIRLIS$-APPEND-NOT-MEMBER
     (102 59 (:REWRITE DEFAULT-CDR))
     (74 52 (:REWRITE DEFAULT-CAR))
     (36 12
         (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (24 24 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (24 12
         (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (17 11 (:REWRITE DEFAULT-+-2))
     (16 2 (:REWRITE ZP-OPEN))
     (12 12 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (12 11 (:REWRITE DEFAULT-+-1))
     (9 3 (:REWRITE CAR-OF-APPEND))
     (6 6 (:REWRITE CONSP-OF-APPEND))
     (4 2 (:REWRITE DEFAULT-<-2))
     (3 3 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
     (2 2 (:REWRITE DEFAULT-<-1)))
(ADE::ASSOC-EQ-VALUE-UPDATE-ALIST-1
     (61 60 (:REWRITE DEFAULT-CAR))
     (28 22 (:REWRITE DEFAULT-CDR))
     (5 5
        (:REWRITE ADE::CONSP-OF-ASSOC-UPDATE-ALIST-LEMMA)))
(ADE::ASSOC-EQ-VALUE-UPDATE-ALIST-2
     (108 100 (:REWRITE DEFAULT-CAR))
     (65 57 (:REWRITE DEFAULT-CDR))
     (6 6
        (:REWRITE ADE::CONSP-OF-ASSOC-UPDATE-ALIST-LEMMA)))
(ADE::ASSOC-EQ-VALUE-NTH-PAIRLIS$
     (173 172 (:REWRITE DEFAULT-CDR))
     (165 106 (:REWRITE DEFAULT-+-2))
     (141 137 (:REWRITE DEFAULT-CAR))
     (106 106 (:REWRITE DEFAULT-+-1))
     (86 61 (:REWRITE DEFAULT-<-2))
     (83 3 (:REWRITE LEN-WHEN-PREFIXP))
     (80 61 (:REWRITE DEFAULT-<-1))
     (62 62 (:LINEAR LEN-WHEN-PREFIXP))
     (57 19 (:DEFINITION MEMBER-EQUAL))
     (56 3 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
     (31 31
         (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (28 28 (:REWRITE NTH-WHEN-PREFIXP))
     (8 8
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (7 1
        (:REWRITE ADE::DISJOINT=>NOT-MEMBER-NTH))
     (6 6 (:TYPE-PRESCRIPTION PREFIXP))
     (3 3 (:TYPE-PRESCRIPTION ADE::DISJOINT))
     (3 3
        (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
     (3 3
        (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
     (3 3 (:REWRITE PREFIXP-TRANSITIVE . 2))
     (3 3 (:REWRITE PREFIXP-TRANSITIVE . 1))
     (3 3
        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
     (3 3
        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
     (2 1 (:REWRITE ADE::DISJOINT-COMMUTATIVE))
     (2 1 (:REWRITE ADE::DISJOINT-ATOM))
     (1 1 (:REWRITE ADE::SUBSETP-TRANSITIVITY))
     (1 1 (:DEFINITION ATOM)))
(ADE::ASSOC-EQ-VALUE-OF-SI-PAIRLIS$-SIS
     (26 2 (:DEFINITION ASSOC-EQUAL))
     (22 14 (:REWRITE DEFAULT-CAR))
     (22 2 (:DEFINITION PAIRLIS$))
     (21 13 (:REWRITE DEFAULT-CDR))
     (19 18 (:REWRITE DEFAULT-<-1))
     (18 18 (:REWRITE DEFAULT-<-2))
     (15 13 (:REWRITE DEFAULT-+-2))
     (13 13 (:REWRITE DEFAULT-+-1))
     (12 3
         (:REWRITE ADE::NOT-EQUAL-WITH-SI-OF-DIFF-SYMBOL
                   . 2))
     (10 2 (:DEFINITION LEN))
     (6 6
        (:TYPE-PRESCRIPTION STR::ISTRPREFIXP$INLINE))
     (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
     (4 4 (:TYPE-PRESCRIPTION PAIRLIS$))
     (4 4 (:REWRITE NTH-WHEN-PREFIXP))
     (3 3 (:REWRITE FOLD-CONSTS-IN-+))
     (3 3 (:REWRITE DEFAULT-SYMBOL-NAME))
     (2 2 (:LINEAR LEN-WHEN-PREFIXP))
     (1 1 (:TYPE-PRESCRIPTION POSP))
     (1 1
        (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS)))
(ADE::ASSOC-EQ-VALUES (6 2 (:DEFINITION ALISTP))
                      (4 4 (:REWRITE DEFAULT-CAR))
                      (3 3 (:REWRITE DEFAULT-CDR)))
(ADE::LEN-ASSOC-EQ-VALUES
     (28 28 (:LINEAR LEN-WHEN-PREFIXP))
     (14 14
         (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (14 7 (:REWRITE DEFAULT-+-2))
     (9 8 (:REWRITE DEFAULT-CDR))
     (7 7 (:REWRITE DEFAULT-+-1))
     (3 3 (:REWRITE DEFAULT-CAR)))
(ADE::PAIRLIS$-ASSOC-EQ-VALUES
     (277 209 (:REWRITE DEFAULT-CDR))
     (108 108
          (:TYPE-PRESCRIPTION ADE::ASSOC-EQ-VALUES)))
(ADE::ASSOC-EQ-VALUES-CONS-NOT-MEMBER
     (12 12 (:REWRITE DEFAULT-CDR))
     (8 4
        (:REWRITE ADE::ASSOC-EQ-VALUE-CONS-1)))
(ADE::ASSOC-EQ-VALUES-APPEND-PAIRLIS$
     (77 77 (:REWRITE DEFAULT-CAR))
     (75 75 (:REWRITE DEFAULT-CDR))
     (42 7 (:DEFINITION BINARY-APPEND))
     (34 34 (:LINEAR LEN-WHEN-PREFIXP))
     (32 32 (:TYPE-PRESCRIPTION PAIRLIS$))
     (31 16 (:REWRITE DEFAULT-+-2))
     (17 17
         (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (16 16 (:REWRITE DEFAULT-+-1))
     (16 4
         (:REWRITE ADE::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
     (9 3
        (:REWRITE ADE::ASSOC-EQ-VALUE-CONS-2)))
(ADE::ASSOC-EQ-VALUES-APPEND-WHEN-DISJOINT
     (100 100 (:TYPE-PRESCRIPTION STRIP-CARS))
     (90 36 (:DEFINITION ATOM))
     (74 74 (:REWRITE DEFAULT-CAR))
     (50 50 (:REWRITE DEFAULT-CDR))
     (18 18 (:TYPE-PRESCRIPTION ATOM)))
(ADE::ASSOC-EQ-VALUES-ATOM)
(ADE::CONSP-ASSOC-EQ-VALUES (3 3 (:REWRITE DEFAULT-CDR))
                            (3 3 (:REWRITE DEFAULT-CAR)))
(ADE::ASSOC-EQ-VALUES-APPEND (62 19 (:REWRITE DEFAULT-CDR))
                             (41 26 (:REWRITE DEFAULT-CAR))
                             (38 38 (:TYPE-PRESCRIPTION TRUE-LISTP))
                             (13 13 (:REWRITE CONSP-OF-APPEND))
                             (12 4 (:REWRITE CAR-OF-APPEND))
                             (4 4 (:REWRITE CDR-OF-APPEND-WHEN-CONSP)))
(ADE::ASSOC-EQ-VALUES-REV (120 6 (:DEFINITION BINARY-APPEND))
                          (99 32 (:REWRITE DEFAULT-CDR))
                          (95 28 (:REWRITE DEFAULT-CAR))
                          (74 74 (:REWRITE CONSP-OF-REV))
                          (64 26
                              (:REWRITE ADE::CONSP-ASSOC-EQ-VALUES))
                          (53 12 (:REWRITE APPEND-WHEN-NOT-CONSP)))
(ADE::ASSOC-EQ-VALUES-APPEND-PAIRLIS$-WHEN-SUBSET
     (202 3
          (:REWRITE ADE::ASSOC-EQ-VALUES-APPEND-WHEN-DISJOINT))
     (82 9 (:REWRITE ADE::DISJOINT-ATOM))
     (57 57 (:REWRITE DEFAULT-CAR))
     (55 11 (:DEFINITION PAIRLIS$))
     (53 53 (:REWRITE DEFAULT-CDR))
     (51 51 (:TYPE-PRESCRIPTION STRIP-CARS))
     (48 6 (:REWRITE ADE::STRIP-CARS-PAIRLIS$))
     (46 9 (:REWRITE ADE::DISJOINT-COMMUTATIVE))
     (36 6 (:DEFINITION STRIP-CARS))
     (32 32 (:TYPE-PRESCRIPTION PAIRLIS$))
     (30 30 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (30 6 (:DEFINITION TRUE-LISTP))
     (24 24 (:TYPE-PRESCRIPTION ADE::DISJOINT))
     (24 4 (:DEFINITION BINARY-APPEND))
     (22 6
         (:REWRITE ADE::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
     (20 8 (:REWRITE APPEND-WHEN-NOT-CONSP))
     (7 7 (:TYPE-PRESCRIPTION ATOM))
     (7 7 (:REWRITE ADE::SUBSETP-TRANSITIVITY)))
(ADE::ASSOC-EQ-VALUES-APPEND-PAIRLIS$-WHEN-DISJOINT
     (1626 24
           (:REWRITE ADE::ASSOC-EQ-VALUES-APPEND-WHEN-DISJOINT))
     (463 451 (:REWRITE DEFAULT-CDR))
     (461 449 (:REWRITE DEFAULT-CAR))
     (408 408 (:TYPE-PRESCRIPTION STRIP-CARS))
     (384 48 (:REWRITE ADE::STRIP-CARS-PAIRLIS$))
     (324 72 (:DEFINITION MEMBER-EQUAL))
     (310 62 (:DEFINITION PAIRLIS$))
     (288 48 (:DEFINITION STRIP-CARS))
     (240 240 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (240 48 (:DEFINITION TRUE-LISTP))
     (221 221 (:TYPE-PRESCRIPTION PAIRLIS$))
     (150 25 (:DEFINITION BINARY-APPEND))
     (125 125 (:TYPE-PRESCRIPTION ATOM))
     (125 50 (:REWRITE APPEND-WHEN-NOT-CONSP))
     (61 61 (:REWRITE ADE::SUBSETP-TRANSITIVITY))
     (36 36
         (:REWRITE ADE::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER)))
(ADE::ASSOC-EQ-VALUES-PAIRLIS$-APPEND-WHEN-SUBSET
     (195 26 (:DEFINITION MEMBER-EQUAL))
     (191 8
          (:REWRITE ADE::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
     (126 70 (:REWRITE DEFAULT-CDR))
     (125 11 (:DEFINITION PAIRLIS$))
     (85 2 (:REWRITE TAKE-OF-TOO-MANY))
     (75 75 (:REWRITE DEFAULT-CAR))
     (62 2 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
     (54 27
         (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (54 3 (:REWRITE ADE::MEMBER-APPEND))
     (52 52 (:TYPE-PRESCRIPTION LEN))
     (40 1 (:REWRITE TAKE-WHEN-PREFIXP))
     (40 1 (:REWRITE LEN-WHEN-PREFIXP))
     (36 1 (:DEFINITION TAKE))
     (35 7 (:DEFINITION LEN))
     (28 4
         (:REWRITE ADE::ASSOC-EQ-VALUE-PAIRLIS$-APPEND-NOT-MEMBER))
     (27 27 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (27 27 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (27 3 (:REWRITE ADE::NOT-MEMBER-APPEND))
     (24 8 (:REWRITE CAR-OF-APPEND))
     (20 5 (:DEFINITION BINARY-APPEND))
     (18 18 (:LINEAR LEN-WHEN-PREFIXP))
     (16 16 (:REWRITE CONSP-OF-APPEND))
     (15 8 (:REWRITE DEFAULT-+-2))
     (10 10 (:REWRITE APPEND-WHEN-NOT-CONSP))
     (9 9 (:REWRITE ADE::SUBSETP-TRANSITIVITY))
     (9 9
        (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (8 8 (:REWRITE DEFAULT-+-1))
     (8 8 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
     (8 1 (:REWRITE ZP-OPEN))
     (6 3 (:REWRITE DEFAULT-<-2))
     (4 4 (:TYPE-PRESCRIPTION PREFIXP))
     (4 3 (:REWRITE DEFAULT-<-1))
     (3 3 (:REWRITE APPEND-UNDER-IFF))
     (3 2 (:REWRITE ADE::NFIX-OF-NAT))
     (2 2 (:TYPE-PRESCRIPTION NFIX))
     (2 2 (:REWRITE TAKE-WHEN-ATOM))
     (2 2
        (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
     (2 2
        (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
     (2 2 (:REWRITE PREFIXP-TRANSITIVE . 2))
     (2 2 (:REWRITE PREFIXP-TRANSITIVE . 1))
     (2 2
        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
     (2 2
        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1)))
(ADE::ASSOC-EQ-VALUES-PAIRLIS$-APPEND-WHEN-DISJOINT
     (1914 24 (:REWRITE TAKE-OF-TOO-MANY))
     (1713 1713 (:TYPE-PRESCRIPTION LEN))
     (1596 532
           (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (1588 780 (:REWRITE DEFAULT-CDR))
     (1486 74 (:DEFINITION PAIRLIS$))
     (1435 66
           (:REWRITE ADE::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
     (1209 35
           (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
     (1117 645 (:REWRITE DEFAULT-CAR))
     (1066 23 (:REWRITE LEN-WHEN-PREFIXP))
     (1044 156 (:DEFINITION LEN))
     (795 12 (:DEFINITION TAKE))
     (738 41 (:DEFINITION NTHCDR))
     (697 697 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (656 12 (:REWRITE TAKE-WHEN-PREFIXP))
     (652 33 (:REWRITE ADE::LEN-NTHCDR))
     (424 53 (:REWRITE ZP-OPEN))
     (406 250 (:REWRITE DEFAULT-+-2))
     (378 21 (:REWRITE ADE::MEMBER-APPEND))
     (330 165
          (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (276 276 (:LINEAR LEN-WHEN-PREFIXP))
     (250 250 (:REWRITE DEFAULT-+-1))
     (222 24 (:REWRITE TAKE-WHEN-ATOM))
     (189 21 (:REWRITE ADE::NOT-MEMBER-APPEND))
     (176 88 (:REWRITE DEFAULT-<-2))
     (165 165 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (144 48 (:REWRITE CAR-OF-APPEND))
     (138 138
          (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (134 35
          (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
     (134 35
          (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
     (123 41 (:REWRITE COMMUTATIVITY-OF-+))
     (111 88 (:REWRITE DEFAULT-<-1))
     (108 27 (:DEFINITION BINARY-APPEND))
     (96 96 (:REWRITE CONSP-OF-APPEND))
     (92 92 (:TYPE-PRESCRIPTION ATOM))
     (70 70 (:TYPE-PRESCRIPTION PREFIXP))
     (54 54 (:REWRITE APPEND-WHEN-NOT-CONSP))
     (48 48 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
     (43 43 (:REWRITE ADE::SUBSETP-TRANSITIVITY))
     (36 24 (:REWRITE ADE::NFIX-OF-NAT))
     (35 35 (:REWRITE PREFIXP-TRANSITIVE . 2))
     (35 35 (:REWRITE PREFIXP-TRANSITIVE . 1))
     (35 35
         (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
     (35 35
         (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
     (24 24 (:TYPE-PRESCRIPTION NFIX))
     (21 21 (:REWRITE APPEND-UNDER-IFF)))
(ADE::ASSOC-EQ-VALUES-TAKE-1
     (201 150 (:REWRITE DEFAULT-CDR))
     (183 27 (:DEFINITION MEMBER-EQUAL))
     (182 101 (:REWRITE DEFAULT-+-2))
     (180 134 (:REWRITE DEFAULT-<-2))
     (147 134 (:REWRITE DEFAULT-<-1))
     (146 134 (:REWRITE DEFAULT-CAR))
     (101 101 (:REWRITE DEFAULT-+-1))
     (86 86 (:LINEAR LEN-WHEN-PREFIXP))
     (43 43
         (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (39 39 (:REWRITE TAKE-WHEN-ATOM))
     (36 12 (:DEFINITION NATP))
     (32 8
         (:REWRITE ADE::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
     (18 6 (:REWRITE ADE::ASSOC-EQ-VALUE-CONS-2))
     (12 12 (:TYPE-PRESCRIPTION NATP))
     (12 4 (:REWRITE FOLD-CONSTS-IN-+))
     (7 7
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (6 2 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
     (3 3 (:REWRITE TAKE-UNDER-IFF)))
(ADE::ASSOC-EQ-VALUES-TAKE-2
     (260 27 (:DEFINITION MEMBER-EQUAL))
     (230 140 (:REWRITE DEFAULT-CDR))
     (207 166 (:REWRITE DEFAULT-<-2))
     (179 10
          (:REWRITE ADE::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
     (175 166 (:REWRITE DEFAULT-<-1))
     (134 127 (:REWRITE DEFAULT-CAR))
     (123 74 (:REWRITE DEFAULT-+-2))
     (76 76 (:LINEAR LEN-WHEN-PREFIXP))
     (74 74 (:REWRITE DEFAULT-+-1))
     (49 49 (:REWRITE TAKE-WHEN-ATOM))
     (49 5
         (:REWRITE ADE::ASSOC-EQ-VALUES-TAKE-1))
     (39 13 (:DEFINITION NATP))
     (38 38
         (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (24 8 (:REWRITE FOLD-CONSTS-IN-+))
     (22 22 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (22 6 (:DEFINITION TRUE-LISTP))
     (13 13 (:TYPE-PRESCRIPTION NATP))
     (12 4 (:REWRITE ADE::ASSOC-EQ-VALUE-CONS-2))
     (10 6 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
     (7 7 (:REWRITE TAKE-UNDER-IFF))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(ADE::ASSOC-EQ-VALUES-NTHCDR-1
     (217 143 (:REWRITE DEFAULT-+-2))
     (143 143 (:REWRITE DEFAULT-+-1))
     (92 92 (:LINEAR LEN-WHEN-PREFIXP))
     (85 15
         (:REWRITE ADE::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
     (69 30 (:REWRITE ZP-OPEN))
     (46 46
         (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (15 5 (:REWRITE ADE::ASSOC-EQ-VALUE-CONS-2))
     (13 13 (:REWRITE DEFAULT-<-2))
     (13 13 (:REWRITE DEFAULT-<-1)))
(ADE::ASSOC-EQ-VALUES-NTHCDR-2 (88 88 (:REWRITE DEFAULT-+-2))
                               (88 88 (:REWRITE DEFAULT-+-1))
                               (86 32 (:REWRITE ZP-OPEN))
                               (54 18 (:REWRITE FOLD-CONSTS-IN-+))
                               (36 6
                                   (:REWRITE ADE::ASSOC-EQ-VALUES-NTHCDR-1))
                               (20 4 (:DEFINITION TRUE-LISTP))
                               (18 18 (:REWRITE DEFAULT-<-2))
                               (18 18 (:REWRITE DEFAULT-<-1)))
(ADE::NOT-MEMBER-TAKE-NTHCDR-LEMMA
     (457 12 (:DEFINITION TAKE))
     (133 100 (:REWRITE DEFAULT-<-2))
     (133 81 (:REWRITE DEFAULT-+-2))
     (129 100 (:REWRITE DEFAULT-<-1))
     (128 38 (:REWRITE DEFAULT-CAR))
     (114 24 (:REWRITE TAKE-WHEN-ATOM))
     (113 16 (:REWRITE ADE::LEN-NTHCDR))
     (92 81 (:REWRITE DEFAULT-+-1))
     (84 84 (:LINEAR LEN-WHEN-PREFIXP))
     (42 42
         (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (42 14 (:DEFINITION NATP))
     (30 30
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (16 10
         (:REWRITE ADE::NOT-MEMBER-NTHCDR-LEMMA))
     (16 2 (:REWRITE REPEAT-WHEN-ZP))
     (14 14 (:TYPE-PRESCRIPTION NATP))
     (2 2 (:REWRITE FOLD-CONSTS-IN-+)))
(ADE::ASSOC-EQ-VALUES-CONS (6 6 (:REWRITE ADE::ASSOC-EQ-VALUES-ATOM))
                           (3 3 (:REWRITE DEFAULT-CDR))
                           (3 3 (:REWRITE DEFAULT-CAR)))
(ADE::SINGLETON-ASSOC-EQ-VALUES
     (46 43 (:REWRITE DEFAULT-CDR))
     (45 23 (:REWRITE DEFAULT-+-2))
     (40 40 (:LINEAR LEN-WHEN-PREFIXP))
     (23 23 (:REWRITE DEFAULT-+-1))
     (20 20
         (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS)))
(ADE::ASSOC-EQ-VALUES-ARGS-PAIRLIS$-ARGS
     (210 16
          (:REWRITE ADE::SINGLETON-ASSOC-EQ-VALUES))
     (72 72 (:REWRITE DEFAULT-CDR))
     (62 62 (:LINEAR LEN-WHEN-PREFIXP))
     (58 58 (:REWRITE DEFAULT-CAR))
     (56 28 (:REWRITE DEFAULT-+-2))
     (31 31
         (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (28 28 (:REWRITE DEFAULT-+-1))
     (16 4
         (:REWRITE ADE::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
     (9 3
        (:REWRITE ADE::ASSOC-EQ-VALUE-CONS-2)))
(ADE::ASSOC-EQ-VALUES-SPLITTING-CROCK
     (395 28
          (:REWRITE ADE::SINGLETON-ASSOC-EQ-VALUES))
     (82 50 (:REWRITE DEFAULT-+-2))
     (79 46 (:REWRITE DEFAULT-CDR))
     (76 76 (:LINEAR LEN-WHEN-PREFIXP))
     (56 47 (:REWRITE DEFAULT-<-2))
     (55 47 (:REWRITE DEFAULT-<-1))
     (52 50 (:REWRITE DEFAULT-+-1))
     (50 4 (:REWRITE ADE::LEN-NTHCDR))
     (48 24
         (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (42 22 (:REWRITE DEFAULT-CAR))
     (38 38
         (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (35 19 (:REWRITE ADE::NFIX-OF-NAT))
     (25 25 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (20 4 (:REWRITE CAR-OF-TAKE))
     (16 5 (:REWRITE LEN-OF-TAKE))
     (12 4 (:DEFINITION NATP))
     (11 3 (:REWRITE FOLD-CONSTS-IN-+))
     (6 6 (:REWRITE TAKE-WHEN-ATOM))
     (4 4 (:TYPE-PRESCRIPTION NATP))
     (3 3
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (3 1 (:REWRITE LIST-FIX-WHEN-TRUE-LISTP))
     (2 2 (:REWRITE DEFAULT-UNARY-MINUS))
     (2 1 (:REWRITE UNICITY-OF-0))
     (1 1 (:REWRITE CDR-CONS))
     (1 1 (:DEFINITION TRUE-LISTP))
     (1 1 (:DEFINITION FIX)))
(ADE::ASSOC-EQ-VALUES-MAKE-LIST
     (195 5 (:DEFINITION ADE::ASSOC-EQ-VALUES))
     (157 12
          (:REWRITE ADE::SINGLETON-ASSOC-EQ-VALUES))
     (72 30 (:REWRITE ZP-OPEN))
     (66 20 (:REWRITE CONSP-OF-REPEAT))
     (47 6 (:DEFINITION LEN))
     (33 6 (:REWRITE LEN-OF-REPEAT))
     (27 11 (:REWRITE DEFAULT-CDR))
     (26 26 (:REWRITE DEFAULT-<-2))
     (26 26 (:REWRITE DEFAULT-<-1))
     (20 20 (:LINEAR LEN-WHEN-PREFIXP))
     (20 5 (:REWRITE DEFAULT-CAR))
     (18 6 (:REWRITE ADE::NFIX-OF-NAT))
     (17 12 (:REWRITE DEFAULT-+-2))
     (12 12 (:REWRITE DEFAULT-+-1))
     (10 10
         (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (9 3 (:DEFINITION NFIX))
     (9 3 (:DEFINITION NATP))
     (5 1 (:REWRITE FOLD-CONSTS-IN-+))
     (3 3 (:TYPE-PRESCRIPTION NATP))
     (2 1 (:REWRITE UNICITY-OF-0))
     (1 1 (:REWRITE CDR-CONS))
     (1 1 (:DEFINITION FIX)))
(ADE::ASSOC-EQ-VALUES-TAKE-NTHCDR
     (1232 1047
           (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (1090 85
           (:REWRITE ADE::SINGLETON-ASSOC-EQ-VALUES))
     (1057 652 (:REWRITE DEFAULT-+-2))
     (752 562 (:REWRITE DEFAULT-<-2))
     (680 652 (:REWRITE DEFAULT-+-1))
     (666 562 (:REWRITE DEFAULT-<-1))
     (562 172 (:REWRITE TAKE-WHEN-ATOM))
     (558 558 (:LINEAR LEN-WHEN-PREFIXP))
     (500 46 (:DEFINITION MEMBER-EQUAL))
     (491 58 (:REWRITE ADE::LEN-NTHCDR))
     (425 276 (:REWRITE ZP-OPEN))
     (279 279
          (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (135 47 (:DEFINITION NATP))
     (110 40 (:REWRITE FOLD-CONSTS-IN-+))
     (83 3 (:REWRITE LEN-WHEN-PREFIXP))
     (72 16 (:REWRITE CONSP-OF-REPEAT))
     (66 66
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (65 5
         (:REWRITE ADE::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
     (56 3 (:REWRITE PREFIXP-WHEN-EQUAL-LENGTHS))
     (47 47 (:TYPE-PRESCRIPTION NATP))
     (47 9 (:REWRITE ADE::ASSOC-EQ-VALUE-CONS-2))
     (34 6 (:REWRITE REPEAT-WHEN-ZP))
     (8 8 (:REWRITE TAKE-UNDER-IFF))
     (8 4 (:REWRITE LEN-OF-REPEAT))
     (6 6 (:TYPE-PRESCRIPTION PREFIXP))
     (3 3
        (:REWRITE PREFIXP-WHEN-NOT-CONSP-RIGHT))
     (3 3
        (:REWRITE PREFIXP-WHEN-NOT-CONSP-LEFT))
     (3 3 (:REWRITE PREFIXP-TRANSITIVE . 2))
     (3 3 (:REWRITE PREFIXP-TRANSITIVE . 1))
     (3 3
        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 2))
     (3 3
        (:REWRITE PREFIXP-ONE-WAY-OR-ANOTHER . 1))
     (2 2
        (:REWRITE ADE::NOT-MEMBER-NTHCDR-LEMMA)))
(ADE::ASSOC-EQ-VALUES-SUBSEQ-ARGS-PAIRLIS$-ARGS
     (13385 8742 (:REWRITE DEFAULT-+-2))
     (8038 8038 (:LINEAR LEN-WHEN-PREFIXP))
     (6166 5572 (:REWRITE DEFAULT-<-1))
     (4019 4019
           (:LINEAR ADE::A-HELPFUL-LEMMA-FOR-TREE-INDUCTIONS))
     (980 376 (:REWRITE CONSP-OF-REPEAT))
     (483 161 (:DEFINITION POSP))
     (450 87 (:REWRITE REPEAT-UNDER-IFF))
     (317 40
          (:REWRITE ADE::ASSOC-EQ-VALUE-PAIRLIS$-NOT-MEMBER))
     (313 313
          (:TYPE-PRESCRIPTION STR::TRUE-LISTP-OF-EXPLODE))
     (233 233
          (:TYPE-PRESCRIPTION STRINGP-SUBSEQ-TYPE-PRESCRIPTION))
     (230 216 (:REWRITE DEFAULT-UNARY-MINUS))
     (213 213
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (190 95 (:REWRITE LEN-OF-REPEAT))
     (161 161 (:TYPE-PRESCRIPTION POSP))
     (133 82 (:REWRITE STR::CONSP-OF-EXPLODE))
     (116 26
          (:REWRITE ADE::NOT-MEMBER-TAKE-NTHCDR-LEMMA))
     (116 26
          (:REWRITE ADE::NOT-MEMBER-NTHCDR-LEMMA))
     (79 6
         (:REWRITE ADE::ASSOC-EQ-VALUES-TAKE-1))
     (29 29
         (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
     (24 24 (:REWRITE LIST-FIX-UNDER-IFF)))
