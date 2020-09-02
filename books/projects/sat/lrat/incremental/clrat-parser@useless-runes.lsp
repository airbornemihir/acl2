(LRAT::MY-REV1)
(LRAT::TRUE-LISTP-MY-REV1 (219 7 (:DEFINITION TRUE-LISTP))
                          (207 14 (:REWRITE LRAT::N59-LISTP-FORWARD))
                          (207 14 (:REWRITE LRAT::I60-LISTP-FORWARD))
                          (165 14 (:DEFINITION LRAT::N59-LISTP))
                          (165 14 (:DEFINITION LRAT::I60-LISTP))
                          (70 70 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                          (70 70 (:TYPE-PRESCRIPTION LRAT::I60-LISTP))
                          (56 56 (:REWRITE DEFAULT-<-2))
                          (56 56 (:REWRITE DEFAULT-<-1))
                          (40 37 (:REWRITE DEFAULT-CDR))
                          (32 30 (:REWRITE DEFAULT-CAR)))
(LRAT::NAT-LISTP-MY-REV1 (20 19 (:REWRITE DEFAULT-CAR))
                         (15 14 (:REWRITE DEFAULT-CDR))
                         (14 14 (:REWRITE DEFAULT-<-2))
                         (14 14 (:REWRITE DEFAULT-<-1)))
(LRAT::INTEGER-LISTP-MY-REV1 (19 18 (:REWRITE DEFAULT-CAR))
                             (15 14 (:REWRITE DEFAULT-CDR)))
(LRAT::ALISTP-MY-REV1 (19 18 (:REWRITE DEFAULT-CAR))
                      (15 14 (:REWRITE DEFAULT-CDR)))
(LRAT::CHARACTER-LISTP-MY-REV1 (19 18 (:REWRITE DEFAULT-CAR))
                               (15 14 (:REWRITE DEFAULT-CDR)))
(LRAT::MY-REV)
(LRAT::TRUE-LISTP-MY-REV (34 1 (:DEFINITION TRUE-LISTP))
                         (32 2 (:REWRITE LRAT::N59-LISTP-FORWARD))
                         (32 2 (:REWRITE LRAT::I60-LISTP-FORWARD))
                         (26 2 (:DEFINITION LRAT::N59-LISTP))
                         (26 2 (:DEFINITION LRAT::I60-LISTP))
                         (10 10 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                         (10 10 (:TYPE-PRESCRIPTION LRAT::I60-LISTP))
                         (8 8 (:REWRITE DEFAULT-<-2))
                         (8 8 (:REWRITE DEFAULT-<-1))
                         (5 5 (:REWRITE DEFAULT-CDR))
                         (4 4 (:REWRITE DEFAULT-CAR)))
(LRAT::NAT-LISTP-MY-REV (14 2 (:DEFINITION NAT-LISTP))
                        (6 2 (:DEFINITION NATP))
                        (2 2 (:TYPE-PRESCRIPTION LRAT::MY-REV1))
                        (2 2 (:REWRITE DEFAULT-CDR))
                        (2 2 (:REWRITE DEFAULT-CAR))
                        (2 2 (:REWRITE DEFAULT-<-2))
                        (2 2 (:REWRITE DEFAULT-<-1)))
(LRAT::INTEGER-LISTP-MY-REV (8 2 (:DEFINITION INTEGER-LISTP))
                            (2 2 (:TYPE-PRESCRIPTION LRAT::MY-REV1))
                            (2 2 (:REWRITE DEFAULT-CDR))
                            (2 2 (:REWRITE DEFAULT-CAR)))
(LRAT::ALISTP-MY-REV (8 2 (:DEFINITION ALISTP))
                     (2 2 (:TYPE-PRESCRIPTION LRAT::MY-REV1))
                     (2 2 (:REWRITE DEFAULT-CDR))
                     (2 2 (:REWRITE DEFAULT-CAR)))
(LRAT::CHARACTER-LISTP-MY-REV (8 2 (:DEFINITION CHARACTER-LISTP))
                              (2 2 (:TYPE-PRESCRIPTION LRAT::MY-REV1))
                              (2 2 (:REWRITE DEFAULT-CDR))
                              (2 2 (:REWRITE DEFAULT-CAR)))
(LRAT::MY-APP)
(LRAT::TRUE-LISTP-MY-APP (214 7 (:DEFINITION TRUE-LISTP))
                         (200 14 (:REWRITE LRAT::N59-LISTP-FORWARD))
                         (200 14 (:REWRITE LRAT::I60-LISTP-FORWARD))
                         (158 14 (:DEFINITION LRAT::N59-LISTP))
                         (158 14 (:DEFINITION LRAT::I60-LISTP))
                         (70 70 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                         (70 70 (:TYPE-PRESCRIPTION LRAT::I60-LISTP))
                         (56 56 (:REWRITE DEFAULT-<-2))
                         (56 56 (:REWRITE DEFAULT-<-1))
                         (37 37 (:REWRITE DEFAULT-CDR))
                         (31 31 (:REWRITE DEFAULT-CAR)))
(LRAT::INTEGER-LISTP-APP (17 16 (:REWRITE DEFAULT-CAR))
                         (14 13 (:REWRITE DEFAULT-CDR)))
(LRAT::LOGAND-LESS-THAN-OR-EQUAL
     (89 89
         (:TYPE-PRESCRIPTION |(< (logand x y) 0)| . 3))
     (89 89
         (:TYPE-PRESCRIPTION |(< (logand x y) 0)| . 1))
     (87 87
         (:TYPE-PRESCRIPTION |(< (logand x y) 0)| . 2))
     (9 9 (:REWRITE REDUCE-INTEGERP-+))
     (9 9 (:REWRITE INTEGERP-MINUS-X))
     (9 9 (:META META-INTEGERP-CORRECT))
     (9 5 (:REWRITE DEFAULT-LESS-THAN-2))
     (7 7 (:REWRITE THE-FLOOR-BELOW))
     (7 7 (:REWRITE THE-FLOOR-ABOVE))
     (6 6 (:REWRITE LOGAND-CONSTANT-MASK))
     (5 5 (:REWRITE DEFAULT-LESS-THAN-1))
     (3 3
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (3 3
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (3 3 (:REWRITE SIMPLIFY-SUMS-<))
     (3 3
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (3 3 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (3 3 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (3 3
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (3 3
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (3 3 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (3 3 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (3 3 (:REWRITE INTEGERP-<-CONSTANT))
     (3 3 (:REWRITE CONSTANT-<-INTEGERP))
     (3 3
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (3 3
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (3 3
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (3 3
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (3 3 (:REWRITE |(< c (- x))|))
     (3 3
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (3 3
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (3 3
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (3 3
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (3 3 (:REWRITE |(< (/ x) 0)|))
     (3 3 (:REWRITE |(< (/ x) (/ y))|))
     (3 3 (:REWRITE |(< (- x) c)|))
     (3 3 (:REWRITE |(< (- x) (- y))|))
     (3 3 (:REWRITE |(< (* x y) 0)|))
     (2 2 (:REWRITE LOGAND-BOUNDS-NEG . 1))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (1 1 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (1 1
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (1 1
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (1 1
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (1 1
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (1 1
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (1 1 (:REWRITE |(equal c (/ x))|))
     (1 1 (:REWRITE |(equal c (- x))|))
     (1 1 (:REWRITE |(equal (/ x) c)|))
     (1 1 (:REWRITE |(equal (/ x) (/ y))|))
     (1 1 (:REWRITE |(equal (- x) c)|))
     (1 1 (:REWRITE |(equal (- x) (- y))|)))
(LRAT::LOGAND-GREATER-OR-EQUAL-TO-ZERO
     (68 68
         (:TYPE-PRESCRIPTION |(< (logand x y) 0)| . 1))
     (15 15 (:REWRITE REDUCE-INTEGERP-+))
     (15 15 (:REWRITE INTEGERP-MINUS-X))
     (15 15 (:META META-INTEGERP-CORRECT))
     (12 7 (:REWRITE DEFAULT-LESS-THAN-1))
     (10 2 (:REWRITE ACL2-NUMBERP-X))
     (10 1
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (9 9 (:REWRITE THE-FLOOR-BELOW))
     (9 9 (:REWRITE THE-FLOOR-ABOVE))
     (7 7 (:REWRITE DEFAULT-LESS-THAN-2))
     (6 6 (:REWRITE LOGAND-CONSTANT-MASK))
     (5 5
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (5 5
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (5 5 (:REWRITE SIMPLIFY-SUMS-<))
     (5 5
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (5 5 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (5 5
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (5 5
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (5 5 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (5 5 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (5 5 (:REWRITE INTEGERP-<-CONSTANT))
     (5 5 (:REWRITE CONSTANT-<-INTEGERP))
     (5 5
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (5 5
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (5 5
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (5 5
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (5 5 (:REWRITE |(< c (- x))|))
     (5 5
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (5 5
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (5 5
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (5 5
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (5 5 (:REWRITE |(< (/ x) 0)|))
     (5 5 (:REWRITE |(< (/ x) (/ y))|))
     (5 5 (:REWRITE |(< (- x) c)|))
     (5 5 (:REWRITE |(< (- x) (- y))|))
     (5 5 (:REWRITE |(< (* x y) 0)|))
     (4 1 (:REWRITE RATIONALP-X))
     (2 1
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (1 1 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (1 1 (:REWRITE REDUCE-RATIONALP-+))
     (1 1 (:REWRITE REDUCE-RATIONALP-*))
     (1 1
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (1 1
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (1 1 (:REWRITE RATIONALP-MINUS-X))
     (1 1
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (1 1 (:REWRITE |(equal c (/ x))|))
     (1 1 (:REWRITE |(equal c (- x))|))
     (1 1 (:REWRITE |(equal (/ x) c)|))
     (1 1 (:REWRITE |(equal (/ x) (/ y))|))
     (1 1 (:REWRITE |(equal (- x) c)|))
     (1 1 (:REWRITE |(equal (- x) (- y))|))
     (1 1 (:META META-RATIONALP-CORRECT)))
(LRAT::ASH-NEGATIVE-SHIFT-MAKES-INPUT-SMALLER
 (318 2 (:REWRITE FLOOR-ZERO . 3))
 (293 2 (:REWRITE FLOOR-X-Y-=-1 . 2))
 (291 2 (:REWRITE FLOOR-ZERO . 4))
 (263 43 (:REWRITE DEFAULT-TIMES-2))
 (238 2 (:REWRITE CANCEL-FLOOR-+))
 (196
  196
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (196 196
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (196
     196
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (196 196
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (188 43 (:REWRITE DEFAULT-TIMES-1))
 (154 2 (:REWRITE FLOOR-=-X/Y . 3))
 (148 2 (:REWRITE FLOOR-=-X/Y . 2))
 (106 2 (:REWRITE DEFAULT-FLOOR-RATIO))
 (93 2 (:REWRITE |(* (- x) y)|))
 (90 7 (:REWRITE DEFAULT-PLUS-1))
 (88 7 (:REWRITE DEFAULT-PLUS-2))
 (72 9 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (65 11 (:REWRITE DEFAULT-LESS-THAN-1))
 (62 2 (:REWRITE |(integerp (- x))|))
 (50 5 (:REWRITE DEFAULT-DIVIDE))
 (46 2 (:LINEAR EXPT-LINEAR-LOWER-<=))
 (44 2 (:REWRITE FLOOR-X-Y-=--1 . 2))
 (36 3 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (35 5 (:REWRITE |(/ (expt x n))|))
 (35 2 (:REWRITE FLOOR-ZERO . 5))
 (35 2 (:REWRITE FLOOR-ZERO . 2))
 (35 2 (:REWRITE FLOOR-X-Y-=-1 . 3))
 (35 2 (:REWRITE FLOOR-X-Y-=--1 . 3))
 (31 1 (:REWRITE |(floor x 1)|))
 (29 11 (:REWRITE DEFAULT-LESS-THAN-2))
 (28 2 (:LINEAR EXPT->=-1-ONE))
 (28 2 (:LINEAR EXPT->-1-ONE))
 (27 9 (:REWRITE SIMPLIFY-SUMS-<))
 (27 9 (:REWRITE DEFAULT-MINUS))
 (26 2
     (:REWRITE FLOOR-CANCEL-*-REWRITING-GOAL-LITERAL))
 (26 2 (:REWRITE FLOOR-CANCEL-*-CONST))
 (15 15 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
 (15 15 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
 (15 15 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
 (15 15
     (:TYPE-PRESCRIPTION INTEGERP-/-EXPT-1))
 (12 12 (:REWRITE THE-FLOOR-BELOW))
 (12 12 (:REWRITE DEFAULT-EXPT-2))
 (12 12 (:REWRITE DEFAULT-EXPT-1))
 (12 12 (:REWRITE |(expt 1/c n)|))
 (12 12 (:REWRITE |(expt (- x) n)|))
 (11 11
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (11 11
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (11 11
     (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (11 2 (:REWRITE DEFAULT-FLOOR-2))
 (11 2 (:REWRITE DEFAULT-FLOOR-1))
 (10 10
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (10 10 (:REWRITE INTEGERP-<-CONSTANT))
 (10 10 (:REWRITE CONSTANT-<-INTEGERP))
 (10 10
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (10 10
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (10 10
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (10 10
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (10 10 (:REWRITE |(< c (- x))|))
 (10 10
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (10 10
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (10 10
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (10 10
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (10 10 (:REWRITE |(< (/ x) (/ y))|))
 (10 10 (:REWRITE |(< (- x) c)|))
 (10 10 (:REWRITE |(< (- x) (- y))|))
 (10 1 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (10 1
     (:REWRITE |(floor (* x (/ y)) z) rewriting-goal-literal|))
 (9 9 (:REWRITE REDUCE-INTEGERP-+))
 (9 9 (:REWRITE INTEGERP-MINUS-X))
 (9 9 (:META META-INTEGERP-CORRECT))
 (8 8 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
 (8 8 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
 (8 8 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
 (8 8
    (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
 (8 8
    (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
 (8 8
    (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
 (8 8
    (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
 (8 8
    (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
 (8 8
    (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
 (8 8
    (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
 (8 8
    (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
 (8 8
    (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
 (8 8
    (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
 (6 6 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (5 5 (:REWRITE |(- (- x))|))
 (4 4
    (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE->-1))
 (4 4
    (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE-<-1))
 (4 4
    (:LINEAR EXPT-IS-INCREASING-FOR-BASE->-1))
 (4 4
    (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
 (2 2 (:REWRITE ODD-EXPT-THM))
 (2 2
    (:REWRITE FLOOR-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
 (2 2 (:REWRITE |(floor x (- y))| . 2))
 (2 2 (:REWRITE |(floor x (- y))| . 1))
 (2 2 (:REWRITE |(floor (- x) y)| . 2))
 (2 2 (:REWRITE |(floor (- x) y)| . 1))
 (2 2 (:REWRITE |(< 0 (* x y))|))
 (2 2 (:REWRITE |(- (* c x))|))
 (2 2 (:LINEAR EXPT-X->=-X))
 (2 2 (:LINEAR EXPT-X->-X))
 (2 2 (:LINEAR EXPT-LINEAR-UPPER-<=))
 (2 2 (:LINEAR EXPT-LINEAR-UPPER-<))
 (2 2 (:LINEAR EXPT-LINEAR-LOWER-<))
 (2 2 (:LINEAR EXPT->=-1-TWO))
 (2 2 (:LINEAR EXPT->-1-TWO))
 (2 2 (:LINEAR EXPT-<=-1-TWO))
 (2 2 (:LINEAR EXPT-<=-1-ONE))
 (2 2 (:LINEAR EXPT-<-1-TWO))
 (2 2 (:LINEAR EXPT-<-1-ONE))
 (1 1 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (1 1 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (1 1 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (1 1
    (:REWRITE |(floor x (* y (/ z))) not rewriting-goal-literal|))
 (1 1
    (:REWRITE |(floor (* x (/ y)) z) not rewriting-goal-literal|))
 (1 1
    (:REWRITE |(<= (/ x) y) with (< x 0)|))
 (1 1
    (:REWRITE |(<= (/ x) y) with (< 0 x)|))
 (1 1 (:REWRITE |(< x (/ y)) with (< y 0)|))
 (1 1 (:REWRITE |(< 0 (/ x))|))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (* x y) 0)|)))
(LRAT::HELPER
     (295 5 (:REWRITE DEFAULT-PLUS-1))
     (294 5 (:REWRITE DEFAULT-PLUS-2))
     (196 196
          (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
     (196 196
          (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (196 196
          (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (196 196
          (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (117 9 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (111 8 (:REWRITE DEFAULT-LESS-THAN-1))
     (96 1 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (81 9
         (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (81 9
         (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (81 9
         (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (68 1 (:REWRITE FLOOR-ZERO . 3))
     (53 1 (:REWRITE CANCEL-FLOOR-+))
     (45 9 (:TYPE-PRESCRIPTION FLOOR-ZERO . 4))
     (45 9 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (45 9 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (45 9
         (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (45 9
         (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
     (45 9
         (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (45 9
         (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (45 9
         (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (45 9
         (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (45 9
         (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (33 10 (:REWRITE INTEGERP-MINUS-X))
     (31 1 (:REWRITE FLOOR-X-Y-=-1 . 2))
     (30 1 (:REWRITE FLOOR-ZERO . 4))
     (24 20 (:REWRITE DEFAULT-TIMES-2))
     (23 23 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
     (23 23 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (23 23 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (23 23 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (22 1 (:REWRITE FLOOR-=-X/Y . 3))
     (22 1 (:REWRITE FLOOR-=-X/Y . 2))
     (20 20 (:REWRITE DEFAULT-TIMES-1))
     (18 2 (:REWRITE ACL2-NUMBERP-X))
     (17 2 (:REWRITE |(* (- x) y)|))
     (11 1 (:REWRITE DEFAULT-FLOOR-RATIO))
     (10 10 (:REWRITE THE-FLOOR-BELOW))
     (10 2 (:REWRITE DEFAULT-MINUS))
     (9 9 (:REWRITE REDUCE-INTEGERP-+))
     (9 9 (:META META-INTEGERP-CORRECT))
     (9 6
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (9 5 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (9 2 (:REWRITE |(- (* c x))|))
     (8 8
        (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (8 7
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (8 7
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (8 2 (:REWRITE RATIONALP-X))
     (7 7 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (6 6 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (6 6 (:REWRITE INTEGERP-<-CONSTANT))
     (6 6 (:REWRITE CONSTANT-<-INTEGERP))
     (6 6
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (6 6
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (6 6
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (6 6 (:REWRITE |(< c (- x))|))
     (6 6
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (6 6
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (6 6
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (6 6
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (6 6 (:REWRITE |(< (/ x) (/ y))|))
     (6 6 (:REWRITE |(< (- x) c)|))
     (6 6 (:REWRITE |(< (- x) (- y))|))
     (5 5 (:REWRITE SIMPLIFY-SUMS-<))
     (5 1 (:REWRITE FLOOR-ZERO . 5))
     (5 1 (:REWRITE FLOOR-ZERO . 2))
     (5 1 (:REWRITE FLOOR-X-Y-=-1 . 3))
     (5 1 (:REWRITE FLOOR-X-Y-=--1 . 3))
     (5 1 (:REWRITE FLOOR-X-Y-=--1 . 2))
     (5 1
        (:REWRITE FLOOR-CANCEL-*-REWRITING-GOAL-LITERAL))
     (5 1 (:REWRITE FLOOR-CANCEL-*-CONST))
     (5 1
        (:REWRITE |(floor (* x (/ y)) z) rewriting-goal-literal|))
     (4 4 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (4 1
        (:LINEAR LRAT::ASH-NEGATIVE-SHIFT-MAKES-INPUT-SMALLER))
     (2 2 (:TYPE-PRESCRIPTION ABS))
     (2 2 (:REWRITE REDUCE-RATIONALP-+))
     (2 2 (:REWRITE REDUCE-RATIONALP-*))
     (2 2 (:REWRITE RATIONALP-MINUS-X))
     (2 2 (:REWRITE |(< 0 (* x y))|))
     (2 2 (:META META-RATIONALP-CORRECT))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (1 1
        (:REWRITE FLOOR-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
     (1 1 (:REWRITE DEFAULT-FLOOR-2))
     (1 1 (:REWRITE DEFAULT-FLOOR-1))
     (1 1 (:REWRITE |(floor x (- y))| . 2))
     (1 1 (:REWRITE |(floor x (- y))| . 1))
     (1 1
        (:REWRITE |(floor x (* y (/ z))) rewriting-goal-literal|))
     (1 1
        (:REWRITE |(floor x (* y (/ z))) not rewriting-goal-literal|))
     (1 1 (:REWRITE |(floor (- x) y)| . 2))
     (1 1 (:REWRITE |(floor (- x) y)| . 1))
     (1 1
        (:REWRITE |(floor (* x (/ y)) z) not rewriting-goal-literal|))
     (1 1
        (:REWRITE |(<= (/ x) y) with (< x 0)|))
     (1 1
        (:REWRITE |(<= (/ x) y) with (< 0 x)|))
     (1 1 (:REWRITE |(< x (/ y)) with (< y 0)|))
     (1 1 (:REWRITE |(< 0 (/ x))|))
     (1 1
        (:REWRITE |(< (* (/ x) y) 1) with (< x 0)|))
     (1 1
        (:REWRITE |(< (* (/ x) y) 1) with (< 0 x)|)))
(LRAT::POSITIVEP-ASH
 (318 2 (:REWRITE FLOOR-ZERO . 3))
 (245 2 (:REWRITE FLOOR-X-Y-=-1 . 2))
 (243 2 (:REWRITE FLOOR-ZERO . 4))
 (238 2 (:REWRITE CANCEL-FLOOR-+))
 (227 38 (:REWRITE DEFAULT-TIMES-2))
 (185
  185
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (185 185
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (185
     185
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (185 185
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (185 185
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (183 38 (:REWRITE DEFAULT-TIMES-1))
 (163 2 (:REWRITE FLOOR-=-X/Y . 3))
 (150 2 (:REWRITE FLOOR-ZERO . 5))
 (148 2 (:REWRITE FLOOR-=-X/Y . 2))
 (106 2 (:REWRITE DEFAULT-FLOOR-RATIO))
 (93 2 (:REWRITE |(* (- x) y)|))
 (90 7 (:REWRITE DEFAULT-PLUS-1))
 (88 7 (:REWRITE DEFAULT-PLUS-2))
 (83 11
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (83 11 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (62 2 (:REWRITE |(integerp (- x))|))
 (50 5 (:REWRITE DEFAULT-DIVIDE))
 (44 2 (:REWRITE FLOOR-X-Y-=--1 . 2))
 (41 14 (:REWRITE DEFAULT-LESS-THAN-2))
 (36 3 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (35 5 (:REWRITE |(/ (expt x n))|))
 (35 2 (:REWRITE FLOOR-ZERO . 2))
 (35 2 (:REWRITE FLOOR-X-Y-=-1 . 3))
 (35 2 (:REWRITE FLOOR-X-Y-=--1 . 3))
 (31 1 (:REWRITE |(floor x 1)|))
 (29 11 (:REWRITE SIMPLIFY-SUMS-<))
 (27 9 (:REWRITE DEFAULT-MINUS))
 (26 2
     (:REWRITE FLOOR-CANCEL-*-REWRITING-GOAL-LITERAL))
 (26 2 (:REWRITE FLOOR-CANCEL-*-CONST))
 (18 2 (:REWRITE ACL2-NUMBERP-X))
 (15 15 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
 (15 15 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
 (15 15 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
 (15 15
     (:TYPE-PRESCRIPTION INTEGERP-/-EXPT-1))
 (15 15 (:REWRITE THE-FLOOR-BELOW))
 (13 13 (:REWRITE REDUCE-INTEGERP-+))
 (13 13 (:REWRITE INTEGERP-MINUS-X))
 (13 13 (:META META-INTEGERP-CORRECT))
 (11 11
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (11 11
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (11 11
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (11 11
     (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (11 11 (:REWRITE INTEGERP-<-CONSTANT))
 (11 11 (:REWRITE CONSTANT-<-INTEGERP))
 (11 11
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (11 11
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (11 11
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (11 11
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (11 11 (:REWRITE |(< c (- x))|))
 (11 11
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (11 11
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (11 11
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (11 11
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (11 11 (:REWRITE |(< (/ x) (/ y))|))
 (11 11 (:REWRITE |(< (- x) c)|))
 (11 11 (:REWRITE |(< (- x) (- y))|))
 (11 2 (:REWRITE DEFAULT-FLOOR-2))
 (11 2 (:REWRITE DEFAULT-FLOOR-1))
 (10 1
     (:REWRITE |(floor (* x (/ y)) z) rewriting-goal-literal|))
 (9 9 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
 (9 9 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
 (9 9 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
 (9 9
    (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
 (9 9
    (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
 (9 9
    (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
 (9 9
    (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
 (9 9
    (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
 (9 9
    (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
 (9 9
    (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
 (9 9
    (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
 (9 9
    (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
 (9 9
    (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
 (8 2 (:REWRITE RATIONALP-X))
 (7 7 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (6 6 (:REWRITE DEFAULT-EXPT-2))
 (6 6 (:REWRITE DEFAULT-EXPT-1))
 (6 6 (:REWRITE |(expt 1/c n)|))
 (6 6 (:REWRITE |(expt (- x) n)|))
 (5 5 (:REWRITE |(- (- x))|))
 (4 4
    (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE->-1))
 (4 4
    (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE-<-1))
 (4 4
    (:LINEAR EXPT-IS-INCREASING-FOR-BASE->-1))
 (4 4
    (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
 (4 1
    (:LINEAR LRAT::ASH-NEGATIVE-SHIFT-MAKES-INPUT-SMALLER))
 (3 3
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (3 3
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (3 3 (:REWRITE |(< (/ x) 0)|))
 (3 3 (:REWRITE |(< (* x y) 0)|))
 (2 2
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (2 2
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (2 2 (:REWRITE REDUCE-RATIONALP-+))
 (2 2 (:REWRITE REDUCE-RATIONALP-*))
 (2 2 (:REWRITE RATIONALP-MINUS-X))
 (2 2 (:REWRITE ODD-EXPT-THM))
 (2 2
    (:REWRITE FLOOR-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
 (2 2 (:REWRITE |(floor x (- y))| . 2))
 (2 2 (:REWRITE |(floor x (- y))| . 1))
 (2 2 (:REWRITE |(floor (- x) y)| . 2))
 (2 2 (:REWRITE |(floor (- x) y)| . 1))
 (2 2 (:REWRITE |(< 0 (/ x))|))
 (2 2 (:REWRITE |(< 0 (* x y))|))
 (2 2 (:REWRITE |(- (* c x))|))
 (2 2 (:META META-RATIONALP-CORRECT))
 (2 2 (:LINEAR EXPT-X->=-X))
 (2 2 (:LINEAR EXPT-X->-X))
 (2 2 (:LINEAR EXPT-LINEAR-UPPER-<=))
 (2 2 (:LINEAR EXPT-LINEAR-UPPER-<))
 (2 2 (:LINEAR EXPT-LINEAR-LOWER-<=))
 (2 2 (:LINEAR EXPT-LINEAR-LOWER-<))
 (2 2 (:LINEAR EXPT->=-1-TWO))
 (2 2 (:LINEAR EXPT->=-1-ONE))
 (2 2 (:LINEAR EXPT->-1-TWO))
 (2 2 (:LINEAR EXPT->-1-ONE))
 (2 2 (:LINEAR EXPT-<=-1-TWO))
 (2 2 (:LINEAR EXPT-<=-1-ONE))
 (2 2 (:LINEAR EXPT-<-1-TWO))
 (2 2 (:LINEAR EXPT-<-1-ONE))
 (1 1
    (:REWRITE |(floor x (* y (/ z))) not rewriting-goal-literal|))
 (1 1
    (:REWRITE |(floor (* x (/ y)) z) not rewriting-goal-literal|))
 (1 1
    (:REWRITE |(< 0 (* x y)) rationalp (* x y)|))
 (1 1
    (:REWRITE |(< (* x y) 0) rationalp (* x y)|)))
(LRAT::NAT-TO-CLRAT-NUM-HELPER
     (476 10 (:REWRITE DEFAULT-PLUS-1))
     (474 10 (:REWRITE DEFAULT-PLUS-2))
     (297 297
          (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
     (297 297
          (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
     (297 297
          (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
     (297 297
          (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
     (221 17 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
     (154 2 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (153 17
          (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
     (153 17
          (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
     (85 17 (:TYPE-PRESCRIPTION FLOOR-ZERO . 4))
     (85 17 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
     (85 17 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
     (85 17
         (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
     (85 17
         (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
     (85 17
         (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
     (85 17
         (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
     (85 17
         (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
     (68 1 (:REWRITE FLOOR-ZERO . 3))
     (53 1 (:REWRITE CANCEL-FLOOR-+))
     (30 30 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
     (30 30 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (30 30 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (30 30 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (30 1 (:REWRITE FLOOR-ZERO . 4))
     (30 1 (:REWRITE FLOOR-X-Y-=-1 . 2))
     (28 5 (:REWRITE INTEGERP-MINUS-X))
     (26 22 (:REWRITE DEFAULT-TIMES-2))
     (22 22 (:REWRITE DEFAULT-TIMES-1))
     (22 1 (:REWRITE FLOOR-=-X/Y . 3))
     (22 1 (:REWRITE FLOOR-=-X/Y . 2))
     (20 8 (:REWRITE DEFAULT-LESS-THAN-1))
     (18 2
         (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
     (17 2 (:REWRITE |(* (- x) y)|))
     (14 6 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (11 1 (:REWRITE DEFAULT-FLOOR-RATIO))
     (10 10 (:REWRITE THE-FLOOR-BELOW))
     (10 8
         (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (10 8
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (10 2
         (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
     (10 2 (:REWRITE DEFAULT-MINUS))
     (9 9
        (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (9 2 (:REWRITE |(- (* c x))|))
     (8 8 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (8 8 (:REWRITE DEFAULT-LESS-THAN-2))
     (7 7 (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (7 7 (:REWRITE INTEGERP-<-CONSTANT))
     (7 7 (:REWRITE CONSTANT-<-INTEGERP))
     (7 7
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (7 7
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (7 7
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (7 7
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (7 7 (:REWRITE |(< c (- x))|))
     (7 7
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (7 7
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (7 7
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (7 7
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (7 7 (:REWRITE |(< (/ x) (/ y))|))
     (7 7 (:REWRITE |(< (- x) c)|))
     (7 7 (:REWRITE |(< (- x) (- y))|))
     (6 6 (:REWRITE SIMPLIFY-SUMS-<))
     (5 1 (:REWRITE FLOOR-ZERO . 5))
     (5 1 (:REWRITE FLOOR-ZERO . 2))
     (5 1 (:REWRITE FLOOR-X-Y-=-1 . 3))
     (5 1 (:REWRITE FLOOR-X-Y-=--1 . 3))
     (5 1 (:REWRITE FLOOR-X-Y-=--1 . 2))
     (5 1
        (:REWRITE FLOOR-CANCEL-*-REWRITING-GOAL-LITERAL))
     (5 1 (:REWRITE FLOOR-CANCEL-*-CONST))
     (5 1
        (:REWRITE |(floor (* x (/ y)) z) rewriting-goal-literal|))
     (4 4 (:TYPE-PRESCRIPTION ABS))
     (4 4 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (4 4 (:REWRITE REDUCE-INTEGERP-+))
     (4 4 (:META META-INTEGERP-CORRECT))
     (2 2
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (2 2
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (2 2 (:REWRITE |(< (/ x) 0)|))
     (2 2 (:REWRITE |(< (* x y) 0)|))
     (1 1
        (:REWRITE FLOOR-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
     (1 1 (:REWRITE DEFAULT-FLOOR-2))
     (1 1 (:REWRITE DEFAULT-FLOOR-1))
     (1 1 (:REWRITE |(floor x (- y))| . 2))
     (1 1 (:REWRITE |(floor x (- y))| . 1))
     (1 1
        (:REWRITE |(floor x (* y (/ z))) rewriting-goal-literal|))
     (1 1
        (:REWRITE |(floor x (* y (/ z))) not rewriting-goal-literal|))
     (1 1 (:REWRITE |(floor (- x) y)| . 2))
     (1 1 (:REWRITE |(floor (- x) y)| . 1))
     (1 1
        (:REWRITE |(floor (* x (/ y)) z) not rewriting-goal-literal|))
     (1 1
        (:REWRITE |(<= (/ x) y) with (< x 0)|))
     (1 1
        (:REWRITE |(<= (/ x) y) with (< 0 x)|))
     (1 1 (:REWRITE |(< x (/ y)) with (< y 0)|))
     (1 1 (:REWRITE |(< 0 (* x y))|))
     (1 1
        (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
     (1 1
        (:REWRITE |(< (* (/ x) y) 1) with (< x 0)|))
     (1 1
        (:REWRITE |(< (* (/ x) y) 1) with (< 0 x)|)))
(LRAT::LIST-OF-INTEGER-LISTP)
(LRAT::CHAR-TO-NAT$INLINE (2 2 (:REWRITE DEFAULT-<-2))
                          (2 2 (:REWRITE DEFAULT-<-1))
                          (1 1 (:REWRITE DEFAULT-CHAR-CODE)))
(LRAT::NATP-OR-NULL-CHAR-TO-NAT (8 8 (:REWRITE DEFAULT-<-2))
                                (8 8 (:REWRITE DEFAULT-<-1))
                                (7 7 (:REWRITE DEFAULT-CHAR-CODE))
                                (4 4 (:REWRITE DEFAULT-+-2))
                                (4 4 (:REWRITE DEFAULT-+-1)))
(LRAT::NATP-CHAR-TO-NAT)
(LRAT::CHAR-TO-NAT-IS-LESS-THAN-10 (5 5 (:REWRITE DEFAULT-CHAR-CODE))
                                   (5 5 (:REWRITE DEFAULT-<-2))
                                   (5 5 (:REWRITE DEFAULT-<-1))
                                   (2 2 (:REWRITE DEFAULT-+-2))
                                   (2 2 (:REWRITE DEFAULT-+-1)))
(LRAT::LRAT-GUARD)
(LRAT::CHECK-LRAT-LINE-TO-LF (578 289
                                  (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                             (289 289
                                  (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                             (105 21 (:DEFINITION LEN))
                             (99 71 (:REWRITE DEFAULT-+-2))
                             (84 71 (:REWRITE DEFAULT-+-1))
                             (78 13 (:DEFINITION NTH))
                             (52 42 (:REWRITE DEFAULT-<-2))
                             (49 42 (:REWRITE DEFAULT-<-1))
                             (34 34 (:REWRITE DEFAULT-CDR))
                             (32 32 (:REWRITE DEFAULT-COERCE-2))
                             (32 32 (:REWRITE DEFAULT-COERCE-1))
                             (26 19 (:REWRITE DEFAULT-UNARY-MINUS))
                             (14 14
                                 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                             (13 13 (:REWRITE DEFAULT-CAR))
                             (10 10 (:REWRITE FOLD-CONSTS-IN-+)))
(LRAT::FIND-NEXT-SPACE (110 55
                            (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                       (100 20 (:DEFINITION LEN))
                       (68 42 (:REWRITE DEFAULT-+-2))
                       (55 55 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                       (51 42 (:REWRITE DEFAULT-+-1))
                       (39 30 (:REWRITE DEFAULT-<-1))
                       (38 30 (:REWRITE DEFAULT-<-2))
                       (22 22 (:REWRITE DEFAULT-COERCE-2))
                       (22 22 (:REWRITE DEFAULT-COERCE-1))
                       (22 22 (:REWRITE DEFAULT-CDR))
                       (13 10 (:REWRITE DEFAULT-UNARY-MINUS))
                       (12 2 (:DEFINITION NTH))
                       (6 6
                          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                       (2 2 (:REWRITE FOLD-CONSTS-IN-+))
                       (2 2 (:REWRITE DEFAULT-CAR)))
(LRAT::NATP-FIND-NEXT-SPACE (172 86
                                 (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                            (96 96 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                            (38 36 (:REWRITE DEFAULT-<-1))
                            (36 36 (:REWRITE DEFAULT-<-2))
                            (27 27 (:REWRITE DEFAULT-+-2))
                            (27 27 (:REWRITE DEFAULT-+-1))
                            (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
                            (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
                            (20 2 (:DEFINITION LRAT::N59-LISTP))
                            (20 2 (:DEFINITION LRAT::I60-LISTP))
                            (13 13 (:REWRITE DEFAULT-CDR))
                            (13 13 (:REWRITE DEFAULT-CAR))
                            (11 11 (:REWRITE DEFAULT-UNARY-MINUS))
                            (9 9 (:REWRITE DEFAULT-COERCE-2))
                            (9 9 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::BOUND-FIND-NEXT-SPACE (242 121
                                  (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                             (131 131
                                  (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                             (67 61 (:REWRITE DEFAULT-<-1))
                             (66 61 (:REWRITE DEFAULT-<-2))
                             (44 44 (:REWRITE DEFAULT-+-2))
                             (44 44 (:REWRITE DEFAULT-+-1))
                             (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
                             (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
                             (20 2 (:DEFINITION LRAT::N59-LISTP))
                             (20 2 (:DEFINITION LRAT::I60-LISTP))
                             (18 18 (:REWRITE DEFAULT-CDR))
                             (18 18 (:REWRITE DEFAULT-CAR))
                             (17 17 (:REWRITE DEFAULT-UNARY-MINUS))
                             (14 14 (:REWRITE DEFAULT-COERCE-2))
                             (14 14 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::FIND-LF (110 55
                    (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
               (95 19 (:DEFINITION LEN))
               (66 41 (:REWRITE DEFAULT-+-2))
               (55 55 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
               (50 41 (:REWRITE DEFAULT-+-1))
               (36 28 (:REWRITE DEFAULT-<-2))
               (35 28 (:REWRITE DEFAULT-<-1))
               (21 21 (:REWRITE DEFAULT-COERCE-2))
               (21 21 (:REWRITE DEFAULT-COERCE-1))
               (21 21 (:REWRITE DEFAULT-CDR))
               (13 10 (:REWRITE DEFAULT-UNARY-MINUS))
               (12 2 (:DEFINITION NTH))
               (6 6
                  (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
               (2 2 (:REWRITE FOLD-CONSTS-IN-+))
               (2 2 (:REWRITE DEFAULT-CAR)))
(LRAT::INTEGERP-FIND-LF (160 80
                             (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                        (90 90 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                        (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
                        (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
                        (23 23 (:REWRITE DEFAULT-<-2))
                        (23 23 (:REWRITE DEFAULT-<-1))
                        (20 2 (:DEFINITION LRAT::N59-LISTP))
                        (20 2 (:DEFINITION LRAT::I60-LISTP))
                        (17 17 (:REWRITE DEFAULT-+-2))
                        (17 17 (:REWRITE DEFAULT-+-1))
                        (10 10 (:REWRITE DEFAULT-CDR))
                        (10 10 (:REWRITE DEFAULT-CAR))
                        (8 8 (:REWRITE DEFAULT-UNARY-MINUS))
                        (6 6 (:REWRITE DEFAULT-COERCE-2))
                        (6 6 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::NATP-FIND-LF (182 91
                         (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                    (180 56 (:REWRITE DEFAULT-<-1))
                    (130 55
                         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                    (121 56 (:REWRITE DEFAULT-<-2))
                    (101 101
                         (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                    (64 45 (:REWRITE DEFAULT-+-1))
                    (45 45 (:REWRITE DEFAULT-+-2))
                    (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
                    (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
                    (20 2 (:DEFINITION LRAT::N59-LISTP))
                    (20 2 (:DEFINITION LRAT::I60-LISTP))
                    (19 19 (:REWRITE DEFAULT-UNARY-MINUS))
                    (18 18 (:REWRITE DEFAULT-CDR))
                    (18 18 (:REWRITE DEFAULT-CAR))
                    (14 14 (:REWRITE DEFAULT-COERCE-2))
                    (14 14 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::POS-<=-FIND-LF (352 352 (:TYPE-PRESCRIPTION LRAT::FIND-LF))
                      (200 100
                           (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                      (150 44 (:REWRITE DEFAULT-<-1))
                      (110 110
                           (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                      (103 58
                           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                      (70 14 (:LINEAR LRAT::NATP-FIND-LF))
                      (58 44 (:REWRITE DEFAULT-<-2))
                      (42 14 (:DEFINITION NATP))
                      (36 25 (:REWRITE DEFAULT-+-1))
                      (31 25 (:REWRITE DEFAULT-+-2))
                      (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
                      (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
                      (22 11 (:REWRITE DEFAULT-UNARY-MINUS))
                      (20 2 (:DEFINITION LRAT::N59-LISTP))
                      (20 2 (:DEFINITION LRAT::I60-LISTP))
                      (12 12 (:REWRITE DEFAULT-CDR))
                      (12 12 (:REWRITE DEFAULT-CAR))
                      (8 8 (:REWRITE DEFAULT-COERCE-2))
                      (8 8 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::LRAT-POS-SKIP-SPACES (104 52
                                 (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                            (75 15 (:DEFINITION LEN))
                            (62 62 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                            (58 37 (:REWRITE DEFAULT-+-2))
                            (46 37 (:REWRITE DEFAULT-+-1))
                            (40 32 (:REWRITE DEFAULT-<-2))
                            (36 32 (:REWRITE DEFAULT-<-1))
                            (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
                            (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
                            (21 21 (:REWRITE DEFAULT-CDR))
                            (20 2 (:DEFINITION LRAT::N59-LISTP))
                            (20 2 (:DEFINITION LRAT::I60-LISTP))
                            (17 17 (:REWRITE DEFAULT-COERCE-2))
                            (17 17 (:REWRITE DEFAULT-COERCE-1))
                            (13 10 (:REWRITE DEFAULT-UNARY-MINUS))
                            (12 2 (:DEFINITION NTH))
                            (6 6
                               (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                            (6 6 (:REWRITE DEFAULT-CAR))
                            (2 2 (:REWRITE FOLD-CONSTS-IN-+)))
(LRAT::NATP-LRAT-POS-SKIP-SPACES
     (172 86
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (96 96 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (38 36 (:REWRITE DEFAULT-<-1))
     (36 36 (:REWRITE DEFAULT-<-2))
     (27 27 (:REWRITE DEFAULT-+-2))
     (27 27 (:REWRITE DEFAULT-+-1))
     (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
     (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
     (20 2 (:DEFINITION LRAT::N59-LISTP))
     (20 2 (:DEFINITION LRAT::I60-LISTP))
     (13 13 (:REWRITE DEFAULT-CDR))
     (13 13 (:REWRITE DEFAULT-CAR))
     (11 11 (:REWRITE DEFAULT-UNARY-MINUS))
     (9 9 (:REWRITE DEFAULT-COERCE-2))
     (9 9 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::POS-FACT-LRAT-POS-SKIP-SPACES
     (214 107
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (117 117
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (37 34 (:REWRITE DEFAULT-<-1))
     (36 34 (:REWRITE DEFAULT-<-2))
     (26 26 (:REWRITE DEFAULT-+-2))
     (26 26 (:REWRITE DEFAULT-+-1))
     (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
     (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
     (20 2 (:DEFINITION LRAT::N59-LISTP))
     (20 2 (:DEFINITION LRAT::I60-LISTP))
     (12 12 (:REWRITE DEFAULT-CDR))
     (12 12 (:REWRITE DEFAULT-CAR))
     (11 11 (:REWRITE DEFAULT-UNARY-MINUS))
     (8 8 (:REWRITE DEFAULT-COERCE-2))
     (8 8 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::LRAT-NAT1
     (342 303 (:REWRITE DEFAULT-PLUS-2))
     (162 18 (:REWRITE ACL2-NUMBERP-X))
     (161 148 (:REWRITE DEFAULT-LESS-THAN-2))
     (148 148 (:REWRITE THE-FLOOR-BELOW))
     (148 148 (:REWRITE THE-FLOOR-ABOVE))
     (138 123
          (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (133 127
          (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (133 127
          (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (127 127
          (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (127 127 (:REWRITE |(< (/ x) (/ y))|))
     (123 123
          (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (123 123
          (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (123 123
          (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (123 123
          (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (123 123
          (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (123 123
          (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (123 123
          (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (112 101
          (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (105 105
          (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (105 105 (:REWRITE INTEGERP-<-CONSTANT))
     (105 105 (:REWRITE CONSTANT-<-INTEGERP))
     (105 15 (:DEFINITION LEN))
     (72 18 (:REWRITE RATIONALP-X))
     (67 67
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (44 44 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (43 43 (:REWRITE |(< (/ x) 0)|))
     (43 43 (:REWRITE |(< (* x y) 0)|))
     (32 32 (:REWRITE |(< (+ c/d x) y)|))
     (32 32 (:REWRITE |(< (+ (- c) x) y)|))
     (32 16
         (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (28 28 (:REWRITE |(< y (+ (- c) x))|))
     (28 28 (:REWRITE |(< x (+ c/d y))|))
     (28 28 (:REWRITE |(< 0 (/ x))|))
     (28 28 (:REWRITE |(< 0 (* x y))|))
     (27 27 (:REWRITE REDUCE-INTEGERP-+))
     (27 27 (:REWRITE INTEGERP-MINUS-X))
     (27 27 (:META META-INTEGERP-CORRECT))
     (23 23
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (23 23
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (19 19 (:REWRITE DEFAULT-COERCE-2))
     (19 19 (:REWRITE DEFAULT-COERCE-1))
     (18 18 (:REWRITE REDUCE-RATIONALP-+))
     (18 18 (:REWRITE REDUCE-RATIONALP-*))
     (18 18 (:REWRITE RATIONALP-MINUS-X))
     (18 18 (:META META-RATIONALP-CORRECT))
     (17 17
         (:TYPE-PRESCRIPTION LRAT::POSITIVEP-ASH))
     (17 17 (:REWRITE DEFAULT-CDR))
     (16 16 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (16 16 (:REWRITE |(+ c (+ d x))|))
     (12 12 (:TYPE-PRESCRIPTION ABS))
     (11 11 (:REWRITE DEFAULT-TIMES-2))
     (11 11 (:REWRITE DEFAULT-TIMES-1))
     (10 10
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (10 10
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (9 9
        (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (7 1 (:REWRITE DEFAULT-FLOOR-RATIO))
     (6 6 (:REWRITE FOLD-CONSTS-IN-+))
     (4 4 (:REWRITE DEFAULT-CAR))
     (3 3
        (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
     (1 1 (:REWRITE DEFAULT-FLOOR-2))
     (1 1 (:REWRITE DEFAULT-FLOOR-1)))
(LRAT::NATP-LRAT-NAT1 (182 164 (:REWRITE FOLD-CONSTS-IN-+))
                      (163 152 (:REWRITE DEFAULT-+-2))
                      (163 152 (:REWRITE DEFAULT-+-1))
                      (134 13 (:DEFINITION NTH))
                      (46 6 (:REWRITE DISTRIBUTIVITY))
                      (37 37
                          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                      (25 25 (:REWRITE DEFAULT-<-2))
                      (25 25 (:REWRITE DEFAULT-<-1))
                      (23 12 (:REWRITE DEFAULT-UNARY-MINUS))
                      (18 18 (:REWRITE DEFAULT-*-2))
                      (18 18 (:REWRITE DEFAULT-*-1))
                      (17 17 (:REWRITE DEFAULT-COERCE-2))
                      (17 17 (:REWRITE DEFAULT-COERCE-1))
                      (15 15 (:REWRITE DEFAULT-CDR))
                      (15 15 (:REWRITE DEFAULT-CAR))
                      (9 2
                         (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
                      (6 2 (:REWRITE UNICITY-OF-0))
                      (4 2 (:DEFINITION FIX)))
(LRAT::BOUND-LRAT-NAT1 (382 355 (:REWRITE DEFAULT-+-2))
                       (373 355 (:REWRITE DEFAULT-+-1))
                       (92 12 (:REWRITE DISTRIBUTIVITY))
                       (75 75
                           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                       (73 67 (:REWRITE DEFAULT-<-1))
                       (67 67 (:REWRITE DEFAULT-<-2))
                       (44 26 (:REWRITE DEFAULT-UNARY-MINUS))
                       (43 43 (:REWRITE DEFAULT-COERCE-2))
                       (43 43 (:REWRITE DEFAULT-COERCE-1))
                       (40 40 (:REWRITE DEFAULT-*-2))
                       (40 40 (:REWRITE DEFAULT-*-1))
                       (37 37 (:REWRITE DEFAULT-CDR))
                       (37 37 (:REWRITE DEFAULT-CAR)))
(LRAT::LRAT-NAT (90 18 (:DEFINITION LEN))
                (37 19 (:REWRITE DEFAULT-+-2))
                (29 21 (:REWRITE DEFAULT-<-1))
                (26 21 (:REWRITE DEFAULT-<-2))
                (26 13
                    (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                (19 19 (:REWRITE DEFAULT-COERCE-2))
                (19 19 (:REWRITE DEFAULT-COERCE-1))
                (19 19 (:REWRITE DEFAULT-CDR))
                (19 19 (:REWRITE DEFAULT-+-1))
                (13 13 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                (6 1 (:DEFINITION NTH))
                (1 1 (:REWRITE ZP-OPEN))
                (1 1 (:REWRITE DEFAULT-CAR)))
(LRAT::NATP-LRAT-NAT)
(LRAT::BOUND-LRAT-NAT)
(LRAT::LRAT-INT (95 19 (:DEFINITION LEN))
                (56 28
                    (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                (41 22 (:REWRITE DEFAULT-+-2))
                (35 27 (:REWRITE DEFAULT-<-1))
                (32 27 (:REWRITE DEFAULT-<-2))
                (28 28 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                (22 22 (:REWRITE DEFAULT-+-1))
                (20 20 (:REWRITE DEFAULT-COERCE-2))
                (20 20 (:REWRITE DEFAULT-COERCE-1))
                (20 20 (:REWRITE DEFAULT-CDR))
                (6 1 (:DEFINITION NTH))
                (1 1 (:REWRITE ZP-OPEN))
                (1 1 (:REWRITE DEFAULT-CAR)))
(LRAT::INTEGERP-LRAT-INT)
(LRAT::BOUND-LRAT-INT (78 58
                          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                      (30 30 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                      (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
                      (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
                      (24 14 (:REWRITE DEFAULT-<-2))
                      (22 14 (:REWRITE DEFAULT-<-1))
                      (20 2 (:DEFINITION LRAT::N59-LISTP))
                      (20 2 (:DEFINITION LRAT::I60-LISTP))
                      (12 2 (:DEFINITION NTH))
                      (8 8
                         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                      (6 6 (:REWRITE DEFAULT-CDR))
                      (6 6 (:REWRITE DEFAULT-CAR))
                      (6 4 (:REWRITE DEFAULT-+-2))
                      (4 4 (:REWRITE DEFAULT-+-1))
                      (4 2 (:REWRITE DEFAULT-UNARY-MINUS))
                      (2 2 (:REWRITE ZP-OPEN))
                      (2 2 (:REWRITE DEFAULT-COERCE-2))
                      (2 2 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::LRAT-FLG-INT (75 15 (:DEFINITION LEN))
                    (40 22 (:REWRITE DEFAULT-<-1))
                    (30 15 (:REWRITE DEFAULT-+-2))
                    (26 22 (:REWRITE DEFAULT-<-2))
                    (15 15 (:REWRITE DEFAULT-COERCE-2))
                    (15 15 (:REWRITE DEFAULT-COERCE-1))
                    (15 15 (:REWRITE DEFAULT-CDR))
                    (15 15 (:REWRITE DEFAULT-+-1)))
(LRAT::NATP-POS-LRAT-FLG-INT (5 4 (:REWRITE DEFAULT-<-2))
                             (5 2 (:REWRITE DEFAULT-CAR))
                             (4 4 (:REWRITE DEFAULT-<-1)))
(LRAT::BOUND-LRAT-FLG-INT (8 7 (:REWRITE DEFAULT-<-2))
                          (7 7 (:REWRITE DEFAULT-<-1))
                          (6 3 (:REWRITE DEFAULT-CAR)))
(LRAT::POS-HAS-INCREASED-LRAT-FLG-INT-1
     (89 62
         (:TYPE-PRESCRIPTION LRAT::NATP-FIND-NEXT-SPACE))
     (62 62
         (:TYPE-PRESCRIPTION LRAT::FIND-NEXT-SPACE))
     (44 6 (:REWRITE DEFAULT-<-2))
     (27 27 (:TYPE-PRESCRIPTION NATP))
     (23 5
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (11 2 (:REWRITE DEFAULT-CAR))
     (9 6 (:REWRITE DEFAULT-<-1)))
(LRAT::CAR-LRAT-FLAG-INT-LESS-THAN-LEN (40 8 (:DEFINITION LEN))
                                       (16 8 (:REWRITE DEFAULT-+-2))
                                       (11 7 (:REWRITE DEFAULT-<-2))
                                       (10 7 (:REWRITE DEFAULT-<-1))
                                       (8 8 (:REWRITE DEFAULT-COERCE-2))
                                       (8 8 (:REWRITE DEFAULT-COERCE-1))
                                       (8 8 (:REWRITE DEFAULT-CDR))
                                       (8 8 (:REWRITE DEFAULT-+-1))
                                       (8 2 (:REWRITE DEFAULT-CAR)))
(LRAT::MV-NTH-1-NATP-LRAT-FLG-INT
     (59 37
         (:TYPE-PRESCRIPTION LRAT::NATP-FIND-NEXT-SPACE))
     (40 2 (:REWRITE DEFAULT-<-2))
     (37 37
         (:TYPE-PRESCRIPTION LRAT::FIND-NEXT-SPACE))
     (22 22 (:TYPE-PRESCRIPTION NATP))
     (22 4
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (10 1 (:REWRITE DEFAULT-CAR))
     (4 2 (:REWRITE DEFAULT-<-1))
     (1 1 (:REWRITE DEFAULT-CDR)))
(LRAT::ONE-TIME-MATH-FACT (6 6 (:REWRITE DEFAULT-<-2))
                          (6 6 (:REWRITE DEFAULT-<-1))
                          (4 4 (:REWRITE DEFAULT-UNARY-MINUS)))
(LRAT::MV-NTH1-LRAT-FLG-INT-ABS-LESS-THAN-*2^60*
     (91 53
         (:TYPE-PRESCRIPTION LRAT::NATP-FIND-NEXT-SPACE))
     (63 5 (:REWRITE DEFAULT-<-2))
     (53 53
         (:TYPE-PRESCRIPTION LRAT::FIND-NEXT-SPACE))
     (38 38 (:TYPE-PRESCRIPTION NATP))
     (33 6
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (10 1 (:REWRITE DEFAULT-CAR))
     (9 5 (:REWRITE DEFAULT-<-1))
     (2 2 (:REWRITE DEFAULT-CDR)))
(LRAT::LRAT-FLG-NAT-LIST-UNTIL-0
     (115 23 (:DEFINITION LEN))
     (112 44 (:REWRITE DEFAULT-<-2))
     (95 44 (:REWRITE DEFAULT-<-1))
     (74 11
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (71 35 (:REWRITE DEFAULT-+-2))
     (66 8 (:REWRITE DEFAULT-UNARY-MINUS))
     (42 35 (:REWRITE DEFAULT-+-1))
     (26 26 (:REWRITE DEFAULT-CDR))
     (23 23 (:REWRITE DEFAULT-COERCE-2))
     (23 23 (:REWRITE DEFAULT-COERCE-1))
     (10 2 (:LINEAR LRAT::BOUND-FIND-NEXT-SPACE))
     (3 3 (:REWRITE DEFAULT-CAR)))
(LRAT::NATP-LRAT-FLG-NAT-LIST-UNTIL-0
     (91 64 (:REWRITE DEFAULT-<-1))
     (82 64 (:REWRITE DEFAULT-<-2))
     (27 21 (:REWRITE DEFAULT-+-2))
     (24 8
         (:LINEAR LRAT::POS-FACT-LRAT-POS-SKIP-SPACES))
     (21 21 (:REWRITE DEFAULT-+-1))
     (18 11 (:REWRITE DEFAULT-CAR))
     (15 15 (:REWRITE DEFAULT-UNARY-MINUS))
     (8 2
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(LRAT::BOUND-LRAT-FLG-NAT-LIST-UNTIL-0
     (127 89 (:REWRITE DEFAULT-<-2))
     (116 89 (:REWRITE DEFAULT-<-1))
     (37 29 (:REWRITE DEFAULT-+-2))
     (29 29 (:REWRITE DEFAULT-+-1))
     (28 18 (:REWRITE DEFAULT-CAR))
     (21 21 (:REWRITE DEFAULT-UNARY-MINUS)))
(LRAT::NAT-LISTP-LRAT-FLG-NAT-LIST-UNTIL-0
     (1676 838
           (:TYPE-PRESCRIPTION LRAT::NATP-LRAT-POS-SKIP-SPACES))
     (1170 234
           (:TYPE-PRESCRIPTION LRAT::NATP-FIND-NEXT-SPACE))
     (1088 1088 (:TYPE-PRESCRIPTION NATP))
     (936 234
          (:TYPE-PRESCRIPTION LRAT::FIND-NEXT-SPACE))
     (838 838
          (:TYPE-PRESCRIPTION LRAT::LRAT-POS-SKIP-SPACES))
     (451 55 (:REWRITE DEFAULT-<-2))
     (373 67
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (271 55 (:REWRITE DEFAULT-<-1))
     (65 17 (:REWRITE DEFAULT-+-2))
     (50 10
         (:LINEAR LRAT::POS-FACT-LRAT-POS-SKIP-SPACES))
     (31 17 (:REWRITE DEFAULT-+-1))
     (30 6 (:LINEAR LRAT::BOUND-FIND-NEXT-SPACE))
     (28 14 (:REWRITE DEFAULT-UNARY-MINUS))
     (27 23 (:REWRITE DEFAULT-CDR))
     (14 14 (:REWRITE DEFAULT-CAR))
     (8 8
        (:TYPE-PRESCRIPTION LRAT::LRAT-FLG-NAT-LIST-UNTIL-0)))
(LRAT::LRAT-FLG-INT-LIST-UNTIL-0
     (115 23 (:DEFINITION LEN))
     (110 42 (:REWRITE DEFAULT-<-2))
     (93 42 (:REWRITE DEFAULT-<-1))
     (74 11
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (71 35 (:REWRITE DEFAULT-+-2))
     (66 8 (:REWRITE DEFAULT-UNARY-MINUS))
     (42 35 (:REWRITE DEFAULT-+-1))
     (26 26 (:REWRITE DEFAULT-CDR))
     (23 23 (:REWRITE DEFAULT-COERCE-2))
     (23 23 (:REWRITE DEFAULT-COERCE-1))
     (10 2 (:LINEAR LRAT::BOUND-FIND-NEXT-SPACE))
     (3 3 (:REWRITE DEFAULT-CAR)))
(LRAT::NATP-LRAT-FLG-INT-LIST-UNTIL-0
     (91 64 (:REWRITE DEFAULT-<-1))
     (82 64 (:REWRITE DEFAULT-<-2))
     (27 21 (:REWRITE DEFAULT-+-2))
     (24 8
         (:LINEAR LRAT::POS-FACT-LRAT-POS-SKIP-SPACES))
     (21 21 (:REWRITE DEFAULT-+-1))
     (18 11 (:REWRITE DEFAULT-CAR))
     (15 15 (:REWRITE DEFAULT-UNARY-MINUS))
     (8 2
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(LRAT::BOUND-LRAT-FLG-INT-LIST-UNTIL-0
     (127 89 (:REWRITE DEFAULT-<-2))
     (116 89 (:REWRITE DEFAULT-<-1))
     (37 29 (:REWRITE DEFAULT-+-2))
     (29 29 (:REWRITE DEFAULT-+-1))
     (28 18 (:REWRITE DEFAULT-CAR))
     (21 21 (:REWRITE DEFAULT-UNARY-MINUS)))
(LRAT::INTEGER-LISTP-LRAT-FLG-INT-LIST-UNTIL-0
     (1612 806
           (:TYPE-PRESCRIPTION LRAT::NATP-LRAT-POS-SKIP-SPACES))
     (1125 225
           (:TYPE-PRESCRIPTION LRAT::NATP-FIND-NEXT-SPACE))
     (1047 1047 (:TYPE-PRESCRIPTION NATP))
     (900 225
          (:TYPE-PRESCRIPTION LRAT::FIND-NEXT-SPACE))
     (806 806
          (:TYPE-PRESCRIPTION LRAT::LRAT-POS-SKIP-SPACES))
     (438 42 (:REWRITE DEFAULT-<-2))
     (373 67
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (258 42 (:REWRITE DEFAULT-<-1))
     (65 17 (:REWRITE DEFAULT-+-2))
     (50 10
         (:LINEAR LRAT::POS-FACT-LRAT-POS-SKIP-SPACES))
     (48 16 (:DEFINITION NATP))
     (31 17 (:REWRITE DEFAULT-+-1))
     (30 6 (:LINEAR LRAT::BOUND-FIND-NEXT-SPACE))
     (28 14 (:REWRITE DEFAULT-UNARY-MINUS))
     (27 23 (:REWRITE DEFAULT-CDR))
     (14 14 (:REWRITE DEFAULT-CAR))
     (8 8
        (:TYPE-PRESCRIPTION LRAT::LRAT-FLG-INT-LIST-UNTIL-0)))
(LRAT::LRAT-FLG-NAT-LIST-UNTIL-0-OR--
     (121 50 (:REWRITE DEFAULT-<-2))
     (120 24 (:DEFINITION LEN))
     (113 63
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (107 50 (:REWRITE DEFAULT-<-1))
     (75 38 (:REWRITE DEFAULT-+-2))
     (74 11
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (66 8 (:REWRITE DEFAULT-UNARY-MINUS))
     (50 50 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (45 38 (:REWRITE DEFAULT-+-1))
     (37 2 (:DEFINITION NTH))
     (29 29 (:REWRITE DEFAULT-CDR))
     (26 26 (:REWRITE DEFAULT-COERCE-2))
     (26 26 (:REWRITE DEFAULT-COERCE-1))
     (10 2 (:LINEAR LRAT::BOUND-FIND-NEXT-SPACE))
     (5 5 (:REWRITE DEFAULT-CAR)))
(LRAT::NATP-LRAT-FLG-NAT-LIST-UNTIL-0-OR--
     (378 189
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (199 199
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (123 92 (:REWRITE DEFAULT-<-2))
     (121 92 (:REWRITE DEFAULT-<-1))
     (42 36 (:REWRITE DEFAULT-+-2))
     (36 36 (:REWRITE DEFAULT-+-1))
     (36 29 (:REWRITE DEFAULT-CAR))
     (30 10
         (:LINEAR LRAT::POS-FACT-LRAT-POS-SKIP-SPACES))
     (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
     (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
     (20 2 (:DEFINITION LRAT::N59-LISTP))
     (20 2 (:DEFINITION LRAT::I60-LISTP))
     (17 17 (:REWRITE DEFAULT-UNARY-MINUS))
     (17 17 (:REWRITE DEFAULT-CDR))
     (13 13 (:REWRITE DEFAULT-COERCE-2))
     (13 13 (:REWRITE DEFAULT-COERCE-1))
     (8 2
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(LRAT::BOUND-LRAT-FLG-NAT-LIST-UNTIL-0-OR--
     (476 238
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (248 248
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (172 119 (:REWRITE DEFAULT-<-2))
     (149 119 (:REWRITE DEFAULT-<-1))
     (58 50 (:REWRITE DEFAULT-+-2))
     (52 42 (:REWRITE DEFAULT-CAR))
     (50 50 (:REWRITE DEFAULT-+-1))
     (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
     (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
     (24 24 (:REWRITE DEFAULT-UNARY-MINUS))
     (22 22 (:REWRITE DEFAULT-CDR))
     (20 2 (:DEFINITION LRAT::N59-LISTP))
     (20 2 (:DEFINITION LRAT::I60-LISTP))
     (18 18 (:REWRITE DEFAULT-COERCE-2))
     (18 18 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::NAT-LISTP-LRAT-FLG-NAT-LIST-UNTIL-0-OR--
     (2324 1162
           (:TYPE-PRESCRIPTION LRAT::NATP-LRAT-POS-SKIP-SPACES))
     (1426 1426 (:TYPE-PRESCRIPTION NATP))
     (1230 246
           (:TYPE-PRESCRIPTION LRAT::NATP-FIND-NEXT-SPACE))
     (1162 1162
           (:TYPE-PRESCRIPTION LRAT::LRAT-POS-SKIP-SPACES))
     (984 246
          (:TYPE-PRESCRIPTION LRAT::FIND-NEXT-SPACE))
     (479 81 (:REWRITE DEFAULT-<-2))
     (399 75
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (340 170
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (335 81 (:REWRITE DEFAULT-<-1))
     (180 180
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (78 30 (:REWRITE DEFAULT-+-2))
     (60 12
         (:LINEAR LRAT::POS-FACT-LRAT-POS-SKIP-SPACES))
     (46 30 (:REWRITE DEFAULT-+-1))
     (45 41 (:REWRITE DEFAULT-CDR))
     (32 16 (:REWRITE DEFAULT-UNARY-MINUS))
     (31 31 (:REWRITE DEFAULT-CAR))
     (30 6 (:LINEAR LRAT::BOUND-FIND-NEXT-SPACE))
     (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
     (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
     (20 2 (:DEFINITION LRAT::N59-LISTP))
     (20 2 (:DEFINITION LRAT::I60-LISTP))
     (11 11 (:REWRITE DEFAULT-COERCE-2))
     (11 11 (:REWRITE DEFAULT-COERCE-1))
     (8 8
        (:TYPE-PRESCRIPTION LRAT::LRAT-FLG-NAT-LIST-UNTIL-0-OR--)))
(LRAT::LRAT-FLG-NAT-REV-LIST-OF-LISTS-UNTIL-0-OR--
     (154 77
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (105 21 (:DEFINITION LEN))
     (77 77 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (69 39 (:REWRITE DEFAULT-+-2))
     (68 35 (:REWRITE DEFAULT-<-2))
     (56 35 (:REWRITE DEFAULT-<-1))
     (48 39 (:REWRITE DEFAULT-+-1))
     (32 31 (:REWRITE DEFAULT-CDR))
     (32 10 (:REWRITE DEFAULT-UNARY-MINUS))
     (30 30 (:TYPE-PRESCRIPTION NATP))
     (27 9
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (23 23 (:REWRITE DEFAULT-COERCE-2))
     (23 23 (:REWRITE DEFAULT-COERCE-1))
     (19 14 (:REWRITE DEFAULT-CAR))
     (12 4 (:DEFINITION INTEGER-LISTP))
     (12 2 (:DEFINITION NTH)))
(LRAT::NATP-LRAT-FLG-NAT-REV-LIST-OF-LISTS-UNTIL-0-OR--
     (366 183
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (193 193
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (123 67 (:REWRITE DEFAULT-<-2))
     (93 59 (:REWRITE DEFAULT-CAR))
     (89 67 (:REWRITE DEFAULT-<-1))
     (64 48 (:REWRITE DEFAULT-+-2))
     (52 37 (:REWRITE DEFAULT-CDR))
     (48 48 (:REWRITE DEFAULT-+-1))
     (28 20 (:REWRITE DEFAULT-UNARY-MINUS))
     (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
     (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
     (20 2 (:DEFINITION LRAT::N59-LISTP))
     (20 2 (:DEFINITION LRAT::I60-LISTP))
     (18 18 (:REWRITE DEFAULT-COERCE-2))
     (18 18 (:REWRITE DEFAULT-COERCE-1))
     (8 2
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(LRAT::BOUND-LRAT-FLG-NAT-REV-LIST-OF-LISTS-UNTIL-0-OR--
     (492 246
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (256 256
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (238 113 (:REWRITE DEFAULT-<-2))
     (164 113 (:REWRITE DEFAULT-<-1))
     (151 95 (:REWRITE DEFAULT-CAR))
     (106 78 (:REWRITE DEFAULT-+-2))
     (86 60 (:REWRITE DEFAULT-CDR))
     (78 78 (:REWRITE DEFAULT-+-1))
     (47 33 (:REWRITE DEFAULT-UNARY-MINUS))
     (30 30 (:REWRITE DEFAULT-COERCE-2))
     (30 30 (:REWRITE DEFAULT-COERCE-1))
     (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
     (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
     (20 2 (:DEFINITION LRAT::N59-LISTP))
     (20 2 (:DEFINITION LRAT::I60-LISTP))
     (14 2
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(LRAT::LIST-INTEGER-LISTP-LRAT-FLG-NAT-REV-LIST-OF-LISTS-UNTIL-0-OR--
  (603 288
       (:TYPE-PRESCRIPTION LRAT::NATP-LRAT-FLG-NAT-LIST-UNTIL-0-OR--))
  (358 38 (:REWRITE DEFAULT-<-2))
  (314 157
       (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
  (290 290 (:TYPE-PRESCRIPTION NATP))
  (288 72
       (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
  (167 167
       (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
  (111 42 (:REWRITE DEFAULT-+-2))
  (106 38 (:REWRITE DEFAULT-<-1))
  (93 75 (:REWRITE DEFAULT-CDR))
  (83 68 (:REWRITE DEFAULT-CAR))
  (76 20 (:REWRITE DEFAULT-UNARY-MINUS))
  (60 42 (:REWRITE DEFAULT-+-1))
  (51 17 (:DEFINITION INTEGER-LISTP))
  (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
  (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
  (20 2 (:DEFINITION LRAT::N59-LISTP))
  (20 2 (:DEFINITION LRAT::I60-LISTP))
  (16 16 (:REWRITE DEFAULT-COERCE-2))
  (16 16 (:REWRITE DEFAULT-COERCE-1))
  (12 12
      (:TYPE-PRESCRIPTION LRAT::LRAT-FLG-NAT-REV-LIST-OF-LISTS-UNTIL-0-OR--))
  (10 2
      (:LINEAR LRAT::BOUND-LRAT-FLG-NAT-LIST-UNTIL-0-OR--))
  (6 2 (:DEFINITION NATP)))
(LRAT::LRAT-LINE-MV (518 292
                         (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                    (241 120 (:REWRITE DEFAULT-<-1))
                    (222 120 (:REWRITE DEFAULT-<-2))
                    (169 84 (:REWRITE DEFAULT-+-2))
                    (90 90 (:REWRITE DEFAULT-CDR))
                    (84 84 (:REWRITE DEFAULT-+-1))
                    (83 83 (:REWRITE DEFAULT-COERCE-2))
                    (83 83 (:REWRITE DEFAULT-COERCE-1))
                    (72 4 (:DEFINITION LRAT::N59-LISTP))
                    (72 4 (:DEFINITION LRAT::I60-LISTP))
                    (40 32 (:REWRITE DEFAULT-CAR))
                    (40 4 (:REWRITE ZP-OPEN)))
(LRAT::NATP-LRAT-LINE-MV (149 103
                              (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                         (89 7 (:REWRITE DEFAULT-CAR))
                         (46 46 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                         (26 14 (:REWRITE DEFAULT-<-2))
                         (25 14 (:REWRITE DEFAULT-<-1))
                         (16 2 (:REWRITE ZP-OPEN))
                         (13 9 (:REWRITE DEFAULT-CDR))
                         (10 6 (:REWRITE DEFAULT-+-2))
                         (6 6 (:REWRITE DEFAULT-+-1))
                         (5 5 (:REWRITE DEFAULT-COERCE-2))
                         (5 5 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::BOUND-1-LRAT-LINE-MV (520 27 (:REWRITE DEFAULT-<-2))
                            (324 216
                                 (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                            (235 1
                                 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                            (178 14 (:REWRITE DEFAULT-CAR))
                            (108 108
                                 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                            (49 27 (:REWRITE DEFAULT-<-1))
                            (32 4 (:REWRITE ZP-OPEN))
                            (26 18 (:REWRITE DEFAULT-CDR))
                            (20 12 (:REWRITE DEFAULT-+-2))
                            (12 12 (:REWRITE DEFAULT-+-1))
                            (10 10 (:REWRITE DEFAULT-COERCE-2))
                            (10 10 (:REWRITE DEFAULT-COERCE-1))
                            (4 4 (:TYPE-PRESCRIPTION NATP)))
(LRAT::BOUND-2-LRAT-LINE-MV (518 27 (:REWRITE DEFAULT-<-1))
                            (380 244
                                 (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                            (314 2
                                 (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                            (208 27 (:REWRITE DEFAULT-<-2))
                            (178 14 (:REWRITE DEFAULT-CAR))
                            (136 136
                                 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                            (32 4 (:REWRITE ZP-OPEN))
                            (26 18 (:REWRITE DEFAULT-CDR))
                            (20 12 (:REWRITE DEFAULT-+-2))
                            (12 12 (:REWRITE DEFAULT-+-1))
                            (10 10 (:REWRITE DEFAULT-COERCE-2))
                            (10 10 (:REWRITE DEFAULT-COERCE-1))
                            (4 4 (:TYPE-PRESCRIPTION NATP)))
(LRAT::LRAT-STR-MV (95 19 (:DEFINITION LEN))
                   (88 34 (:REWRITE DEFAULT-+-2))
                   (79 33 (:REWRITE DEFAULT-<-1))
                   (51 51 (:TYPE-PRESCRIPTION NATP))
                   (48 33 (:REWRITE DEFAULT-<-2))
                   (40 34 (:REWRITE DEFAULT-+-1))
                   (38 11
                       (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                   (29 7 (:REWRITE DEFAULT-UNARY-MINUS))
                   (19 19 (:REWRITE DEFAULT-COERCE-2))
                   (19 19 (:REWRITE DEFAULT-COERCE-1))
                   (19 19 (:REWRITE DEFAULT-CDR))
                   (8 4 (:REWRITE DEFAULT-CAR))
                   (2 2 (:REWRITE FOLD-CONSTS-IN-+)))
(LRAT::LRAT-STR (95 19 (:DEFINITION LEN))
                (88 34 (:REWRITE DEFAULT-+-2))
                (79 33 (:REWRITE DEFAULT-<-1))
                (51 51 (:TYPE-PRESCRIPTION NATP))
                (48 33 (:REWRITE DEFAULT-<-2))
                (40 34 (:REWRITE DEFAULT-+-1))
                (38 11
                    (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                (29 7 (:REWRITE DEFAULT-UNARY-MINUS))
                (19 19 (:REWRITE DEFAULT-COERCE-2))
                (19 19 (:REWRITE DEFAULT-COERCE-1))
                (19 19 (:REWRITE DEFAULT-CDR))
                (8 4 (:REWRITE DEFAULT-CAR))
                (2 2 (:REWRITE FOLD-CONSTS-IN-+)))
(LRAT::POS-AT-EOL (190 95
                       (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                  (110 22 (:DEFINITION LEN))
                  (95 95 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                  (84 53 (:REWRITE DEFAULT-+-2))
                  (65 53 (:REWRITE DEFAULT-+-1))
                  (42 31 (:REWRITE DEFAULT-<-2))
                  (38 31 (:REWRITE DEFAULT-<-1))
                  (30 5 (:DEFINITION NTH))
                  (27 27 (:REWRITE DEFAULT-COERCE-2))
                  (27 27 (:REWRITE DEFAULT-COERCE-1))
                  (27 27 (:REWRITE DEFAULT-CDR))
                  (16 13 (:REWRITE DEFAULT-UNARY-MINUS))
                  (6 6
                     (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                  (5 5 (:REWRITE DEFAULT-CAR))
                  (2 2 (:REWRITE FOLD-CONSTS-IN-+)))
(LRAT::NATP-POS-AT-EOL (152 76
                            (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                       (86 86 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                       (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
                       (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
                       (20 2 (:DEFINITION LRAT::N59-LISTP))
                       (20 2 (:DEFINITION LRAT::I60-LISTP))
                       (18 18 (:REWRITE DEFAULT-<-2))
                       (18 18 (:REWRITE DEFAULT-<-1))
                       (11 11 (:REWRITE DEFAULT-+-2))
                       (11 11 (:REWRITE DEFAULT-+-1))
                       (8 8 (:REWRITE DEFAULT-CDR))
                       (8 8 (:REWRITE DEFAULT-CAR))
                       (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
                       (4 4 (:REWRITE DEFAULT-COERCE-2))
                       (4 4 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::BOUND-POS-AT-EOL (284 142
                             (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                        (152 152
                             (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                        (101 84 (:REWRITE DEFAULT-+-2))
                        (101 84 (:REWRITE DEFAULT-+-1))
                        (70 45 (:REWRITE DEFAULT-<-1))
                        (66 6 (:REWRITE COMMUTATIVITY-2-OF-+))
                        (60 24 (:REWRITE FOLD-CONSTS-IN-+))
                        (53 45 (:REWRITE DEFAULT-<-2))
                        (30 30 (:REWRITE DEFAULT-CDR))
                        (26 26 (:REWRITE DEFAULT-COERCE-2))
                        (26 26 (:REWRITE DEFAULT-COERCE-1))
                        (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
                        (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
                        (24 6
                            (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
                        (20 2 (:DEFINITION LRAT::N59-LISTP))
                        (20 2 (:DEFINITION LRAT::I60-LISTP))
                        (18 18 (:REWRITE DEFAULT-CAR))
                        (17 17 (:REWRITE DEFAULT-UNARY-MINUS))
                        (12 6 (:REWRITE UNICITY-OF-0))
                        (6 6 (:DEFINITION FIX)))
(LRAT::POS-AT-NEXT-DIGIT-OR-MINUS-CHAR
     (546 273
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (313 313
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (165 33 (:DEFINITION LEN))
     (140 90 (:REWRITE DEFAULT-<-2))
     (126 126 (:TYPE-PRESCRIPTION NATP))
     (115 90 (:REWRITE DEFAULT-<-1))
     (115 69 (:REWRITE DEFAULT-+-2))
     (104 8 (:LINEAR LRAT::NTH-N59-LISTP))
     (104 8 (:LINEAR LRAT::NTH-I60-LISTP))
     (81 69 (:REWRITE DEFAULT-+-1))
     (80 8 (:DEFINITION LRAT::N59-LISTP))
     (80 8 (:DEFINITION LRAT::I60-LISTP))
     (60 16 (:REWRITE DEFAULT-UNARY-MINUS))
     (60 10 (:DEFINITION NTH))
     (59 59 (:REWRITE DEFAULT-CDR))
     (54 18
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (41 41 (:REWRITE DEFAULT-COERCE-2))
     (41 41 (:REWRITE DEFAULT-COERCE-1))
     (26 26 (:REWRITE DEFAULT-CAR))
     (2 2 (:REWRITE FOLD-CONSTS-IN-+)))
(LRAT::NATP-POS-AT-NEXT-DIGIT-OR-MINUS-CHAR
     (646 323
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (323 323
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (84 4 (:LINEAR LRAT::BOUND-POS-AT-EOL))
     (76 4 (:DEFINITION LRAT::LRAT-GUARD))
     (48 40 (:REWRITE DEFAULT-<-2))
     (41 37 (:REWRITE DEFAULT-+-2))
     (40 40 (:REWRITE DEFAULT-<-1))
     (37 37 (:REWRITE DEFAULT-+-1))
     (32 4 (:DEFINITION LENGTH))
     (28 28 (:TYPE-PRESCRIPTION LEN))
     (23 23 (:REWRITE DEFAULT-COERCE-2))
     (23 23 (:REWRITE DEFAULT-COERCE-1))
     (23 23 (:REWRITE DEFAULT-CDR))
     (20 4 (:DEFINITION LEN))
     (19 19 (:REWRITE DEFAULT-CAR))
     (13 13 (:REWRITE DEFAULT-UNARY-MINUS))
     (4 4
        (:TYPE-PRESCRIPTION LRAT::LRAT-GUARD)))
(LRAT::BOUND-POS-AT-NEXT-DIGIT-OR-MINUS-CHAR
     (1288 644
           (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (644 644
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (309 133 (:REWRITE DEFAULT-<-2))
     (234 133 (:REWRITE DEFAULT-<-1))
     (213 152 (:REWRITE DEFAULT-+-2))
     (189 152 (:REWRITE DEFAULT-+-1))
     (66 6 (:REWRITE COMMUTATIVITY-2-OF-+))
     (60 24 (:REWRITE FOLD-CONSTS-IN-+))
     (54 54 (:REWRITE DEFAULT-COERCE-2))
     (54 54 (:REWRITE DEFAULT-COERCE-1))
     (54 54 (:REWRITE DEFAULT-CDR))
     (53 37 (:REWRITE DEFAULT-UNARY-MINUS))
     (42 42 (:REWRITE DEFAULT-CAR))
     (24 6
         (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
     (12 6 (:REWRITE UNICITY-OF-0))
     (6 6 (:DEFINITION FIX)))
(LRAT::LRAT-READ-FILE (1004 502
                            (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                      (1004 502
                            (:TYPE-PRESCRIPTION LRAT::NTH-I60-LISTP))
                      (502 502
                           (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                      (502 502
                           (:TYPE-PRESCRIPTION LRAT::I60-LISTP))
                      (10 2 (:DEFINITION LEN))
                      (6 3 (:REWRITE DEFAULT-<-1))
                      (6 2
                         (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
                      (4 2 (:REWRITE DEFAULT-+-2))
                      (3 3 (:REWRITE DEFAULT-<-2))
                      (2 2 (:REWRITE DEFAULT-COERCE-2))
                      (2 2 (:REWRITE DEFAULT-COERCE-1))
                      (2 2 (:REWRITE DEFAULT-CDR))
                      (2 2 (:REWRITE DEFAULT-+-1)))
(LRAT::CNF-STR (150 38 (:REWRITE DEFAULT-<-2))
               (112 13
                    (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
               (94 38 (:REWRITE DEFAULT-<-1))
               (90 18 (:DEFINITION LEN))
               (83 7 (:REWRITE DEFAULT-UNARY-MINUS))
               (62 29 (:REWRITE DEFAULT-+-2))
               (35 29 (:REWRITE DEFAULT-+-1))
               (18 18 (:REWRITE DEFAULT-COERCE-2))
               (18 18 (:REWRITE DEFAULT-COERCE-1))
               (18 18 (:REWRITE DEFAULT-CDR))
               (16 8 (:REWRITE DEFAULT-CAR)))
(LRAT::NATP-CNF-STR
     (434 182
          (:TYPE-PRESCRIPTION LRAT::POS-AT-NEXT-DIGIT-OR-MINUS-CHAR))
     (194 102 (:REWRITE DEFAULT-<-2))
     (172 8
          (:LINEAR LRAT::BOUND-POS-AT-NEXT-DIGIT-OR-MINUS-CHAR))
     (156 102 (:REWRITE DEFAULT-<-1))
     (156 8 (:DEFINITION LRAT::LRAT-GUARD))
     (104 54 (:REWRITE DEFAULT-CAR))
     (77 43 (:REWRITE DEFAULT-+-2))
     (64 8 (:DEFINITION LENGTH))
     (56 56 (:TYPE-PRESCRIPTION LEN))
     (43 43 (:REWRITE DEFAULT-+-1))
     (42 25 (:REWRITE DEFAULT-CDR))
     (40 8 (:DEFINITION LEN))
     (33 21 (:REWRITE DEFAULT-UNARY-MINUS))
     (22 16
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (16 4 (:REWRITE FOLD-CONSTS-IN-+))
     (8 8 (:TYPE-PRESCRIPTION LRAT::LRAT-GUARD))
     (8 8 (:REWRITE DEFAULT-COERCE-2))
     (8 8 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::BOUND-CNF-STR
     (16327 8791
            (:TYPE-PRESCRIPTION LRAT::POS-AT-NEXT-DIGIT-OR-MINUS-CHAR))
     (10454 873 (:REWRITE DEFAULT-<-2))
     (7512 600
           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (5857 873 (:REWRITE DEFAULT-<-1))
     (1012 72
           (:LINEAR LRAT::BOUND-POS-AT-NEXT-DIGIT-OR-MINUS-CHAR))
     (868 72 (:DEFINITION LRAT::LRAT-GUARD))
     (606 143 (:REWRITE DEFAULT-UNARY-MINUS))
     (490 280 (:REWRITE DEFAULT-CAR))
     (454 241 (:REWRITE DEFAULT-+-2))
     (432 432 (:TYPE-PRESCRIPTION LENGTH))
     (241 241 (:REWRITE DEFAULT-+-1))
     (172 96 (:REWRITE DEFAULT-CDR))
     (88 10 (:REWRITE LRAT::N59-LISTP-FORWARD))
     (88 10 (:REWRITE LRAT::I60-LISTP-FORWARD))
     (72 72
         (:TYPE-PRESCRIPTION LRAT::LRAT-GUARD))
     (64 12 (:DEFINITION LRAT::N59-LISTP))
     (64 12 (:DEFINITION LRAT::I60-LISTP))
     (30 30 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (30 30
         (:TYPE-PRESCRIPTION LRAT::I60-LISTP)))
(LRAT::CNF-READ-FILE (1004 502
                           (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                     (1004 502
                           (:TYPE-PRESCRIPTION LRAT::NTH-I60-LISTP))
                     (502 502
                          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                     (502 502
                          (:TYPE-PRESCRIPTION LRAT::I60-LISTP))
                     (10 2 (:DEFINITION LEN))
                     (6 3 (:REWRITE DEFAULT-<-1))
                     (6 2
                        (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
                     (4 2 (:REWRITE DEFAULT-+-2))
                     (3 3 (:REWRITE DEFAULT-<-2))
                     (2 2 (:REWRITE DEFAULT-COERCE-2))
                     (2 2 (:REWRITE DEFAULT-COERCE-1))
                     (2 2 (:REWRITE DEFAULT-CDR))
                     (2 2 (:REWRITE DEFAULT-+-1)))
(LRAT::POS-AFTER-CLRAT-NUMS (154 77
                                 (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                            (130 26 (:DEFINITION LEN))
                            (83 50 (:REWRITE DEFAULT-+-2))
                            (77 77 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                            (59 50 (:REWRITE DEFAULT-+-1))
                            (54 40 (:REWRITE DEFAULT-<-1))
                            (50 40 (:REWRITE DEFAULT-<-2))
                            (36 4 (:REWRITE DEFAULT-CHAR-CODE))
                            (29 29 (:REWRITE DEFAULT-CDR))
                            (27 27 (:REWRITE DEFAULT-COERCE-2))
                            (27 27 (:REWRITE DEFAULT-COERCE-1))
                            (18 3 (:DEFINITION NTH))
                            (14 11 (:REWRITE DEFAULT-UNARY-MINUS))
                            (8 8
                               (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                            (3 3 (:REWRITE DEFAULT-CAR))
                            (2 2 (:REWRITE FOLD-CONSTS-IN-+)))
(LRAT::NATP-POS-AFTER-CLRAT-NUMS
     (296 11 (:REWRITE DEFAULT-CHAR-CODE))
     (232 116
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (153 11 (:REWRITE CHARACTERP-NTH))
     (116 116
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (66 66 (:TYPE-PRESCRIPTION LEN))
     (55 11 (:DEFINITION LEN))
     (54 9 (:DEFINITION NTH))
     (50 39 (:REWRITE DEFAULT-<-2))
     (50 39 (:REWRITE DEFAULT-+-2))
     (41 39 (:REWRITE DEFAULT-<-1))
     (39 39 (:REWRITE DEFAULT-+-1))
     (20 20 (:REWRITE DEFAULT-CDR))
     (11 11 (:REWRITE DEFAULT-UNARY-MINUS))
     (9 9 (:REWRITE DEFAULT-COERCE-2))
     (9 9 (:REWRITE DEFAULT-COERCE-1))
     (9 9 (:REWRITE DEFAULT-CAR))
     (5 5 (:REWRITE CHARACTER-LISTP-COERCE)))
(LRAT::BOUND-POS-AFTER-CLRAT-NUMS
     (428 16 (:REWRITE DEFAULT-CHAR-CODE))
     (330 165
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (220 16 (:REWRITE CHARACTERP-NTH))
     (165 165
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (96 96 (:TYPE-PRESCRIPTION LEN))
     (90 69 (:REWRITE DEFAULT-<-2))
     (84 14 (:DEFINITION NTH))
     (80 16 (:DEFINITION LEN))
     (78 62 (:REWRITE DEFAULT-+-2))
     (75 69 (:REWRITE DEFAULT-<-1))
     (62 62 (:REWRITE DEFAULT-+-1))
     (30 30 (:REWRITE DEFAULT-CDR))
     (17 17 (:REWRITE DEFAULT-UNARY-MINUS))
     (14 14 (:REWRITE DEFAULT-COERCE-2))
     (14 14 (:REWRITE DEFAULT-COERCE-1))
     (14 14 (:REWRITE DEFAULT-CAR))
     (6 6 (:REWRITE CHARACTER-LISTP-COERCE)))
(LRAT::CLRAT-NAT
 (42778 69 (:REWRITE MOD-X-Y-=-X . 4))
 (40667 69 (:REWRITE MOD-ZERO . 4))
 (28088 56 (:REWRITE CANCEL-MOD-+))
 (20298 122 (:REWRITE |(* (* x y) z)|))
 (17206 3662 (:TYPE-PRESCRIPTION MOD-ZERO . 1))
 (17206 3662
        (:TYPE-PRESCRIPTION MOD-POSITIVE . 2))
 (17206 3662
        (:TYPE-PRESCRIPTION MOD-NEGATIVE . 2))
 (16810 3662 (:TYPE-PRESCRIPTION MOD-ZERO . 2))
 (16512 69 (:REWRITE MOD-X-Y-=-X-Y . 2))
 (14126 69 (:REWRITE DEFAULT-MOD-RATIO))
 (13455 13455
        (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
 (13455 13455
        (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
 (13455 13455
        (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
 (12898 709 (:REWRITE DEFAULT-TIMES-1))
 (11848 68 (:REWRITE |(* (- x) y)|))
 (11809 709 (:REWRITE DEFAULT-TIMES-2))
 (9493 69 (:REWRITE MOD-ZERO . 3))
 (8050 4025
       (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
 (6930 50 (:REWRITE |(integerp (- x))|))
 (4223 69 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (4102 3662
       (:TYPE-PRESCRIPTION INTEGERP-MOD-2))
 (4080 56 (:REWRITE MOD-X-Y-=-X . 2))
 (4080 56 (:REWRITE |(mod (+ x (mod a b)) y)|))
 (4080 56
       (:REWRITE |(mod (+ x (- (mod a b))) y)|))
 (4025 4025
       (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
 (3662 3662 (:TYPE-PRESCRIPTION MOD-ZERO . 3))
 (3662 3662
       (:TYPE-PRESCRIPTION MOD-POSITIVE . 1))
 (3662 3662
       (:TYPE-PRESCRIPTION MOD-NONPOSITIVE))
 (3662 3662
       (:TYPE-PRESCRIPTION MOD-NEGATIVE . 1))
 (2994
  2994
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (2994
      2994
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (2994
     2994
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (2994 2994
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (2569 47 (:REWRITE |(mod x 1)|))
 (2190 69 (:REWRITE MOD-X-Y-=-X-Y . 3))
 (2190 69 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (2102 69 (:REWRITE DEFAULT-MOD-1))
 (1990 56 (:REWRITE MOD-CANCEL-*-CONST))
 (1974 58 (:LINEAR MOD-BOUNDS-2))
 (1694 54
       (:REWRITE MOD-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
 (1694 54
       (:REWRITE |(mod (* x (/ y)) z) not rewriting-goal-literal|))
 (1570 29 (:LINEAR MOD-BOUNDS-3))
 (1314 6 (:REWRITE |(* y (* x z))|))
 (1302 277
       (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (1016 8 (:REWRITE INTEGERP-MOD-2))
 (1016 8 (:REWRITE INTEGERP-MOD-1))
 (867 599 (:REWRITE DEFAULT-PLUS-2))
 (778 369 (:REWRITE DEFAULT-LESS-THAN-2))
 (708 4 (:REWRITE |(* x (+ y z))|))
 (673 15 (:REWRITE |(* c (* d x))|))
 (648 12 (:REWRITE |(* a (/ a) b)|))
 (483 179 (:REWRITE INTEGERP-MINUS-X))
 (455 36
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (455 36
      (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (441 3 (:REWRITE DEFAULT-FLOOR-RATIO))
 (370 370 (:REWRITE THE-FLOOR-BELOW))
 (370 370 (:REWRITE THE-FLOOR-ABOVE))
 (356 54
      (:REWRITE |(mod (* x (/ y)) z) rewriting-goal-literal|))
 (332 324
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (332 324
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (324 324
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (324 324 (:REWRITE |(< (/ x) (/ y))|))
 (324 36 (:REWRITE ACL2-NUMBERP-X))
 (319 316
      (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (316 316
      (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (316 316
      (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (316 316
      (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (316 316
      (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (316 316
      (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (316 316
      (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (316 316
      (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (299 32 (:REWRITE DEFAULT-CHAR-CODE))
 (288 288
      (:TYPE-PRESCRIPTION |(< (logand x y) 0)| . 1))
 (287 281
      (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (281 281 (:REWRITE INTEGERP-<-CONSTANT))
 (281 281 (:REWRITE CONSTANT-<-INTEGERP))
 (224 32 (:DEFINITION LEN))
 (178 40 (:REWRITE DEFAULT-LOGAND-2))
 (171 171 (:REWRITE REDUCE-INTEGERP-+))
 (171 171 (:META META-INTEGERP-CORRECT))
 (168 64 (:REWRITE |(- (* c x))|))
 (166 166
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (162 40 (:REWRITE DEFAULT-LOGAND-1))
 (144 36 (:REWRITE RATIONALP-X))
 (120 120
      (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (120 120
      (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (120 120
      (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (110 2 (:REWRITE |(* -1 x)|))
 (99 3 (:REWRITE DEFAULT-FLOOR-1))
 (92 92 (:REWRITE |(< (/ x) 0)|))
 (92 92 (:REWRITE |(< (* x y) 0)|))
 (86 86 (:REWRITE |(< (+ c/d x) y)|))
 (86 86 (:REWRITE |(< (+ (- c) x) y)|))
 (82 82 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (78 78 (:REWRITE |(< 0 (/ x))|))
 (78 78 (:REWRITE |(< 0 (* x y))|))
 (69 69 (:REWRITE DEFAULT-MOD-2))
 (60 6 (:REWRITE DEFAULT-DIVIDE))
 (58 58
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (58 58
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (54 54 (:REWRITE |(mod x (- y))| . 3))
 (54 54 (:REWRITE |(mod x (- y))| . 2))
 (54 54 (:REWRITE |(mod x (- y))| . 1))
 (54 54
     (:REWRITE |(mod x (* y (/ z))) rewriting-goal-literal|))
 (54 54
     (:REWRITE |(mod x (* y (/ z))) not rewriting-goal-literal|))
 (54 54 (:REWRITE |(mod (- x) y)| . 3))
 (54 54 (:REWRITE |(mod (- x) y)| . 2))
 (54 54 (:REWRITE |(mod (- x) y)| . 1))
 (52 52 (:REWRITE |arith (expt x c)|))
 (51 51 (:REWRITE |(< y (+ (- c) x))|))
 (51 51 (:REWRITE |(< x (+ c/d y))|))
 (48 48 (:REWRITE |arith (expt 1/c n)|))
 (48 48
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (48 48
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (42 42 (:REWRITE DEFAULT-COERCE-2))
 (42 42 (:REWRITE DEFAULT-COERCE-1))
 (42 36
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (38 38 (:REWRITE DEFAULT-CDR))
 (36 36 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (36 36 (:REWRITE REDUCE-RATIONALP-+))
 (36 36 (:REWRITE REDUCE-RATIONALP-*))
 (36 36
     (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (36 36 (:REWRITE RATIONALP-MINUS-X))
 (36 36
     (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (36 36 (:REWRITE |(equal c (/ x))|))
 (36 36 (:REWRITE |(equal c (- x))|))
 (36 36 (:REWRITE |(equal (/ x) c)|))
 (36 36 (:REWRITE |(equal (/ x) (/ y))|))
 (36 36 (:REWRITE |(equal (- x) c)|))
 (36 36 (:REWRITE |(equal (- x) (- y))|))
 (36 36 (:META META-RATIONALP-CORRECT))
 (32 32
     (:REWRITE ARITH-NORMALIZE-FACTORS-SCATTER-EXPONENTS))
 (30 3 (:REWRITE DEFAULT-FLOOR-2))
 (29 29
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (24 24 (:REWRITE |arith (* c (* d x))|))
 (22 22 (:TYPE-PRESCRIPTION ABS))
 (21 21 (:REWRITE DEFAULT-EXPT-2))
 (21 21 (:REWRITE DEFAULT-EXPT-1))
 (21 21 (:REWRITE |(expt 1/c n)|))
 (21 21 (:REWRITE |(expt (- x) n)|))
 (15 15 (:REWRITE |(equal (* x y) 0)|))
 (15 15
     (:REWRITE |(< 0 (* x y)) rationalp (* x y)|))
 (14 14 (:REWRITE FOLD-CONSTS-IN-+))
 (14 2 (:LINEAR LOGAND-BOUNDS-NEG . 2))
 (14 2 (:LINEAR LOGAND-BOUNDS-NEG . 1))
 (12 12
     (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE-<-1))
 (12 12
     (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
 (10 10 (:REWRITE |arith (- (* c x))|))
 (10 10 (:REWRITE |arith (* (- x) y)|))
 (10 10 (:REWRITE DEFAULT-CAR))
 (6 6 (:LINEAR EXPT-X->=-X))
 (6 6 (:LINEAR EXPT-X->-X))
 (6 6 (:LINEAR EXPT-LINEAR-UPPER-<=))
 (6 6 (:LINEAR EXPT-LINEAR-UPPER-<))
 (6 6 (:LINEAR EXPT-LINEAR-LOWER-<))
 (6 6 (:LINEAR EXPT->=-1-TWO))
 (6 6 (:LINEAR EXPT->-1-TWO))
 (6 6 (:LINEAR EXPT->-1-ONE))
 (6 6 (:LINEAR EXPT-<=-1-TWO))
 (6 6 (:LINEAR EXPT-<=-1-ONE))
 (6 6 (:LINEAR EXPT-<-1-TWO))
 (6 6 (:LINEAR EXPT-<-1-ONE))
 (4 4 (:REWRITE ARITH-NORMALIZE-ADDENDS))
 (2 2 (:REWRITE INTEGERP-+-REDUCE-CONSTANT))
 (2 2
    (:REWRITE |(mod (+ x y) z) where (<= 0 z)| . 3))
 (2 2
    (:REWRITE |(mod (+ x y) z) where (<= 0 z)| . 2))
 (2 2 (:REWRITE |(equal (+ (- c) x) y)|))
 (1 1 (:REWRITE MOD-NEGATIVE . 3))
 (1 1 (:REWRITE MOD-NEGATIVE . 2))
 (1 1
    (:REWRITE |(< (* x y) 0) rationalp (* x y)|)))
(LRAT::NATP-CLRAT-NAT)
(LRAT::BOUND-CLRAT-NAT (3040 60
                             (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
                       (2270 1135
                             (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                       (1296 562 (:REWRITE DEFAULT-+-2))
                       (1135 1135
                             (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                       (1068 380 (:REWRITE DEFAULT-*-2))
                       (1060 562 (:REWRITE DEFAULT-+-1))
                       (751 277 (:REWRITE DEFAULT-<-1))
                       (738 28 (:REWRITE DISTRIBUTIVITY))
                       (570 60 (:DEFINITION NFIX))
                       (407 277 (:REWRITE DEFAULT-<-2))
                       (380 380 (:REWRITE DEFAULT-*-1))
                       (289 17 (:REWRITE DEFAULT-CHAR-CODE))
                       (222 76 (:REWRITE DEFAULT-UNARY-MINUS))
                       (190 60 (:REWRITE DEFAULT-NUMERATOR))
                       (190 60 (:REWRITE DEFAULT-DENOMINATOR))
                       (190 60 (:DEFINITION IFIX))
                       (152 16 (:DEFINITION NTH))
                       (108 108
                            (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                       (68 68 (:TYPE-PRESCRIPTION NATP))
                       (68 15 (:REWRITE CHARACTERP-NTH))
                       (42 12 (:REWRITE FOLD-CONSTS-IN-+))
                       (20 20 (:REWRITE DEFAULT-COERCE-2))
                       (20 20 (:REWRITE DEFAULT-COERCE-1))
                       (18 18 (:REWRITE DEFAULT-CDR))
                       (18 18 (:REWRITE DEFAULT-CAR))
                       (14 2 (:REWRITE COMMUTATIVITY-2-OF-+))
                       (10 2
                           (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
                       (4 4 (:REWRITE CHARACTER-LISTP-COERCE)))
(LRAT::CLRAT-INT (1088 68
                       (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
                 (847 537 (:REWRITE DEFAULT-+-2))
                 (741 537 (:REWRITE DEFAULT-+-1))
                 (638 319
                      (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                 (557 367 (:REWRITE DEFAULT-*-2))
                 (372 279 (:REWRITE DEFAULT-<-1))
                 (367 367 (:REWRITE DEFAULT-*-1))
                 (319 319
                      (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                 (304 279 (:REWRITE DEFAULT-<-2))
                 (231 24 (:REWRITE DEFAULT-CHAR-CODE))
                 (204 68 (:DEFINITION NFIX))
                 (190 38 (:DEFINITION LEN))
                 (102 17 (:DEFINITION NTH))
                 (86 72 (:REWRITE DEFAULT-UNARY-MINUS))
                 (68 68 (:REWRITE DEFAULT-NUMERATOR))
                 (68 68 (:REWRITE DEFAULT-DENOMINATOR))
                 (68 68 (:DEFINITION IFIX))
                 (65 13 (:REWRITE ZIP-OPEN))
                 (55 55 (:REWRITE DEFAULT-COERCE-2))
                 (55 55 (:REWRITE DEFAULT-COERCE-1))
                 (55 55 (:REWRITE DEFAULT-CDR))
                 (17 17 (:REWRITE ZP-OPEN))
                 (17 17 (:REWRITE DEFAULT-CAR)))
(LRAT::INTEGERP-CLRAT-INT)
(LRAT::BOUND-CLRAT-INT (192 12
                            (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
                       (138 88 (:REWRITE DEFAULT-+-2))
                       (124 88 (:REWRITE DEFAULT-+-1))
                       (110 46 (:REWRITE DEFAULT-<-1))
                       (98 68
                           (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                       (96 64 (:REWRITE DEFAULT-*-2))
                       (64 64 (:REWRITE DEFAULT-*-1))
                       (56 46 (:REWRITE DEFAULT-<-2))
                       (38 2 (:REWRITE DEFAULT-CHAR-CODE))
                       (36 12 (:DEFINITION NFIX))
                       (30 30 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                       (30 16 (:REWRITE DEFAULT-UNARY-MINUS))
                       (20 4 (:REWRITE ZIP-OPEN))
                       (12 12 (:REWRITE DEFAULT-NUMERATOR))
                       (12 12 (:REWRITE DEFAULT-DENOMINATOR))
                       (12 12 (:DEFINITION IFIX))
                       (12 2 (:REWRITE CHARACTERP-NTH))
                       (12 2 (:DEFINITION NTH))
                       (10 10
                           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                       (2 2 (:REWRITE ZP-OPEN))
                       (2 2 (:REWRITE DEFAULT-COERCE-2))
                       (2 2 (:REWRITE DEFAULT-COERCE-1))
                       (2 2 (:REWRITE DEFAULT-CDR))
                       (2 2 (:REWRITE DEFAULT-CAR))
                       (2 2 (:REWRITE CHARACTER-LISTP-COERCE)))
(LRAT::CLRAT-ZERO (158 79
                       (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                  (130 26 (:DEFINITION LEN))
                  (83 50 (:REWRITE DEFAULT-+-2))
                  (79 79 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                  (59 50 (:REWRITE DEFAULT-+-1))
                  (54 40 (:REWRITE DEFAULT-<-1))
                  (50 40 (:REWRITE DEFAULT-<-2))
                  (36 4 (:REWRITE DEFAULT-CHAR-CODE))
                  (29 29 (:REWRITE DEFAULT-CDR))
                  (27 27 (:REWRITE DEFAULT-COERCE-2))
                  (27 27 (:REWRITE DEFAULT-COERCE-1))
                  (18 3 (:DEFINITION NTH))
                  (14 11 (:REWRITE DEFAULT-UNARY-MINUS))
                  (8 8
                     (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                  (3 3 (:REWRITE DEFAULT-CAR))
                  (2 2 (:REWRITE FOLD-CONSTS-IN-+)))
(LRAT::NATP-CLRAT-ZERO (296 11 (:REWRITE DEFAULT-CHAR-CODE))
                       (232 116
                            (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                       (153 11 (:REWRITE CHARACTERP-NTH))
                       (116 116
                            (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                       (66 66 (:TYPE-PRESCRIPTION LEN))
                       (55 11 (:DEFINITION LEN))
                       (54 9 (:DEFINITION NTH))
                       (50 39 (:REWRITE DEFAULT-<-2))
                       (49 38 (:REWRITE DEFAULT-+-2))
                       (41 39 (:REWRITE DEFAULT-<-1))
                       (38 38 (:REWRITE DEFAULT-+-1))
                       (20 20 (:REWRITE DEFAULT-CDR))
                       (11 11 (:REWRITE DEFAULT-UNARY-MINUS))
                       (9 9 (:REWRITE DEFAULT-COERCE-2))
                       (9 9 (:REWRITE DEFAULT-COERCE-1))
                       (9 9 (:REWRITE DEFAULT-CAR))
                       (5 5 (:REWRITE CHARACTER-LISTP-COERCE)))
(LRAT::BOUND-CLRAT-ZERO (584 22 (:REWRITE DEFAULT-CHAR-CODE))
                        (482 241
                             (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                        (298 22 (:REWRITE CHARACTERP-NTH))
                        (241 241
                             (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                        (132 132 (:TYPE-PRESCRIPTION LEN))
                        (123 97 (:REWRITE DEFAULT-+-2))
                        (117 79 (:REWRITE DEFAULT-<-2))
                        (110 22 (:DEFINITION LEN))
                        (99 16 (:DEFINITION NTH))
                        (97 97 (:REWRITE DEFAULT-+-1))
                        (97 79 (:REWRITE DEFAULT-<-1))
                        (38 38 (:REWRITE DEFAULT-CDR))
                        (25 25 (:REWRITE DEFAULT-UNARY-MINUS))
                        (16 16 (:REWRITE DEFAULT-COERCE-2))
                        (16 16 (:REWRITE DEFAULT-COERCE-1))
                        (15 15 (:REWRITE DEFAULT-CAR))
                        (14 14
                            (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                        (6 6 (:REWRITE CHARACTER-LISTP-COERCE)))
(LRAT::CLRAT-ZERO+1$INLINE (12 12 (:TYPE-PRESCRIPTION NATP)))
(LRAT::NATP-CLRAT-ZERO+1 (4 3 (:REWRITE DEFAULT-<-1))
                         (3 3 (:REWRITE DEFAULT-<-2))
                         (2 1 (:REWRITE DEFAULT-+-2))
                         (1 1 (:REWRITE DEFAULT-+-1)))
(LRAT::BOUND-CLRAT-ZERO+1 (19 19 (:TYPE-PRESCRIPTION NATP))
                          (15 7 (:REWRITE DEFAULT-<-2))
                          (9 7 (:REWRITE DEFAULT-<-1))
                          (4 2 (:REWRITE DEFAULT-+-2))
                          (2 2 (:REWRITE DEFAULT-+-1)))
(LRAT::CLRAT-INT-END+1 (186 93
                            (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                       (130 26 (:DEFINITION LEN))
                       (93 93 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                       (83 50 (:REWRITE DEFAULT-+-2))
                       (61 43 (:REWRITE DEFAULT-<-1))
                       (59 50 (:REWRITE DEFAULT-+-1))
                       (53 43 (:REWRITE DEFAULT-<-2))
                       (36 4 (:REWRITE DEFAULT-CHAR-CODE))
                       (29 29 (:REWRITE DEFAULT-CDR))
                       (27 27 (:REWRITE DEFAULT-COERCE-2))
                       (27 27 (:REWRITE DEFAULT-COERCE-1))
                       (18 3 (:DEFINITION NTH))
                       (14 11 (:REWRITE DEFAULT-UNARY-MINUS))
                       (8 8
                          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                       (3 3 (:REWRITE DEFAULT-CAR))
                       (2 2 (:REWRITE FOLD-CONSTS-IN-+)))
(LRAT::NATP-CLRAT-INT-END+1 (384 192
                                 (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                            (296 11 (:REWRITE DEFAULT-CHAR-CODE))
                            (192 192
                                 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                            (153 11 (:REWRITE CHARACTERP-NTH))
                            (82 48 (:REWRITE DEFAULT-<-1))
                            (66 66 (:TYPE-PRESCRIPTION LEN))
                            (59 48 (:REWRITE DEFAULT-<-2))
                            (55 11 (:DEFINITION LEN))
                            (54 9 (:DEFINITION NTH))
                            (50 39 (:REWRITE DEFAULT-+-2))
                            (39 39 (:REWRITE DEFAULT-+-1))
                            (20 20 (:REWRITE DEFAULT-CDR))
                            (11 11 (:REWRITE DEFAULT-UNARY-MINUS))
                            (9 9 (:REWRITE DEFAULT-COERCE-2))
                            (9 9 (:REWRITE DEFAULT-COERCE-1))
                            (9 9 (:REWRITE DEFAULT-CAR))
                            (5 5 (:REWRITE CHARACTER-LISTP-COERCE)))
(LRAT::BOUND-CLRAT-INT-END+1 (1086 543
                                   (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                             (584 48 (:REWRITE DEFAULT-CHAR-CODE))
                             (543 543
                                  (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                             (292 166
                                  (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                             (176 30 (:REWRITE CHARACTERP-NTH))
                             (36 36 (:TYPE-PRESCRIPTION LEN))
                             (35 35 (:REWRITE DEFAULT-COERCE-2))
                             (35 35 (:REWRITE DEFAULT-COERCE-1))
                             (34 34 (:REWRITE DEFAULT-CAR))
                             (24 24 (:REWRITE DEFAULT-CDR))
                             (20 4 (:DEFINITION LEN)))
(LRAT::CLRAT-INTS
     (312 28 (:REWRITE ACL2-NUMBERP-X))
     (298 187 (:REWRITE DEFAULT-PLUS-2))
     (200 100
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (168 168 (:TYPE-PRESCRIPTION NATP))
     (154 22 (:DEFINITION LEN))
     (142 28 (:REWRITE RATIONALP-X))
     (133 87
          (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (129 129 (:REWRITE THE-FLOOR-BELOW))
     (129 129 (:REWRITE THE-FLOOR-ABOVE))
     (125 8 (:REWRITE DEFAULT-CHAR-CODE))
     (103 103
          (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (103 103
          (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (103 103
          (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (103 103 (:REWRITE |(< (/ x) (/ y))|))
     (102 102
          (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (102 102
          (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (102 102
          (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (102 102
          (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (102 102
          (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (102 102
          (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (102 102
          (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (102 102
          (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (100 100
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (93 93 (:REWRITE INTEGERP-<-CONSTANT))
     (93 93 (:REWRITE CONSTANT-<-INTEGERP))
     (44 44
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (43 40 (:REWRITE INTEGERP-MINUS-X))
     (39 39 (:META META-INTEGERP-CORRECT))
     (31 22 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (30 30 (:REWRITE |(< (/ x) 0)|))
     (30 30 (:REWRITE |(< (* x y) 0)|))
     (28 28 (:REWRITE REDUCE-RATIONALP-+))
     (28 28 (:REWRITE REDUCE-RATIONALP-*))
     (28 28 (:REWRITE RATIONALP-MINUS-X))
     (28 28 (:REWRITE DEFAULT-COERCE-2))
     (28 28 (:REWRITE DEFAULT-COERCE-1))
     (28 28 (:META META-RATIONALP-CORRECT))
     (25 25 (:REWRITE |(< 0 (/ x))|))
     (25 25 (:REWRITE |(< 0 (* x y))|))
     (24 24 (:REWRITE DEFAULT-CDR))
     (16 16
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (16 16
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (15 7
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (15 7
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (13 13 (:REWRITE |(< y (+ (- c) x))|))
     (13 13 (:REWRITE |(< x (+ c/d y))|))
     (12 12
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (12 12
         (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (12 12 (:REWRITE |(+ c (+ d x))|))
     (8 8 (:REWRITE |(< (+ c/d x) y)|))
     (8 8 (:REWRITE |(< (+ (- c) x) y)|))
     (7 7
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
     (7 7 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (7 7
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (7 7
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (7 7
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (7 7 (:REWRITE |(equal c (/ x))|))
     (7 7 (:REWRITE |(equal c (- x))|))
     (7 7 (:REWRITE |(equal (/ x) c)|))
     (7 7 (:REWRITE |(equal (/ x) (/ y))|))
     (7 7 (:REWRITE |(equal (- x) c)|))
     (7 7 (:REWRITE |(equal (- x) (- y))|))
     (5 5 (:REWRITE DEFAULT-CAR))
     (2 2 (:REWRITE INTEGERP-+-REDUCE-CONSTANT))
     (1 1 (:REWRITE FOLD-CONSTS-IN-+)))
(LRAT::INTEGER-LISTP-CLRAT-INTS
     (438 219
          (:TYPE-PRESCRIPTION LRAT::NATP-CLRAT-INT-END+1))
     (306 153
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (225 13 (:REWRITE DEFAULT-CHAR-CODE))
     (219 219 (:TYPE-PRESCRIPTION NATP))
     (219 219
          (:TYPE-PRESCRIPTION LRAT::CLRAT-INT-END+1))
     (172 33 (:REWRITE DEFAULT-<-2))
     (153 153
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (124 61
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (57 33 (:REWRITE DEFAULT-<-1))
     (56 13 (:REWRITE CHARACTERP-NTH))
     (54 9 (:DEFINITION NTH))
     (33 21 (:REWRITE DEFAULT-+-1))
     (30 6 (:LINEAR LRAT::BOUND-CLRAT-INT-END+1))
     (24 12 (:REWRITE DEFAULT-UNARY-MINUS))
     (21 21 (:REWRITE DEFAULT-CDR))
     (21 21 (:REWRITE DEFAULT-CAR))
     (21 21 (:REWRITE DEFAULT-+-2))
     (9 9 (:REWRITE DEFAULT-COERCE-2))
     (9 9 (:REWRITE DEFAULT-COERCE-1))
     (2 2 (:REWRITE CHARACTER-LISTP-COERCE)))
(LRAT::CUT-AT-FIRST-NEGATIVE-INTEGER (5 5 (:REWRITE DEFAULT-CAR))
                                     (4 4 (:REWRITE DEFAULT-CDR))
                                     (2 2 (:REWRITE DEFAULT-<-2))
                                     (2 2 (:REWRITE DEFAULT-<-1)))
(LRAT::NAT-LISTP-CUT-AT-FIRST-NEGATIVE-INTEGER
     (18 17 (:REWRITE DEFAULT-CAR))
     (15 10 (:REWRITE DEFAULT-<-1))
     (10 10 (:REWRITE DEFAULT-<-2))
     (9 8 (:REWRITE DEFAULT-CDR))
     (9 3 (:DEFINITION NATP))
     (5 5
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(LRAT::DELETE-UNTIL-FIRST-NEGATIVE-INTEGER (5 5 (:REWRITE DEFAULT-CAR))
                                           (4 4 (:REWRITE DEFAULT-CDR))
                                           (2 2 (:REWRITE DEFAULT-<-2))
                                           (2 2 (:REWRITE DEFAULT-<-1)))
(LRAT::INTEGER-LISTP-DELETE-UNTIL-FIRST-NEGATIVE-INTEGER
     (18 18 (:REWRITE DEFAULT-CAR))
     (12 7 (:REWRITE DEFAULT-<-1))
     (8 8 (:REWRITE DEFAULT-CDR))
     (7 7 (:REWRITE DEFAULT-<-2))
     (5 5
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(LRAT::ACL2-COUNT-DELETE-UNTIL-FIRST-NEGATIVE-INTEGER
     (103 46 (:REWRITE DEFAULT-+-2))
     (66 46 (:REWRITE DEFAULT-+-1))
     (43 24 (:REWRITE DEFAULT-<-1))
     (35 24 (:REWRITE DEFAULT-<-2))
     (18 18
         (:TYPE-PRESCRIPTION LRAT::DELETE-UNTIL-FIRST-NEGATIVE-INTEGER))
     (17 17 (:REWRITE FOLD-CONSTS-IN-+))
     (16 16 (:REWRITE DEFAULT-CDR))
     (15 15 (:REWRITE DEFAULT-CAR))
     (15 3 (:DEFINITION LEN))
     (6 6 (:REWRITE DEFAULT-UNARY-MINUS))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (3 3 (:REWRITE DEFAULT-NUMERATOR))
     (3 3 (:REWRITE DEFAULT-DENOMINATOR))
     (3 3 (:REWRITE DEFAULT-COERCE-2))
     (3 3 (:REWRITE DEFAULT-COERCE-1))
     (2 2 (:REWRITE DEFAULT-REALPART))
     (2 2 (:REWRITE DEFAULT-IMAGPART)))
(LRAT::BREAK-INTO-LISTS-AT-NEGATIVE-INTEGERS
     (161 74 (:REWRITE DEFAULT-+-2))
     (105 74 (:REWRITE DEFAULT-+-1))
     (48 12 (:REWRITE COMMUTATIVITY-OF-+))
     (48 12 (:DEFINITION INTEGER-ABS))
     (48 6 (:DEFINITION LENGTH))
     (45 44 (:REWRITE DEFAULT-CDR))
     (34 33 (:REWRITE DEFAULT-CAR))
     (30 6 (:DEFINITION LEN))
     (25 25 (:REWRITE FOLD-CONSTS-IN-+))
     (21 16 (:REWRITE DEFAULT-<-2))
     (20 16 (:REWRITE DEFAULT-<-1))
     (13 13 (:REWRITE DEFAULT-UNARY-MINUS))
     (6 6 (:TYPE-PRESCRIPTION LEN))
     (6 6 (:REWRITE DEFAULT-REALPART))
     (6 6 (:REWRITE DEFAULT-NUMERATOR))
     (6 6 (:REWRITE DEFAULT-IMAGPART))
     (6 6 (:REWRITE DEFAULT-DENOMINATOR))
     (6 6 (:REWRITE DEFAULT-COERCE-2))
     (6 6 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::CLRAT-READ-A-LINE (80 16 (:DEFINITION LEN))
                         (40 24 (:REWRITE DEFAULT-<-1))
                         (32 24 (:REWRITE DEFAULT-<-2))
                         (32 16 (:REWRITE DEFAULT-+-2))
                         (16 16 (:REWRITE DEFAULT-COERCE-2))
                         (16 16 (:REWRITE DEFAULT-COERCE-1))
                         (16 16 (:REWRITE DEFAULT-CDR))
                         (16 16 (:REWRITE DEFAULT-+-1))
                         (12 12 (:TYPE-PRESCRIPTION NATP)))
(LRAT::NATP-CAR-CLRAT-READ-A-LINE
     (12 2 (:REWRITE DEFAULT-CAR))
     (8 1
        (:DEFINITION LRAT::BREAK-INTO-LISTS-AT-NEGATIVE-INTEGERS))
     (7 5 (:REWRITE DEFAULT-<-2))
     (6 5 (:REWRITE DEFAULT-<-1))
     (2 2
        (:TYPE-PRESCRIPTION LRAT::DELETE-UNTIL-FIRST-NEGATIVE-INTEGER))
     (2 2 (:REWRITE DEFAULT-CDR))
     (2 1 (:REWRITE DEFAULT-UNARY-MINUS))
     (1 1
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(LRAT::BOUND-CAR-CLRAT-READ-A-LINE
     (72 9 (:REWRITE DEFAULT-<-1))
     (44 4
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (34 9 (:REWRITE DEFAULT-<-2))
     (24 4 (:REWRITE DEFAULT-CAR))
     (16 2
         (:DEFINITION LRAT::BREAK-INTO-LISTS-AT-NEGATIVE-INTEGERS))
     (4 4 (:TYPE-PRESCRIPTION NATP))
     (4 4
        (:TYPE-PRESCRIPTION LRAT::DELETE-UNTIL-FIRST-NEGATIVE-INTEGER))
     (4 4 (:REWRITE DEFAULT-CDR))
     (4 2 (:REWRITE DEFAULT-UNARY-MINUS)))
(LRAT::CLRAT-LINE-MV (100 20 (:DEFINITION LEN))
                     (62 31
                         (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                     (50 40 (:REWRITE DEFAULT-<-1))
                     (45 40 (:REWRITE DEFAULT-<-2))
                     (43 23 (:REWRITE DEFAULT-+-2))
                     (41 41 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                     (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
                     (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
                     (25 25 (:REWRITE DEFAULT-CDR))
                     (23 23 (:REWRITE DEFAULT-+-1))
                     (21 21 (:REWRITE DEFAULT-COERCE-2))
                     (21 21 (:REWRITE DEFAULT-COERCE-1))
                     (20 2 (:DEFINITION LRAT::N59-LISTP))
                     (20 2 (:DEFINITION LRAT::I60-LISTP))
                     (6 6 (:TYPE-PRESCRIPTION NATP))
                     (6 1 (:DEFINITION NTH))
                     (5 5 (:REWRITE DEFAULT-CAR))
                     (1 1 (:REWRITE ZP-OPEN)))
(LRAT::NATP-CAR-CLRAT-LINE-MV (35 27
                                  (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                              (8 8 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                              (7 2 (:REWRITE DEFAULT-CAR))
                              (6 1 (:DEFINITION NTH))
                              (5 5 (:REWRITE DEFAULT-<-2))
                              (5 5 (:REWRITE DEFAULT-<-1))
                              (2 2 (:REWRITE DEFAULT-+-2))
                              (2 2 (:REWRITE DEFAULT-+-1))
                              (1 1 (:REWRITE ZP-OPEN))
                              (1 1 (:REWRITE DEFAULT-COERCE-2))
                              (1 1 (:REWRITE DEFAULT-COERCE-1))
                              (1 1 (:REWRITE DEFAULT-CDR)))
(LRAT::BOUND-CAR-CLRAT-LINE-MV (184 110
                                    (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                               (94 94 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                               (56 25 (:REWRITE DEFAULT-<-1))
                               (52 4 (:LINEAR LRAT::NTH-N59-LISTP))
                               (52 4 (:LINEAR LRAT::NTH-I60-LISTP))
                               (40 4 (:DEFINITION LRAT::N59-LISTP))
                               (40 4 (:DEFINITION LRAT::I60-LISTP))
                               (36 25 (:REWRITE DEFAULT-<-2))
                               (28 15 (:REWRITE DEFAULT-CAR))
                               (22 2
                                   (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                               (12 2 (:DEFINITION NTH))
                               (10 10 (:REWRITE DEFAULT-CDR))
                               (4 4 (:TYPE-PRESCRIPTION NATP))
                               (4 4 (:REWRITE DEFAULT-+-2))
                               (4 4 (:REWRITE DEFAULT-+-1))
                               (2 2 (:REWRITE ZP-OPEN))
                               (2 2 (:REWRITE DEFAULT-COERCE-2))
                               (2 2 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::SKIP-CLRAT-COMMAND (95 19 (:DEFINITION LEN))
                          (41 22 (:REWRITE DEFAULT-+-2))
                          (37 28 (:REWRITE DEFAULT-<-1))
                          (34 28 (:REWRITE DEFAULT-<-2))
                          (34 17
                              (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                          (22 22 (:REWRITE DEFAULT-+-1))
                          (20 20 (:REWRITE DEFAULT-COERCE-2))
                          (20 20 (:REWRITE DEFAULT-COERCE-1))
                          (20 20 (:REWRITE DEFAULT-CDR))
                          (17 17 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                          (11 11 (:TYPE-PRESCRIPTION NATP))
                          (6 1 (:DEFINITION NTH))
                          (1 1 (:REWRITE ZP-OPEN))
                          (1 1 (:REWRITE DEFAULT-CAR)))
(LRAT::NATP-SKIP-CLRAT-COMMAND (1 1
                                  (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP)))
(LRAT::BOUND-SKIP-CLRAT-COMMAND
     (151 103
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (58 58 (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (31 19 (:REWRITE DEFAULT-<-1))
     (29 19 (:REWRITE DEFAULT-<-2))
     (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
     (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
     (20 2 (:DEFINITION LRAT::N59-LISTP))
     (20 2 (:DEFINITION LRAT::I60-LISTP))
     (12 2 (:DEFINITION NTH))
     (6 6 (:REWRITE DEFAULT-CDR))
     (6 6 (:REWRITE DEFAULT-CAR))
     (4 4
        (:TYPE-PRESCRIPTION LRAT::SKIP-CLRAT-COMMAND))
     (4 4 (:TYPE-PRESCRIPTION NATP))
     (4 4 (:REWRITE DEFAULT-+-2))
     (4 4 (:REWRITE DEFAULT-+-1))
     (2 2 (:REWRITE ZP-OPEN))
     (2 2 (:REWRITE DEFAULT-COERCE-2))
     (2 2 (:REWRITE DEFAULT-COERCE-1)))
(LRAT::SKIP-CLRAT-COMMANDS (95 19 (:DEFINITION LEN))
                           (72 33 (:REWRITE DEFAULT-<-1))
                           (61 33 (:REWRITE DEFAULT-<-2))
                           (54 29 (:REWRITE DEFAULT-+-2))
                           (38 11
                               (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                           (35 29 (:REWRITE DEFAULT-+-1))
                           (29 7 (:REWRITE DEFAULT-UNARY-MINUS))
                           (19 19 (:REWRITE DEFAULT-COERCE-2))
                           (19 19 (:REWRITE DEFAULT-COERCE-1))
                           (19 19 (:REWRITE DEFAULT-CDR))
                           (10 2
                               (:LINEAR LRAT::BOUND-SKIP-CLRAT-COMMAND)))
(LRAT::NATP-SKIP-CLRAT-COMMANDS (68 55 (:REWRITE DEFAULT-<-1))
                                (64 55 (:REWRITE DEFAULT-<-2))
                                (13 13 (:REWRITE DEFAULT-UNARY-MINUS))
                                (13 13 (:REWRITE DEFAULT-+-2))
                                (13 13 (:REWRITE DEFAULT-+-1)))
(LRAT::BOUND-SKIP-CLRAT-COMMANDS (101 83 (:REWRITE DEFAULT-<-2))
                                 (99 83 (:REWRITE DEFAULT-<-1))
                                 (18 18 (:REWRITE DEFAULT-UNARY-MINUS))
                                 (18 18 (:REWRITE DEFAULT-+-2))
                                 (18 18 (:REWRITE DEFAULT-+-1)))
(LRAT::CLRAT-READ-SOME-LINES
     (602 301
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (421 421
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (367 215 (:REWRITE DEFAULT-<-1))
     (360 72 (:DEFINITION LEN))
     (303 215 (:REWRITE DEFAULT-<-2))
     (298 123 (:REWRITE DEFAULT-+-2))
     (240 24 (:DEFINITION LRAT::N59-LISTP))
     (240 24 (:DEFINITION LRAT::I60-LISTP))
     (196 7 (:DEFINITION TRUE-LISTP))
     (182 14 (:REWRITE LRAT::N59-LISTP-FORWARD))
     (182 14 (:REWRITE LRAT::I60-LISTP-FORWARD))
     (140 137 (:REWRITE DEFAULT-CDR))
     (133 123 (:REWRITE DEFAULT-+-1))
     (130 10 (:LINEAR LRAT::NTH-N59-LISTP))
     (130 10 (:LINEAR LRAT::NTH-I60-LISTP))
     (113 23
          (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (79 79 (:REWRITE DEFAULT-COERCE-2))
     (79 79 (:REWRITE DEFAULT-COERCE-1))
     (77 66 (:REWRITE DEFAULT-CAR))
     (59 17 (:REWRITE DEFAULT-UNARY-MINUS))
     (42 7 (:DEFINITION NTH))
     (1 1
        (:TYPE-PRESCRIPTION TRUE-LISTP-SUBSEQ-TYPE-PRESCRIPTION))
     (1 1
        (:TYPE-PRESCRIPTION STRINGP-SUBSEQ-TYPE-PRESCRIPTION)))
(LRAT::TRUE-LISTP-CLRAT-READ-SOME-LINES
     (1948 1040
           (:TYPE-PRESCRIPTION LRAT::NATP-CAR-CLRAT-LINE-MV))
     (1720 1204
           (:TYPE-PRESCRIPTION LRAT::CLRAT-ZERO))
     (1568 322 (:REWRITE DEFAULT-<-1))
     (1381 202
           (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1258 36 (:DEFINITION TAKE))
     (1148 239 (:REWRITE DEFAULT-+-2))
     (813 322 (:REWRITE DEFAULT-<-2))
     (564 216
          (:TYPE-PRESCRIPTION TRUE-LISTP-NTHCDR-TYPE-PRESCRIPTION))
     (532 228 (:REWRITE DEFAULT-CDR))
     (496 36 (:DEFINITION NTHCDR))
     (476 17 (:DEFINITION TRUE-LISTP))
     (450 148 (:REWRITE DEFAULT-CAR))
     (442 34 (:REWRITE LRAT::N59-LISTP-FORWARD))
     (442 34 (:REWRITE LRAT::I60-LISTP-FORWARD))
     (360 36 (:DEFINITION LRAT::N59-LISTP))
     (360 36 (:DEFINITION LRAT::I60-LISTP))
     (308 308
          (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (298 239 (:REWRITE DEFAULT-+-1))
     (256 128
          (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (180 61 (:REWRITE DEFAULT-UNARY-MINUS))
     (162 162 (:TYPE-PRESCRIPTION LEN))
     (108 36 (:REWRITE COMMUTATIVITY-OF-+))
     (90 18 (:DEFINITION LEN))
     (72 18 (:REWRITE DEFAULT-COERCE-3))
     (72 6 (:LINEAR LRAT::BOUND-CLRAT-ZERO))
     (65 65 (:REWRITE DEFAULT-COERCE-2))
     (60 10 (:DEFINITION NATP))
     (54 54 (:TYPE-PRESCRIPTION TRUE-LISTP-TAKE))
     (47 47 (:REWRITE DEFAULT-COERCE-1))
     (36 36 (:REWRITE FOLD-CONSTS-IN-+))
     (26 2 (:LINEAR LRAT::NTH-N59-LISTP))
     (26 2 (:LINEAR LRAT::NTH-I60-LISTP))
     (20 4
         (:LINEAR LRAT::BOUND-CAR-CLRAT-LINE-MV))
     (16 16
         (:TYPE-PRESCRIPTION LRAT::CLRAT-READ-SOME-LINES)))
(LRAT::MATTS-INCREMENTAL-PROOF-COMMAND-CHECKER)
(LRAT::CLRAT-READ-NEXT-1
     (10242 5121
            (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (10242 5121
            (:TYPE-PRESCRIPTION LRAT::NTH-I60-LISTP))
     (5121 5121
           (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (5121 5121
           (:TYPE-PRESCRIPTION LRAT::I60-LISTP))
     (84 66 (:REWRITE DEFAULT-<-1))
     (84 12 (:DEFINITION LEN))
     (66 66 (:REWRITE DEFAULT-<-2))
     (54 18
         (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
     (49 37 (:REWRITE DEFAULT-+-2))
     (42 6 (:REWRITE DEFAULT-COERCE-3))
     (37 37 (:REWRITE DEFAULT-+-1))
     (36 24 (:REWRITE DEFAULT-COERCE-1))
     (30 30 (:REWRITE DEFAULT-COERCE-2))
     (18 18 (:REWRITE DEFAULT-CDR))
     (18 12 (:REWRITE DEFAULT-CAR))
     (18 6 (:DEFINITION BINARY-APPEND)))
(LRAT::CLRAT-READ-NEXT
     (19330 9665
            (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (19330 9665
            (:TYPE-PRESCRIPTION LRAT::NTH-I60-LISTP))
     (9665 9665
           (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (9665 9665
           (:TYPE-PRESCRIPTION LRAT::I60-LISTP))
     (539 491 (:REWRITE DEFAULT-<-1))
     (495 379 (:REWRITE DEFAULT-+-2))
     (491 491 (:REWRITE DEFAULT-<-2))
     (430 64 (:REWRITE DEFAULT-COERCE-3))
     (401 298 (:REWRITE DEFAULT-CDR))
     (380 379 (:REWRITE DEFAULT-+-1))
     (345 259 (:REWRITE DEFAULT-COERCE-1))
     (323 323 (:REWRITE DEFAULT-COERCE-2))
     (237 79 (:DEFINITION BINARY-APPEND))
     (218 154 (:REWRITE DEFAULT-CAR))
     (90 30
         (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
     (58 57 (:REWRITE DEFAULT-UNARY-MINUS))
     (8 8
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (2 2 (:REWRITE FOLD-CONSTS-IN-+)))
(LRAT::CLRAT-READ-ALL-LINES-REV
     (2608 1304
           (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
     (2608 1304
           (:TYPE-PRESCRIPTION LRAT::NTH-I60-LISTP))
     (1304 1304
           (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
     (1304 1304
           (:TYPE-PRESCRIPTION LRAT::I60-LISTP))
     (55 29 (:REWRITE DEFAULT-<-2))
     (50 29 (:REWRITE DEFAULT-<-1))
     (30 30 (:TYPE-PRESCRIPTION NATP))
     (29 7 (:REWRITE DEFAULT-UNARY-MINUS))
     (27 9
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (16 10 (:REWRITE DEFAULT-+-2))
     (16 10 (:REWRITE DEFAULT-+-1))
     (12 4
         (:REWRITE STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1))
     (10 5 (:REWRITE DEFAULT-CAR)))
(LRAT::CLRAT-READ-ALL-LINES)
(LRAT::CLRAT-READ-FILE (412 206
                            (:TYPE-PRESCRIPTION LRAT::NTH-N59-LISTP))
                       (412 206
                            (:TYPE-PRESCRIPTION LRAT::NTH-I60-LISTP))
                       (206 206
                            (:TYPE-PRESCRIPTION LRAT::N59-LISTP))
                       (206 206
                            (:TYPE-PRESCRIPTION LRAT::I60-LISTP)))
(LRAT::WEAK-ADD-STEP-P)
(LRAT::SHOW-PROOF)
(LRAT::PRINT-INTEGERS)
(LRAT::PRINT-DRAT-HINTS)
(LRAT::CLRAT-TO-LRAT-ADD-STEP)
(LRAT::CLRAT-TO-LRAT-REC)
(LRAT::CLRAT-TO-LRAT)
