(STR::LEN-OF-SUBSEQ-LIST
     (213 1 (:DEFINITION TAKE))
     (171 27 (:REWRITE NEGATIVE-WHEN-NATP))
     (170 2 (:REWRITE TAKE-OF-TOO-MANY))
     (125 2 (:REWRITE LEN-OF-NTHCDR))
     (122 2 (:REWRITE TAKE-OF-LEN-FREE))
     (100 13 (:REWRITE NATP-RW))
     (86 8 (:DEFINITION LEN))
     (83 58
         (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
     (69 1 (:REWRITE CAR-OF-NTHCDR))
     (63 17 (:REWRITE LEN-WHEN-ATOM))
     (61 2 (:REWRITE NTH-WHEN-BIGGER))
     (56 2 (:REWRITE CONSP-OF-NTHCDR))
     (48 36 (:REWRITE DEFAULT-<-2))
     (46 36 (:REWRITE DEFAULT-<-1))
     (44 11 (:REWRITE <-+-NEGATIVE-0-2))
     (43 11 (:REWRITE DEFAULT-CDR))
     (42 2 (:REWRITE TAKE-WHEN-ATOM))
     (40 40 (:TYPE-PRESCRIPTION NATP))
     (37 1 (:DEFINITION NTH))
     (28 14
         (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (27 6 (:REWRITE ZP-OPEN))
     (26 26 (:REWRITE CONSP-BY-LEN))
     (24 16 (:REWRITE DEFAULT-+-2))
     (24 1 (:DEFINITION NTHCDR))
     (20 16 (:REWRITE DEFAULT-+-1))
     (18 18
         (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (17 1 (:REWRITE NATP-POSP--1))
     (16 2 (:REWRITE NTHCDR-WHEN-ZP))
     (15 15 (:REWRITE CONSP-OF-CDR-BY-LEN))
     (14 14 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (12 1 (:REWRITE NATP-POSP))
     (12 1 (:REWRITE CONSP-OF-TAKE))
     (11 3 (:REWRITE <-0-+-NEGATIVE-2))
     (7 7
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (7 4 (:DEFINITION NOT))
     (5 2 (:REWRITE NTHCDR-WHEN-ATOM))
     (4 4 (:REWRITE DEFAULT-UNARY-MINUS))
     (4 1 (:REWRITE POSP-RW))
     (3 3 (:TYPE-PRESCRIPTION ZP))
     (3 3 (:REWRITE CONSP-OF-CDDR-BY-LEN))
     (3 1 (:REWRITE COMMUTATIVITY-OF-+))
     (3 1 (:REWRITE <-0-+-NEGATIVE-1))
     (2 2 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
     (2 2 (:REWRITE EQUAL-CONSTANT-+))
     (1 1 (:REWRITE OPEN-SMALL-NTHCDR))
     (1 1 (:REWRITE FOLD-CONSTS-IN-+))
     (1 1 (:REWRITE DEFAULT-CAR)))
(STR::TRUE-LISTP-SUBSEQ-LIST)
(STR::STRINGP-OF-SUBSEQ
     (580 78 (:REWRITE NEGATIVE-WHEN-NATP))
     (468 2 (:DEFINITION TAKE))
     (356 38 (:REWRITE NATP-RW))
     (335 25 (:DEFINITION LEN))
     (254 4 (:REWRITE TAKE-OF-LEN-FREE))
     (178 50 (:REWRITE LEN-WHEN-ATOM))
     (169 2 (:REWRITE CAR-OF-NTHCDR))
     (162 5 (:REWRITE CONSP-OF-NTHCDR))
     (151 34 (:REWRITE DEFAULT-CDR))
     (142 4 (:REWRITE NTH-WHEN-BIGGER))
     (135 100 (:REWRITE DEFAULT-<-1))
     (123 100 (:REWRITE DEFAULT-<-2))
     (116 116 (:TYPE-PRESCRIPTION NATP))
     (110 4 (:DEFINITION NTHCDR))
     (95 4 (:REWRITE TAKE-WHEN-ATOM))
     (90 90 (:REWRITE CONSP-BY-LEN))
     (90 2 (:DEFINITION NTH))
     (89 1 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
     (87 52 (:REWRITE DEFAULT-+-2))
     (75 52 (:REWRITE DEFAULT-+-1))
     (64 8 (:REWRITE NTHCDR-WHEN-ZP))
     (58 16 (:REWRITE ZP-OPEN))
     (44 27 (:REWRITE STR::CONSP-OF-EXPLODE))
     (42 42
         (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (41 41 (:REWRITE CONSP-OF-CDR-BY-LEN))
     (36 1 (:REWRITE TRUE-LISTP-OF-NTHCDR))
     (34 8 (:REWRITE NTHCDR-WHEN-ATOM))
     (34 2 (:REWRITE NATP-POSP--1))
     (33 1 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
     (25 15 (:REWRITE DEFAULT-UNARY-MINUS))
     (24 2 (:REWRITE NATP-POSP))
     (23 23 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (14 4 (:REWRITE <-0-+-NEGATIVE-2))
     (12 12 (:TYPE-PRESCRIPTION ZP))
     (12 4 (:REWRITE COMMUTATIVITY-OF-+))
     (12 4 (:REWRITE <-0-+-NEGATIVE-1))
     (11 11
         (:TYPE-PRESCRIPTION TRUE-LISTP-SUBSEQ-TYPE-PRESCRIPTION))
     (11 11
         (:TYPE-PRESCRIPTION STRINGP-SUBSEQ-TYPE-PRESCRIPTION))
     (8 2 (:REWRITE POSP-RW))
     (6 6
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (6 6 (:REWRITE CONSP-OF-CDDR-BY-LEN))
     (6 2 (:REWRITE DEFAULT-CAR))
     (6 1 (:DEFINITION TRUE-LISTP))
     (4 4 (:REWRITE OPEN-SMALL-NTHCDR))
     (4 4 (:REWRITE EQUAL-CONSTANT-+))
     (3 3
        (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
     (3 3
        (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
     (2 2 (:REWRITE FOLD-CONSTS-IN-+)))
(STR::LENGTH-OF-SUBSEQ
     (1261 91 (:DEFINITION LEN))
     (1202 8 (:DEFINITION TAKE))
     (859 195 (:REWRITE LEN-WHEN-ATOM))
     (726 80 (:REWRITE NATP-RW))
     (682 16 (:REWRITE TAKE-OF-LEN-FREE))
     (513 4
          (:REWRITE STR::MAKE-CHARACTER-LIST-WHEN-CHARACTER-LISTP))
     (494 6 (:REWRITE CAR-OF-NTHCDR))
     (492 120 (:REWRITE DEFAULT-CDR))
     (474 17 (:REWRITE CONSP-OF-NTHCDR))
     (402 12 (:REWRITE NTH-WHEN-BIGGER))
     (392 3 (:DEFINITION CHARACTER-LISTP))
     (362 362 (:REWRITE CONSP-BY-LEN))
     (344 247 (:REWRITE DEFAULT-<-1))
     (317 247 (:REWRITE DEFAULT-<-2))
     (291 168 (:REWRITE DEFAULT-+-2))
     (286 6 (:DEFINITION NTH))
     (272 3 (:REWRITE CHARACTER-LISTP-OF-TAKE))
     (240 240 (:TYPE-PRESCRIPTION NATP))
     (220 8 (:DEFINITION NTHCDR))
     (217 168 (:REWRITE DEFAULT-+-1))
     (215 4 (:REWRITE LIST-FIX-WHEN-LEN-ZERO))
     (214 53 (:REWRITE ZP-OPEN))
     (206 16 (:REWRITE TAKE-WHEN-ATOM))
     (199 119 (:REWRITE STR::CONSP-OF-EXPLODE))
     (143 143 (:REWRITE CONSP-OF-CDR-BY-LEN))
     (118 15 (:REWRITE CONSP-OF-TAKE))
     (100 24 (:REWRITE NTHCDR-WHEN-ATOM))
     (76 4
         (:REWRITE STR::MAKE-CHARACTER-LIST-WHEN-ATOM))
     (66 4
         (:REWRITE STR::CONSP-OF-MAKE-CHARACTER-LIST))
     (64 4 (:REWRITE NATP-POSP--1))
     (63 2 (:REWRITE TRUE-LISTP-OF-NTHCDR))
     (61 4 (:REWRITE LIST-FIX-WHEN-NOT-CONSP))
     (58 46
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (57 57 (:TYPE-PRESCRIPTION TRUE-LISTP))
     (54 15 (:REWRITE <-0-+-NEGATIVE-2))
     (47 11 (:REWRITE DEFAULT-CAR))
     (44 4 (:REWRITE NATP-POSP))
     (39 29 (:REWRITE DEFAULT-UNARY-MINUS))
     (26 3 (:REWRITE CONSP-OF-LIST-FIX))
     (25 25 (:TYPE-PRESCRIPTION CHARACTER-LISTP))
     (24 24 (:TYPE-PRESCRIPTION ZP))
     (24 8 (:REWRITE <-0-+-NEGATIVE-1))
     (24 4 (:DEFINITION TRUE-LISTP))
     (22 22 (:REWRITE CONSP-OF-CDDR-BY-LEN))
     (22 22
         (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
     (20 1 (:REWRITE CAR-OF-TAKE))
     (16 16 (:REWRITE OPEN-SMALL-NTHCDR))
     (16 16
         (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
     (16 4 (:REWRITE POSP-RW))
     (13 13
         (:TYPE-PRESCRIPTION TRUE-LISTP-SUBSEQ-TYPE-PRESCRIPTION))
     (13 13
         (:TYPE-PRESCRIPTION STRINGP-SUBSEQ-TYPE-PRESCRIPTION))
     (12 12 (:REWRITE EQUAL-CONSTANT-+))
     (8 8
        (:TYPE-PRESCRIPTION MAKE-CHARACTER-LIST))
     (6 3
        (:REWRITE CHARACTER-LISTP-OF-CDR-WHEN-CHARACTER-LISTP))
     (6 2 (:REWRITE CHARACTERP-NTH))
     (6 2 (:REWRITE |(equal 0 (len x))|))
     (4 4 (:REWRITE FOLD-CONSTS-IN-+))
     (4 4 (:REWRITE CHARACTER-LISTP-OF-EXPLODE))
     (4 2 (:DEFINITION ATOM))
     (2 1
        (:REWRITE CHARACTERP-OF-CAR-WHEN-CHARACTER-LISTP)))
(STR::LEN-OF-SUBSEQ (462 2 (:DEFINITION TAKE))
                    (390 30 (:DEFINITION LEN))
                    (384 40 (:REWRITE NATP-RW))
                    (254 4 (:REWRITE TAKE-OF-LEN-FREE))
                    (217 60 (:REWRITE LEN-WHEN-ATOM))
                    (169 2 (:REWRITE CAR-OF-NTHCDR))
                    (155 38 (:REWRITE DEFAULT-CDR))
                    (146 102 (:REWRITE DEFAULT-<-1))
                    (142 4 (:REWRITE NTH-WHEN-BIGGER))
                    (134 4 (:REWRITE CONSP-OF-NTHCDR))
                    (124 102 (:REWRITE DEFAULT-<-2))
                    (121 121 (:TYPE-PRESCRIPTION NATP))
                    (115 69 (:REWRITE DEFAULT-+-2))
                    (110 4 (:DEFINITION NTHCDR))
                    (104 69 (:REWRITE DEFAULT-+-1))
                    (103 103 (:REWRITE CONSP-BY-LEN))
                    (95 4 (:REWRITE TAKE-WHEN-ATOM))
                    (90 2 (:DEFINITION NTH))
                    (64 8 (:REWRITE NTHCDR-WHEN-ZP))
                    (58 16 (:REWRITE ZP-OPEN))
                    (46 46 (:REWRITE CONSP-OF-CDR-BY-LEN))
                    (44 27 (:REWRITE STR::CONSP-OF-EXPLODE))
                    (34 8 (:REWRITE NTHCDR-WHEN-ATOM))
                    (30 2 (:REWRITE NATP-POSP--1))
                    (27 17 (:REWRITE DEFAULT-UNARY-MINUS))
                    (20 2 (:REWRITE NATP-POSP))
                    (19 19 (:TYPE-PRESCRIPTION TRUE-LISTP))
                    (15 9
                        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                    (14 4 (:REWRITE <-0-+-NEGATIVE-2))
                    (12 12 (:TYPE-PRESCRIPTION ZP))
                    (12 4 (:REWRITE <-0-+-NEGATIVE-1))
                    (8 2 (:REWRITE POSP-RW))
                    (6 6 (:REWRITE CONSP-OF-CDDR-BY-LEN))
                    (6 2 (:REWRITE DEFAULT-CAR))
                    (5 5 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
                    (4 4 (:REWRITE OPEN-SMALL-NTHCDR))
                    (4 4 (:REWRITE EQUAL-CONSTANT-+))
                    (3 3
                       (:REWRITE STR::EXPLODE-WHEN-NOT-STRINGP))
                    (3 3
                       (:LINEAR LEN-OF-NONEMPTY-STRING-IS-POSITIVE))
                    (2 2 (:REWRITE FOLD-CONSTS-IN-+)))
