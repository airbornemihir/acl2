(IN-CHARSET-ELT (14 14 (:REWRITE DEFAULT-CDR))
                (5 5 (:REWRITE DEFAULT-CAR))
                (4 4 (:REWRITE DEFAULT-CHAR-CODE)))
(IN-CHARSET (15 15 (:REWRITE DEFAULT-CDR))
            (11 11 (:REWRITE DEFAULT-CAR)))
(STORE-BACKREFS)
(STORE-BACKREFS-INPUT-LIST
     (2888 1444
           (:TYPE-PRESCRIPTION MIN-IDX-IL-TYPE))
     (1385 4 (:DEFINITION BACKREF-LISTP))
     (1308 72 (:DEFINITION MEMBER-EQUAL))
     (1142 34 (:REWRITE MEMBER-MIN-IDX))
     (831 115 (:REWRITE DEFAULT-<-2))
     (826 81 (:REWRITE INTEGERP-NUMBERP))
     (545 115 (:REWRITE DEFAULT-<-1))
     (475 43 (:REWRITE MIN-IDX-IL-TYPE))
     (370 304 (:REWRITE DEFAULT-CAR))
     (272 245 (:REWRITE DEFAULT-CDR))
     (252 36
          (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
     (229 55
          (:REWRITE PSEUDO-INPUT-LISTP-OF-CDR-WHEN-PSEUDO-INPUT-LISTP))
     (206 158 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
     (183 15 (:REWRITE INPUT-LIST-ELTP-SUFFIC))
     (180 180 (:REWRITE SUBSETP-TRANS2))
     (180 180 (:REWRITE SUBSETP-TRANS))
     (178 3
          (:REWRITE INPUT-LIST-ELTP-OF-CAR-WHEN-INPUT-LISTP))
     (161 23 (:DEFINITION UPDATE-NTH))
     (158 158 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
     (144 144 (:REWRITE SUBSETP-MEMBER . 2))
     (144 144 (:REWRITE SUBSETP-MEMBER . 1))
     (118 5 (:REWRITE SUBSETP-OF-CONS))
     (110 110
          (:REWRITE PSEUDO-INPUT-LISTP-WHEN-SUBSETP-EQUAL))
     (106 2 (:REWRITE INPUT-LISTP-OF-UPDATE-NTH))
     (98 98 (:REWRITE INPUT-LISTP-PSEUDO))
     (86 38
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (67 67 (:REWRITE BACKREF-INTS))
     (55 55
         (:REWRITE PSEUDO-INPUT-LISTP-WHEN-NOT-CONSP))
     (38 2
         (:REWRITE INPUT-LISTP-OF-CDR-WHEN-INPUT-LISTP))
     (26 26 (:LINEAR LENGTH-EQUIV-LINEAR))
     (23 23 (:REWRITE ZP-OPEN))
     (23 23 (:REWRITE DEFAULT-+-2))
     (23 23 (:REWRITE DEFAULT-+-1))
     (14 14 (:LINEAR MEMBER-MIN-IDX))
     (14 14 (:LINEAR LONGEST-IL-MIN-LEN))
     (13 13 (:LINEAR LONGEST-IL-MAX-LEN))
     (13 13 (:LINEAR BACKREF-LISTP-NTH-LINEAR)))
(STORE-BACKREFS-PSEUDO-IL
 (173 5 (:DEFINITION PSEUDO-BACKREF-LISTP))
 (102 81 (:REWRITE DEFAULT-CAR))
 (99 78 (:REWRITE DEFAULT-CDR))
 (91 13 (:DEFINITION UPDATE-NTH))
 (56 4 (:DEFINITION MEMBER-EQUAL))
 (47 2 (:REWRITE SUBSETP-OF-CONS))
 (46 38 (:REWRITE DEFAULT-<-1))
 (38 38 (:REWRITE DEFAULT-<-2))
 (38
   2
   (:REWRITE PSEUDO-INPUT-LIST-ELTP-WHEN-MEMBER-EQUAL-OF-PSEUDO-INPUT-LISTP))
 (25 25 (:REWRITE INPUT-LISTP-PSEUDO))
 (24 24 (:REWRITE SUBSETP-TRANS2))
 (24 24 (:REWRITE SUBSETP-TRANS))
 (22 22 (:REWRITE INPUT-LIST-ELTP-THM))
 (21 21 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
 (20 20 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
 (20 20 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
 (17 17 (:REWRITE BACKREF-INTS))
 (15 15 (:REWRITE BACKREF-LISTP-PSEUDO))
 (13 13 (:REWRITE ZP-OPEN))
 (13 13 (:REWRITE DEFAULT-+-2))
 (13 13 (:REWRITE DEFAULT-+-1))
 (9 9 (:REWRITE BACKREFP-PSEUDO))
 (8 8 (:REWRITE SUBSETP-MEMBER . 2))
 (8 8 (:REWRITE SUBSETP-MEMBER . 1))
 (6 2 (:REWRITE INTEGERP-NUMBERP))
 (2 2
    (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (1 1 (:REWRITE INPUT-LIST-ELTP-PSEUDO)))
(STORE-BACKREFS
     (3108 279 (:REWRITE DEFAULT-<-2))
     (2653 259 (:REWRITE INTEGERP-NUMBERP))
     (2374 700 (:REWRITE DEFAULT-CAR))
     (2056 1028
           (:TYPE-PRESCRIPTION LONGEST-IL-TYPE-WEAK))
     (1788 200 (:REWRITE LONGEST-IL-TYPE-WEAK))
     (1479 47 (:REWRITE MEMBER-MIN-IDX))
     (1014 270
           (:REWRITE PSEUDO-INPUT-LISTP-OF-CDR-WHEN-PSEUDO-INPUT-LISTP))
     (999 279 (:REWRITE DEFAULT-<-1))
     (919 58 (:DEFINITION MEMBER-EQUAL))
     (910 100 (:REWRITE SUBSETP-CAR-MEMBER))
     (714 77 (:REWRITE MIN-IDX-IL-TYPE))
     (547 547 (:REWRITE INPUT-LISTP-PSEUDO))
     (540 540
          (:REWRITE PSEUDO-INPUT-LISTP-WHEN-SUBSETP-EQUAL))
     (400 103 (:REWRITE INPUT-LIST-ELTP-THM))
     (376 376 (:REWRITE DEFAULT-CDR))
     (291 291 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (270 270
          (:REWRITE PSEUDO-INPUT-LISTP-WHEN-NOT-CONSP))
     (210 30
          (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
     (182 20
          (:REWRITE INPUT-LIST-ELTP-WHEN-MEMBER-EQUAL-OF-INPUT-LISTP))
     (150 102
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (136 136 (:REWRITE SUBSETP-TRANS2))
     (136 136 (:REWRITE SUBSETP-TRANS))
     (133 133 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
     (133 133 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
     (116 116 (:REWRITE SUBSETP-MEMBER . 2))
     (116 116 (:REWRITE SUBSETP-MEMBER . 1))
     (91 91 (:REWRITE BACKREF-INTS))
     (36 6
         (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
     (36 3
         (:REWRITE INPUT-LIST-ELTP-OF-CAR-WHEN-INPUT-LISTP))
     (32 32 (:LINEAR LENGTH-EQUIV-LINEAR))
     (27 3 (:DEFINITION TRUE-LISTP))
     (20 20
         (:REWRITE INPUT-LISTP-WHEN-NOT-CONSP))
     (17 1 (:REWRITE SUBSETP-OF-CONS))
     (16 16 (:LINEAR BACKREF-LISTP-NTH-LINEAR))
     (14 14 (:LINEAR MEMBER-MIN-IDX))
     (12 12 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
     (12 12 (:TYPE-PRESCRIPTION INPUT-LIST-ELTP))
     (12 6 (:REWRITE SET::NONEMPTY-MEANS-SET))
     (6 6 (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
     (6 6 (:REWRITE SET::IN-SET)))
(STORE-BACKREFS-MIN-IDX
     (598 299
          (:TYPE-PRESCRIPTION MIN-IDX-IL-TYPE))
     (348 8 (:REWRITE DEFAULT-<-2))
     (260 16 (:REWRITE INTEGERP-NUMBERP))
     (216 8 (:REWRITE MEMBER-MIN-IDX))
     (180 8 (:REWRITE MIN-IDX-IL-TYPE))
     (124 10
          (:REWRITE PSEUDO-INPUT-LISTP-OF-CDR-WHEN-PSEUDO-INPUT-LISTP))
     (120 8 (:DEFINITION MEMBER-EQUAL))
     (112 16 (:REWRITE SUBSETP-CAR-MEMBER))
     (64 16
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (47 44 (:REWRITE DEFAULT-CAR))
     (44 44
         (:REWRITE PSEUDO-INPUT-LISTP-WHEN-SUBSETP-EQUAL))
     (42 4 (:REWRITE STORE-BACKREFS-PSEUDO-IL))
     (40 40 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (40 8 (:REWRITE DEFAULT-<-1))
     (35 5 (:DEFINITION UPDATE-NTH))
     (34 34 (:REWRITE DEFAULT-CDR))
     (32 32 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (22 22
         (:REWRITE PSEUDO-INPUT-LISTP-WHEN-NOT-CONSP))
     (22 22 (:REWRITE INPUT-LISTP-PSEUDO))
     (16 16 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
     (16 16 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
     (16 16 (:REWRITE SUBSETP-TRANS2))
     (16 16 (:REWRITE SUBSETP-TRANS))
     (16 16 (:REWRITE SUBSETP-MEMBER . 2))
     (16 16 (:REWRITE SUBSETP-MEMBER . 1))
     (8 8 (:REWRITE INPUT-LIST-ELTP-THM))
     (8 8 (:REWRITE BACKREF-INTS))
     (5 5 (:REWRITE ZP-OPEN))
     (5 5 (:REWRITE DEFAULT-+-2))
     (5 5 (:REWRITE DEFAULT-+-1))
     (2 2 (:LINEAR MEMBER-MIN-IDX))
     (2 2 (:LINEAR LONGEST-IL-MIN-LEN))
     (2 1
        (:TYPE-PRESCRIPTION TRUE-LISTP-UPDATE-NTH))
     (1 1 (:TYPE-PRESCRIPTION UPDATE-NTH))
     (1 1 (:TYPE-PRESCRIPTION TRUE-LISTP)))
(CHECK-BACKREF
     (42 25 (:REWRITE DEFAULT-<-1))
     (25 25 (:REWRITE DEFAULT-<-2))
     (25 6 (:REWRITE INPUT-LIST-ELTP-THM))
     (20 20
         (:TYPE-PRESCRIPTION TRUE-LISTP-SUBSEQ-TYPE-PRESCRIPTION))
     (20 20
         (:TYPE-PRESCRIPTION STRINGP-SUBSEQ-TYPE-PRESCRIPTION))
     (14 14 (:REWRITE DEFAULT-CDR))
     (10 10 (:REWRITE DEFAULT-CAR))
     (10 1 (:REWRITE INPUT-LIST-ELTP-SUFFIC))
     (8 1 (:DEFINITION INPUT-LIST-ELTP))
     (3 3 (:TYPE-PRESCRIPTION INPUT-LIST-ELTP))
     (3 3 (:REWRITE DEFAULT-+-2))
     (3 3 (:REWRITE DEFAULT-+-1))
     (2 2
        (:REWRITE INPUT-LIST-ELTP-WHEN-MEMBER-EQUAL-OF-INPUT-LISTP))
     (2 2 (:REWRITE BACKREF-INTS))
     (2 2 (:LINEAR LENGTH-EQUIV-LINEAR))
     (2 2 (:DEFINITION BACKREF-LISTP))
     (1 1 (:TYPE-PRESCRIPTION BACKREF-LISTP))
     (1 1 (:REWRITE FOLD-CONSTS-IN-+))
     (1 1 (:REWRITE DEFAULT-UNARY-MINUS))
     (1 1 (:LINEAR LONGEST-IL-MAX-LEN))
     (1 1 (:LINEAR BACKREF-LISTP-NTH-LINEAR)))
(CHECK-BACKREF-INDEXP
     (320 16 (:REWRITE TAKE-OF-TOO-MANY))
     (256 32 (:DEFINITION LEN))
     (240 160
          (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (240 16 (:REWRITE TAKE-OF-LEN-FREE))
     (208 208 (:TYPE-PRESCRIPTION LEN))
     (117 85 (:REWRITE DEFAULT-+-2))
     (96 60 (:REWRITE DEFAULT-CDR))
     (90 74 (:REWRITE DEFAULT-<-2))
     (88 16 (:REWRITE TAKE-WHEN-ATOM))
     (85 85 (:REWRITE DEFAULT-+-1))
     (82 74 (:REWRITE DEFAULT-<-1))
     (80 80 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (76 8 (:DEFINITION NTHCDR))
     (56 20 (:REWRITE DEFAULT-CAR))
     (44 4 (:REWRITE DEFAULT-COERCE-3))
     (32 4 (:REWRITE CONSP-OF-TAKE))
     (28 9 (:REWRITE INPUT-LIST-ELTP-THM))
     (23 23 (:REWRITE FOLD-CONSTS-IN-+))
     (16 16 (:TYPE-PRESCRIPTION NFIX))
     (11 11 (:REWRITE DEFAULT-UNARY-MINUS))
     (10 1 (:REWRITE INPUT-LIST-ELTP-SUFFIC))
     (8 8 (:REWRITE DEFAULT-COERCE-2))
     (8 1 (:DEFINITION INPUT-LIST-ELTP))
     (4 4 (:REWRITE DEFAULT-COERCE-1))
     (3 3 (:TYPE-PRESCRIPTION INPUT-LIST-ELTP))
     (2 2
        (:REWRITE INPUT-LIST-ELTP-WHEN-MEMBER-EQUAL-OF-INPUT-LISTP))
     (2 2 (:REWRITE BACKREF-INTS))
     (2 2 (:LINEAR LENGTH-EQUIV-LINEAR))
     (2 2 (:DEFINITION BACKREF-LISTP))
     (1 1 (:TYPE-PRESCRIPTION BACKREF-LISTP))
     (1 1 (:LINEAR LONGEST-IL-MAX-LEN))
     (1 1 (:LINEAR BACKREF-LISTP-NTH-LINEAR)))
(CHECK-BACKREF-GREATER
     (320 16 (:REWRITE TAKE-OF-TOO-MANY))
     (256 32 (:DEFINITION LEN))
     (240 160
          (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (240 16 (:REWRITE TAKE-OF-LEN-FREE))
     (208 208 (:TYPE-PRESCRIPTION LEN))
     (117 85 (:REWRITE DEFAULT-+-2))
     (96 60 (:REWRITE DEFAULT-CDR))
     (88 72 (:REWRITE DEFAULT-<-2))
     (88 16 (:REWRITE TAKE-WHEN-ATOM))
     (85 85 (:REWRITE DEFAULT-+-1))
     (80 80 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (78 72 (:REWRITE DEFAULT-<-1))
     (76 8 (:DEFINITION NTHCDR))
     (56 20 (:REWRITE DEFAULT-CAR))
     (44 4 (:REWRITE DEFAULT-COERCE-3))
     (32 4 (:REWRITE CONSP-OF-TAKE))
     (28 9 (:REWRITE INPUT-LIST-ELTP-THM))
     (23 23 (:REWRITE FOLD-CONSTS-IN-+))
     (16 16 (:TYPE-PRESCRIPTION NFIX))
     (11 11 (:REWRITE DEFAULT-UNARY-MINUS))
     (10 1 (:REWRITE INPUT-LIST-ELTP-SUFFIC))
     (8 8 (:REWRITE DEFAULT-COERCE-2))
     (8 1 (:DEFINITION INPUT-LIST-ELTP))
     (4 4 (:REWRITE DEFAULT-COERCE-1))
     (3 3 (:TYPE-PRESCRIPTION INPUT-LIST-ELTP))
     (2 2
        (:REWRITE INPUT-LIST-ELTP-WHEN-MEMBER-EQUAL-OF-INPUT-LISTP))
     (2 2 (:REWRITE BACKREF-INTS))
     (2 2 (:LINEAR LENGTH-EQUIV-LINEAR))
     (2 2 (:DEFINITION BACKREF-LISTP))
     (1 1 (:TYPE-PRESCRIPTION BACKREF-LISTP))
     (1 1 (:LINEAR LONGEST-IL-MAX-LEN))
     (1 1 (:LINEAR BACKREF-LISTP-NTH-LINEAR)))
(RUN-REGEX-MEASURE)
(RUN-REGEX-LIST-MEASURE (6 3 (:TYPE-PRESCRIPTION MIN-IDX-IL-TYPE))
                        (3 3
                           (:TYPE-PRESCRIPTION PSEUDO-INPUT-LISTP)))
(RUN-REPEAT-MEASURE)
(RUN-REPEAT-LIST-MEASURE (6 3 (:TYPE-PRESCRIPTION MIN-IDX-IL-TYPE))
                         (3 3
                            (:TYPE-PRESCRIPTION PSEUDO-INPUT-LISTP)))
(REG-STR-BR-GUARD)
(REG-ILIST-GUARD)
(REPEAT-GUARD)
(INTEGERP-+)
(INTEGERP--)
(O-P-RUN-REGEX-MEASURE (31 1 (:DEFINITION REGEX-MEASURE))
                       (27 13 (:REWRITE DEFAULT-+-2))
                       (25 18 (:REWRITE DEFAULT-CAR))
                       (16 13 (:REWRITE DEFAULT-+-1))
                       (10 4 (:REWRITE DEFAULT-UNARY-MINUS))
                       (8 6 (:REWRITE DEFAULT-CDR))
                       (4 2 (:REWRITE INTEGERP-+))
                       (3 3
                          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                       (3 3 (:REWRITE INTEGERP-NUMBERP))
                       (2 2 (:REWRITE INTEGERP--))
                       (2 2 (:REWRITE FOLD-CONSTS-IN-+))
                       (2 2 (:REWRITE DEFAULT-<-2))
                       (2 2 (:REWRITE DEFAULT-<-1))
                       (1 1
                          (:REWRITE NOT-R-REPEAT-P-R-REPEAT-REGEX))
                       (1 1
                          (:REWRITE NOT-R-GROUP-P-R-GROUP-REGEX))
                       (1 1
                          (:REWRITE NOT-R-DISJUNCT-P-R-DISJUNCT-RIGHT))
                       (1 1
                          (:REWRITE NOT-R-DISJUNCT-P-R-DISJUNCT-LEFT))
                       (1 1
                          (:REWRITE NOT-R-CONCAT-P-R-CONCAT-RIGHT))
                       (1 1
                          (:REWRITE NOT-R-CONCAT-P-R-CONCAT-LEFT)))
(O-P-RUN-REGEX-LIST-MEASURE
     (312 4 (:DEFINITION MIN-IDX-IL))
     (296 4 (:DEFINITION MIN))
     (226 113
          (:TYPE-PRESCRIPTION MIN-IDX-IL-TYPE))
     (152 12 (:REWRITE INTEGERP-NUMBERP))
     (142 6 (:REWRITE DEFAULT-<-2))
     (137 137
          (:TYPE-PRESCRIPTION PSEUDO-INPUT-LISTP))
     (112 4 (:REWRITE DEFAULT-UNARY-MINUS))
     (108 4 (:REWRITE MEMBER-MIN-IDX))
     (86 10 (:REWRITE MIN-IDX-IL-TYPE))
     (60 12
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (60 4 (:DEFINITION MEMBER-EQUAL))
     (56 30 (:REWRITE DEFAULT-CAR))
     (56 8 (:REWRITE SUBSETP-CAR-MEMBER))
     (40 15 (:REWRITE DEFAULT-+-2))
     (32 2 (:REWRITE INTEGERP-+))
     (31 1 (:DEFINITION REGEX-MEASURE))
     (28 4
         (:REWRITE PSEUDO-INPUT-LISTP-OF-CDR-WHEN-PSEUDO-INPUT-LISTP))
     (25 17 (:REWRITE DEFAULT-CDR))
     (24 24
         (:REWRITE PSEUDO-INPUT-LISTP-WHEN-SUBSETP-EQUAL))
     (22 6 (:REWRITE DEFAULT-<-1))
     (21 15 (:REWRITE DEFAULT-+-1))
     (20 20 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (16 16 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (16 2 (:REWRITE INTEGERP--))
     (15 3 (:DEFINITION LEN))
     (12 12
         (:REWRITE PSEUDO-INPUT-LISTP-WHEN-NOT-CONSP))
     (12 12 (:REWRITE INPUT-LISTP-PSEUDO))
     (8 8 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
     (8 8 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
     (8 8 (:REWRITE SUBSETP-TRANS2))
     (8 8 (:REWRITE SUBSETP-TRANS))
     (8 8 (:REWRITE SUBSETP-MEMBER . 2))
     (8 8 (:REWRITE SUBSETP-MEMBER . 1))
     (4 4 (:REWRITE INPUT-LIST-ELTP-THM))
     (4 4 (:REWRITE BACKREF-INTS))
     (2 2 (:REWRITE FOLD-CONSTS-IN-+))
     (1 1
        (:REWRITE NOT-R-REPEAT-P-R-REPEAT-REGEX))
     (1 1
        (:REWRITE NOT-R-GROUP-P-R-GROUP-REGEX))
     (1 1
        (:REWRITE NOT-R-DISJUNCT-P-R-DISJUNCT-RIGHT))
     (1 1
        (:REWRITE NOT-R-DISJUNCT-P-R-DISJUNCT-LEFT))
     (1 1
        (:REWRITE NOT-R-CONCAT-P-R-CONCAT-RIGHT))
     (1 1
        (:REWRITE NOT-R-CONCAT-P-R-CONCAT-LEFT)))
(O-P-RUN-REPEAT-MEASURE (35 28 (:REWRITE DEFAULT-CAR))
                        (31 1 (:DEFINITION REGEX-MEASURE))
                        (30 16 (:REWRITE DEFAULT-+-2))
                        (19 16 (:REWRITE DEFAULT-+-1))
                        (11 9 (:REWRITE DEFAULT-CDR))
                        (10 4 (:REWRITE DEFAULT-UNARY-MINUS))
                        (5 5 (:REWRITE DEFAULT-<-2))
                        (5 5 (:REWRITE DEFAULT-<-1))
                        (4 2 (:REWRITE INTEGERP-+))
                        (3 3
                           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                        (3 3 (:REWRITE INTEGERP-NUMBERP))
                        (3 3 (:REWRITE DEFAULT-*-2))
                        (3 3 (:REWRITE DEFAULT-*-1))
                        (2 2 (:REWRITE INTEGERP--))
                        (2 2 (:REWRITE FOLD-CONSTS-IN-+))
                        (1 1
                           (:REWRITE NOT-R-REPEAT-P-R-REPEAT-REGEX))
                        (1 1
                           (:REWRITE NOT-R-GROUP-P-R-GROUP-REGEX))
                        (1 1
                           (:REWRITE NOT-R-DISJUNCT-P-R-DISJUNCT-RIGHT))
                        (1 1
                           (:REWRITE NOT-R-DISJUNCT-P-R-DISJUNCT-LEFT))
                        (1 1
                           (:REWRITE NOT-R-CONCAT-P-R-CONCAT-RIGHT))
                        (1 1
                           (:REWRITE NOT-R-CONCAT-P-R-CONCAT-LEFT)))
(O-P-RUN-REPEAT-LIST-MEASURE
     (312 4 (:DEFINITION MIN-IDX-IL))
     (296 4 (:DEFINITION MIN))
     (226 113
          (:TYPE-PRESCRIPTION MIN-IDX-IL-TYPE))
     (152 12 (:REWRITE INTEGERP-NUMBERP))
     (145 9 (:REWRITE DEFAULT-<-2))
     (137 137
          (:TYPE-PRESCRIPTION PSEUDO-INPUT-LISTP))
     (112 4 (:REWRITE DEFAULT-UNARY-MINUS))
     (108 4 (:REWRITE MEMBER-MIN-IDX))
     (86 10 (:REWRITE MIN-IDX-IL-TYPE))
     (72 40 (:REWRITE DEFAULT-CAR))
     (60 12
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (60 4 (:DEFINITION MEMBER-EQUAL))
     (56 8 (:REWRITE SUBSETP-CAR-MEMBER))
     (45 19 (:REWRITE DEFAULT-+-2))
     (32 2 (:REWRITE INTEGERP-+))
     (31 21 (:REWRITE DEFAULT-CDR))
     (31 1 (:DEFINITION REGEX-MEASURE))
     (28 4
         (:REWRITE PSEUDO-INPUT-LISTP-OF-CDR-WHEN-PSEUDO-INPUT-LISTP))
     (25 19 (:REWRITE DEFAULT-+-1))
     (25 9 (:REWRITE DEFAULT-<-1))
     (24 24
         (:REWRITE PSEUDO-INPUT-LISTP-WHEN-SUBSETP-EQUAL))
     (20 20 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (20 4 (:DEFINITION LEN))
     (16 16 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (16 2 (:REWRITE INTEGERP--))
     (12 12
         (:REWRITE PSEUDO-INPUT-LISTP-WHEN-NOT-CONSP))
     (12 12 (:REWRITE INPUT-LISTP-PSEUDO))
     (8 8 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
     (8 8 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
     (8 8 (:REWRITE SUBSETP-TRANS2))
     (8 8 (:REWRITE SUBSETP-TRANS))
     (8 8 (:REWRITE SUBSETP-MEMBER . 2))
     (8 8 (:REWRITE SUBSETP-MEMBER . 1))
     (4 4 (:REWRITE INPUT-LIST-ELTP-THM))
     (4 4 (:REWRITE BACKREF-INTS))
     (3 3 (:REWRITE DEFAULT-*-2))
     (3 3 (:REWRITE DEFAULT-*-1))
     (2 2 (:REWRITE FOLD-CONSTS-IN-+))
     (1 1
        (:REWRITE NOT-R-REPEAT-P-R-REPEAT-REGEX))
     (1 1
        (:REWRITE NOT-R-GROUP-P-R-GROUP-REGEX))
     (1 1
        (:REWRITE NOT-R-DISJUNCT-P-R-DISJUNCT-RIGHT))
     (1 1
        (:REWRITE NOT-R-DISJUNCT-P-R-DISJUNCT-LEFT))
     (1 1
        (:REWRITE NOT-R-CONCAT-P-R-CONCAT-RIGHT))
     (1 1
        (:REWRITE NOT-R-CONCAT-P-R-CONCAT-LEFT)))
(RUN-REGEX (11151 928 (:REWRITE DEFAULT-<-2))
           (10612 1066 (:REWRITE INTEGERP-NUMBERP))
           (9412 290 (:REWRITE MEMBER-MIN-IDX))
           (5684 590 (:REWRITE SUBSETP-CAR-MEMBER))
           (5358 311 (:DEFINITION MEMBER-EQUAL))
           (4702 2522 (:REWRITE DEFAULT-CAR))
           (4008 1888 (:REWRITE DEFAULT-+-2))
           (3082 398 (:REWRITE DEFAULT-UNARY-MINUS))
           (2734 928 (:REWRITE DEFAULT-<-1))
           (2480 1888 (:REWRITE DEFAULT-+-1))
           (2124 204 (:REWRITE LONGEST-IL-TYPE-WEAK))
           (2033 1792 (:REWRITE DEFAULT-CDR))
           (1866 933
                 (:TYPE-PRESCRIPTION LONGEST-IL-TYPE-WEAK))
           (1777 637 (:REWRITE INPUT-LIST-ELTP-THM))
           (1692 1692
                 (:REWRITE PSEUDO-INPUT-LISTP-WHEN-SUBSETP-EQUAL))
           (1573 713
                 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
           (1558 1558 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
           (1554 222
                 (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
           (1536 72
                 (:DEFINITION REMOVE-ALL-LONGER-EQUAL-IL))
           (846 846
                (:REWRITE PSEUDO-INPUT-LISTP-WHEN-NOT-CONSP))
           (826 826 (:REWRITE SUBSETP-TRANS2))
           (826 826 (:REWRITE SUBSETP-TRANS))
           (817 817 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
           (817 817 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
           (622 622 (:REWRITE SUBSETP-MEMBER . 2))
           (622 622 (:REWRITE SUBSETP-MEMBER . 1))
           (576 72
                (:DEFINITION REMOVE-ALL-LONGER-EQUAL-FN))
           (564 564 (:REWRITE BACKREF-INTS))
           (468 36
                (:REWRITE COMMUTATIVITY-OF-APPEND-UNDER-SET-EQUIV))
           (444 72 (:DEFINITION BINARY-APPEND))
           (412 126
                (:REWRITE INPUT-LIST-ELTP-WHEN-MEMBER-EQUAL-OF-INPUT-LISTP))
           (256 40
                (:REWRITE REMOVE-ALL-LONGER-EQUAL-IL-PSEUDO))
           (253 253
                (:REWRITE NOT-R-CONCAT-P-R-CONCAT-LEFT))
           (252 144 (:REWRITE APPEND-WHEN-NOT-CONSP))
           (202 202
                (:REWRITE NOT-R-CONCAT-P-R-CONCAT-RIGHT))
           (168 168
                (:REWRITE NOT-R-DISJUNCT-P-R-DISJUNCT-RIGHT))
           (168 168
                (:REWRITE NOT-R-DISJUNCT-P-R-DISJUNCT-LEFT))
           (168 96
                (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
           (163 163
                (:REWRITE NOT-R-REPEAT-P-R-REPEAT-REGEX))
           (163 163
                (:REWRITE NOT-R-GROUP-P-R-GROUP-REGEX))
           (150 20
                (:REWRITE INPUT-LIST-ELTP-OF-CAR-WHEN-INPUT-LISTP))
           (135 45 (:REWRITE R-REPEAT-NOT-REGEX))
           (135 45 (:REWRITE R-GROUP-NOT-REGEX))
           (135 45 (:REWRITE R-EXACT-NOT-REGEX))
           (135 45 (:REWRITE R-DISJUNCT-NOT-REGEX))
           (135 45 (:REWRITE R-CONCAT-NOT-REGEX))
           (135 45 (:REWRITE R-CHARSET-NOT-REGEX))
           (135 45 (:REWRITE R-BACKREF-NOT-REGEX))
           (86 86 (:REWRITE DEFAULT-*-2))
           (86 86 (:REWRITE DEFAULT-*-1))
           (80 80 (:TYPE-PRESCRIPTION INPUT-LIST-ELTP))
           (78 78 (:LINEAR LENGTH-EQUIV-LINEAR))
           (74 74
               (:REWRITE INPUT-LISTP-WHEN-NOT-CONSP))
           (61 61 (:LINEAR MEMBER-MIN-IDX))
           (52 16
               (:LINEAR LONGEST-IL-GREATER-COMPARE-TO-MIN))
           (51 3 (:REWRITE SUBSETP-OF-CONS))
           (39 39 (:LINEAR BACKREF-LISTP-NTH-LINEAR))
           (24 4
               (:REWRITE REMOVE-ALL-LONGER-EQUAL-IL-IL))
           (9 9 (:TYPE-PRESCRIPTION TRUE-LISTP))
           (9 3
              (:REWRITE REGEX-R-REPEAT-ACCESSOR-TYPES))
           (7 7
              (:REWRITE NOT-R-REPEAT-P-R-REPEAT-MIN)))
(RUN-REGEX-FLAG
     (12277 993 (:REWRITE DEFAULT-<-2))
     (11637 1171 (:REWRITE INTEGERP-NUMBERP))
     (10249 321 (:REWRITE MEMBER-MIN-IDX))
     (6118 652 (:REWRITE SUBSETP-CAR-MEMBER))
     (5823 342 (:DEFINITION MEMBER-EQUAL))
     (5311 2961 (:REWRITE DEFAULT-CAR))
     (4516 2122 (:REWRITE DEFAULT-+-2))
     (3640 438 (:REWRITE DEFAULT-UNARY-MINUS))
     (2948 993 (:REWRITE DEFAULT-<-1))
     (2780 2122 (:REWRITE DEFAULT-+-1))
     (2310 2009 (:REWRITE DEFAULT-CDR))
     (2124 204 (:REWRITE LONGEST-IL-TYPE-WEAK))
     (1972 818
           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1907 681 (:REWRITE INPUT-LIST-ELTP-THM))
     (1866 933
           (:TYPE-PRESCRIPTION LONGEST-IL-TYPE-WEAK))
     (1852 1852
           (:REWRITE PSEUDO-INPUT-LISTP-WHEN-SUBSETP-EQUAL))
     (1713 1713 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (1554 222
           (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
     (1536 72
           (:DEFINITION REMOVE-ALL-LONGER-EQUAL-IL))
     (926 926
          (:REWRITE PSEUDO-INPUT-LISTP-WHEN-NOT-CONSP))
     (888 888 (:REWRITE SUBSETP-TRANS2))
     (888 888 (:REWRITE SUBSETP-TRANS))
     (879 879 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
     (879 879 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
     (684 684 (:REWRITE SUBSETP-MEMBER . 2))
     (684 684 (:REWRITE SUBSETP-MEMBER . 1))
     (603 603 (:REWRITE BACKREF-INTS))
     (576 72
          (:DEFINITION REMOVE-ALL-LONGER-EQUAL-FN))
     (468 36
          (:REWRITE COMMUTATIVITY-OF-APPEND-UNDER-SET-EQUIV))
     (444 72 (:DEFINITION BINARY-APPEND))
     (424 138
          (:REWRITE INPUT-LIST-ELTP-WHEN-MEMBER-EQUAL-OF-INPUT-LISTP))
     (275 275
          (:REWRITE NOT-R-CONCAT-P-R-CONCAT-LEFT))
     (256 40
          (:REWRITE REMOVE-ALL-LONGER-EQUAL-IL-PSEUDO))
     (252 144 (:REWRITE APPEND-WHEN-NOT-CONSP))
     (224 224
          (:REWRITE NOT-R-CONCAT-P-R-CONCAT-RIGHT))
     (204 2 (:TYPE-PRESCRIPTION RETURN-LAST))
     (190 190
          (:REWRITE NOT-R-DISJUNCT-P-R-DISJUNCT-RIGHT))
     (190 190
          (:REWRITE NOT-R-DISJUNCT-P-R-DISJUNCT-LEFT))
     (185 185
          (:REWRITE NOT-R-REPEAT-P-R-REPEAT-REGEX))
     (185 185
          (:REWRITE NOT-R-GROUP-P-R-GROUP-REGEX))
     (168 96
          (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
     (162 22
          (:REWRITE INPUT-LIST-ELTP-OF-CAR-WHEN-INPUT-LISTP))
     (141 47 (:REWRITE R-REPEAT-NOT-REGEX))
     (141 47 (:REWRITE R-GROUP-NOT-REGEX))
     (141 47 (:REWRITE R-EXACT-NOT-REGEX))
     (141 47 (:REWRITE R-DISJUNCT-NOT-REGEX))
     (141 47 (:REWRITE R-CONCAT-NOT-REGEX))
     (141 47 (:REWRITE R-CHARSET-NOT-REGEX))
     (141 47 (:REWRITE R-BACKREF-NOT-REGEX))
     (100 100 (:REWRITE DEFAULT-*-2))
     (100 100 (:REWRITE DEFAULT-*-1))
     (98 98 (:LINEAR LENGTH-EQUIV-LINEAR))
     (88 88 (:TYPE-PRESCRIPTION INPUT-LIST-ELTP))
     (77 77
         (:REWRITE INPUT-LISTP-WHEN-NOT-CONSP))
     (70 70 (:LINEAR MEMBER-MIN-IDX))
     (52 16
         (:LINEAR LONGEST-IL-GREATER-COMPARE-TO-MIN))
     (51 3 (:REWRITE SUBSETP-OF-CONS))
     (49 49 (:LINEAR BACKREF-LISTP-NTH-LINEAR))
     (24 4
         (:REWRITE REMOVE-ALL-LONGER-EQUAL-IL-IL))
     (9 3
        (:REWRITE REGEX-R-REPEAT-ACCESSOR-TYPES))
     (7 7
        (:REWRITE NOT-R-REPEAT-P-R-REPEAT-MIN))
     (6 6 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (4 1 (:DEFINITION POSP))
     (2 2
        (:TYPE-PRESCRIPTION THROW-NONEXEC-ERROR)))
(FLAG::FLAG-EQUIV-LEMMA)
(RUN-REGEX-FLAG-EQUIVALENCES)
(FLAG-LEMMA-FOR-RUN-REGEX-SUFFIXES1
     (31996 2503 (:REWRITE MEMBER-MIN-IDX))
     (19481 2375 (:REWRITE SUBSETP-CAR-MEMBER))
     (14204 1117 (:REWRITE TAKE-OF-LEN-FREE))
     (11020 2249 (:DEFINITION LEN))
     (7166 6611 (:REWRITE DEFAULT-+-1))
     (5566 5566 (:TYPE-PRESCRIPTION SUBSETP-EQUAL))
     (5010 5010 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (3451 3367
           (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (3030 3030
           (:TYPE-PRESCRIPTION LONGEST-IL-TYPE-WEAK))
     (2856 408
           (:REWRITE SUBSETP-IMPLIES-SUBSETP-CDR))
     (2783 2783 (:REWRITE SUBSETP-WHEN-ATOM-RIGHT))
     (2783 2783 (:REWRITE SUBSETP-WHEN-ATOM-LEFT))
     (2783 2783 (:REWRITE SUBSETP-TRANS2))
     (2783 2783 (:REWRITE SUBSETP-TRANS))
     (2596 1117 (:REWRITE TAKE-WHEN-ATOM))
     (2505 2505 (:REWRITE SUBSETP-MEMBER . 2))
     (2505 2505 (:REWRITE SUBSETP-MEMBER . 1))
     (2465 905 (:REWRITE R-BACKREF-NOT-REGEX))
     (2314 895 (:REWRITE R-CHARSET-NOT-REGEX))
     (2017 895 (:REWRITE R-EXACT-NOT-REGEX))
     (1726 1726 (:REWRITE BACKREF-INTS))
     (1494 1494 (:LINEAR LENGTH-EQUIV-LINEAR))
     (1077 799 (:REWRITE FOLD-CONSTS-IN-+))
     (1017 1017 (:REWRITE DEFAULT-COERCE-2))
     (912 152
          (:REWRITE SET::SETS-ARE-TRUE-LISTS-CHEAP))
     (894 894 (:LINEAR MEMBER-MIN-IDX))
     (592 592
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (555 555
          (:REWRITE NOT-R-BACKREF-P-R-BACKREF-INDEX))
     (475 171 (:DEFINITION BINARY-APPEND))
     (418 418 (:REWRITE BACKREFP-PSEUDO))
     (409 409 (:REWRITE DEFAULT-COERCE-1))
     (398 81 (:REWRITE CONSP-OF-REPEAT))
     (324 81 (:REWRITE REPEAT-WHEN-ZP))
     (304 304 (:TYPE-PRESCRIPTION SET::SETP-TYPE))
     (304 152 (:REWRITE SET::NONEMPTY-MEANS-SET))
     (298 38
          (:DEFINITION REMOVE-ALL-LONGER-EQUAL-IL))
     (276 92
          (:REWRITE REGEX-R-BACKREF-ACCESSOR-TYPES))
     (256 256
          (:REWRITE PSEUDO-INPUT-LISTP-WHEN-SUBSETP-EQUAL))
     (256 128
          (:TYPE-PRESCRIPTION TRUE-LISTP-APPEND))
     (256 128 (:REWRITE CONSP-OF-APPEND))
     (247 247
          (:REWRITE NOT-R-REPEAT-P-R-REPEAT-MIN))
     (238 106
          (:REWRITE REGEX-R-CONCAT-ACCESSOR-TYPES))
     (231 231 (:TYPE-PRESCRIPTION CHARSETP))
     (231 33 (:DEFINITION CHARSETP))
     (204 204
          (:REWRITE NOT-R-REPEAT-P-R-REPEAT-REGEX))
     (194 86
          (:REWRITE REGEX-R-DISJUNCT-ACCESSOR-TYPES))
     (162 162
          (:REWRITE NOT-R-REPEAT-P-R-REPEAT-MAX))
     (152 152
          (:TYPE-PRESCRIPTION SET::EMPTY-TYPE))
     (152 152 (:REWRITE SET::IN-SET))
     (152 152 (:REWRITE BACKREF-LISTP-TRUE-LISTP))
     (152 128
          (:REWRITE PSEUDO-INPUT-LISTP-WHEN-NOT-CONSP))
     (128 128 (:TYPE-PRESCRIPTION BINARY-APPEND))
     (128 128 (:REWRITE CDR-OF-APPEND-WHEN-CONSP))
     (128 128 (:REWRITE CAR-OF-APPEND))
     (127 127
          (:REWRITE NOT-R-CONCAT-P-R-CONCAT-LEFT))
     (99 33
         (:REWRITE REGEX-R-EXACT-ACCESSOR-TYPES))
     (99 33
         (:REWRITE REGEX-R-CHARSET-ACCESSOR-TYPES))
     (98 62
         (:REWRITE APPEND-ATOM-UNDER-LIST-EQUIV))
     (66 66
         (:REWRITE NOT-R-DISJUNCT-P-R-DISJUNCT-LEFT))
     (62 62 (:REWRITE NOT-R-EXACT-P-R-EXACT-VAL))
     (62 62
         (:REWRITE NOT-R-CHARSET-P-R-CHARSET-SET))
     (62 62 (:REWRITE BACKREF-LISTP-NTH))
     (60 60
         (:REWRITE NOT-R-GROUP-P-R-GROUP-REGEX))
     (57 57
         (:REWRITE NOT-R-DISJUNCT-P-R-DISJUNCT-RIGHT))
     (56 38
         (:DEFINITION REMOVE-ALL-LONGER-EQUAL-FN))
     (54 54
         (:REWRITE NOT-R-CONCAT-P-R-CONCAT-RIGHT))
     (33 33 (:DEFINITION CHARSET-MEMBERP))
     (32 24
         (:REWRITE INPUT-LIST-ELTP-WHEN-MEMBER-EQUAL-OF-INPUT-LISTP))
     (30 30
         (:LINEAR LONGEST-IL-GREATER-COMPARE-TO-MIN))
     (24 24
         (:TYPE-PRESCRIPTION REMOVE-ALL-LONGER-EQUAL-IL))
     (18 3 (:DEFINITION STORE-BACKREFS))
     (16 16
         (:REWRITE NOT-R-GROUP-P-R-GROUP-INDEX))
     (15 3 (:DEFINITION UPDATE-NTH)))
