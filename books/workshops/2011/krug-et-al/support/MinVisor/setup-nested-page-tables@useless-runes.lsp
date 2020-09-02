(IND-FN (96 96 (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
        (96 96 (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
        (96 96 (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
        (96 96 (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
        (30 6 (:TYPE-PRESCRIPTION FLOOR-ZERO . 4))
        (30 6 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
        (30 6 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
        (30 6 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
        (30 6
            (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
        (30 6
            (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
        (30 6
            (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
        (30 6
            (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
        (30 6
            (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
        (30 6
            (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
        (30 6
            (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
        (30 6
            (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 2))
        (30 6
            (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 1))
        (30 6
            (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
        (30 6
            (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
        (30 6
            (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1)))
(CROCK-1
 (2620 2620
       (:TYPE-PRESCRIPTION NOT-INTEGERP-4B))
 (2620 2620
       (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
 (2620 2620
       (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
 (2620 2620
       (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
 (1427 34 (:REWRITE DEFAULT-PLUS-1))
 (1422 34 (:REWRITE DEFAULT-PLUS-2))
 (960 96 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
 (720 96
      (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
 (720 96
      (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
 (657 89
      (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
 (503 9 (:REWRITE CANCEL-FLOOR-+))
 (480 96 (:TYPE-PRESCRIPTION FLOOR-ZERO . 4))
 (480 96 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
 (480 96 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
 (480 96
      (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
 (480 96
      (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
 (480 96
      (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
 (480 96
      (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
 (480 96
      (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
 (464 8 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (445 89
      (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
 (392
  392
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (392 392
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (392
     392
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (392 392
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (392 392
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (313 46 (:REWRITE DEFAULT-LESS-THAN-2))
 (280 48 (:REWRITE INTEGERP-MINUS-X))
 (215 9 (:REWRITE FLOOR-ZERO . 3))
 (180 36
      (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 1))
 (177 111 (:REWRITE DEFAULT-TIMES-2))
 (167 42 (:REWRITE DEFAULT-LESS-THAN-1))
 (153 18 (:REWRITE |(* (- x) y)|))
 (149 149
      (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (149 149
      (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (149 149
      (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (149 149
      (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (132 4
      (:REWRITE |(integerp (* 1/2 (logior x y)))|))
 (122 122
      (:TYPE-PRESCRIPTION |(< 0 (logior x y))| . 1))
 (122 122
      (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (122 122
      (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (114 111 (:REWRITE DEFAULT-TIMES-1))
 (108 12 (:REWRITE ACL2-NUMBERP-X))
 (103 9 (:REWRITE FLOOR-X-Y-=-1 . 2))
 (101 9 (:REWRITE FLOOR-ZERO . 4))
 (101 6 (:REWRITE DEFAULT-LOGIOR-2))
 (101 6 (:REWRITE DEFAULT-LOGIOR-1))
 (99 9 (:REWRITE DEFAULT-FLOOR-RATIO))
 (98 9 (:REWRITE FLOOR-=-X/Y . 3))
 (98 9 (:REWRITE FLOOR-=-X/Y . 2))
 (93 39
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (90 18 (:REWRITE DEFAULT-MINUS))
 (81 18 (:REWRITE |(- (* c x))|))
 (81 9 (:REWRITE FLOOR-ZERO . 5))
 (80 33 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (73 2 (:LINEAR EXPT-X->=-X))
 (73 2 (:LINEAR EXPT-X->-X))
 (60 33 (:REWRITE SIMPLIFY-SUMS-<))
 (60 2 (:LINEAR LOGIOR-BOUNDS-NEG . 1))
 (53 2 (:LINEAR EXPT-<=-1-TWO))
 (53 2 (:LINEAR EXPT-<-1-TWO))
 (51 51 (:REWRITE THE-FLOOR-BELOW))
 (48 12 (:REWRITE RATIONALP-X))
 (45 9 (:REWRITE FLOOR-ZERO . 2))
 (45 9 (:REWRITE FLOOR-X-Y-=-1 . 3))
 (45 9 (:REWRITE FLOOR-X-Y-=--1 . 3))
 (45 9 (:REWRITE FLOOR-X-Y-=--1 . 2))
 (45 9
     (:REWRITE FLOOR-CANCEL-*-REWRITING-GOAL-LITERAL))
 (45 9
     (:REWRITE |(floor (* x (/ y)) z) rewriting-goal-literal|))
 (44 39
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (44 39
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (39 39 (:REWRITE REDUCE-INTEGERP-+))
 (39 39
     (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (39 39 (:REWRITE INTEGERP-<-CONSTANT))
 (39 39 (:REWRITE CONSTANT-<-INTEGERP))
 (39 39
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (39 39
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (39 39
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (39 39
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (39 39 (:REWRITE |(< c (- x))|))
 (39 39
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (39 39
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (39 39
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (39 39
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (39 39 (:REWRITE |(< (/ x) (/ y))|))
 (39 39 (:REWRITE |(< (- x) c)|))
 (39 39 (:REWRITE |(< (- x) (- y))|))
 (39 39 (:META META-INTEGERP-CORRECT))
 (24 24 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (21 9 (:REWRITE FLOOR-CANCEL-*-CONST))
 (12 12 (:REWRITE REDUCE-RATIONALP-+))
 (12 12 (:REWRITE REDUCE-RATIONALP-*))
 (12 12 (:REWRITE RATIONALP-MINUS-X))
 (12 12 (:META META-RATIONALP-CORRECT))
 (11 11 (:REWRITE DEFAULT-EXPT-1))
 (11 11 (:REWRITE |(expt 1/c n)|))
 (11 11 (:REWRITE |(expt (- x) n)|))
 (10 10 (:TYPE-PRESCRIPTION ABS))
 (9 9
    (:REWRITE FLOOR-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
 (9 9 (:REWRITE DEFAULT-FLOOR-2))
 (9 9 (:REWRITE DEFAULT-FLOOR-1))
 (9 9 (:REWRITE |(floor x (- y))| . 2))
 (9 9 (:REWRITE |(floor x (- y))| . 1))
 (9 9
    (:REWRITE |(floor x (* y (/ z))) rewriting-goal-literal|))
 (9 9
    (:REWRITE |(floor x (* y (/ z))) not rewriting-goal-literal|))
 (9 9 (:REWRITE |(floor (- x) y)| . 2))
 (9 9 (:REWRITE |(floor (- x) y)| . 1))
 (9 9
    (:REWRITE |(floor (* x (/ y)) z) not rewriting-goal-literal|))
 (9 9 (:REWRITE |(< 0 (/ x))|))
 (9 9 (:REWRITE |(< 0 (* x y))|))
 (8 8
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (8 8
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (7 7
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (7 7
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (7 7 (:REWRITE |(< (/ x) 0)|))
 (7 7 (:REWRITE |(< (* x y) 0)|))
 (4 4
    (:LINEAR EXPT-IS-WEAKLY-INCREASING-FOR-BASE->-1))
 (4 4
    (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE-<-1))
 (4 4
    (:LINEAR EXPT-IS-INCREASING-FOR-BASE->-1))
 (4 4
    (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
 (3 3
    (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (3 3
    (:REWRITE |(< (* (/ x) y) 1) with (< x 0)|))
 (3 3
    (:REWRITE |(< (* (/ x) y) 1) with (< 0 x)|))
 (2 2 (:REWRITE ZP-OPEN))
 (2 2
    (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
 (2 2 (:LINEAR LOGIOR-BOUNDS-NEG . 2))
 (2 2 (:LINEAR EXPT-LINEAR-UPPER-<=))
 (2 2 (:LINEAR EXPT-LINEAR-UPPER-<))
 (2 2 (:LINEAR EXPT-LINEAR-LOWER-<=))
 (2 2 (:LINEAR EXPT-LINEAR-LOWER-<))
 (2 2 (:LINEAR EXPT->=-1-TWO))
 (2 2 (:LINEAR EXPT->-1-TWO))
 (2 2 (:LINEAR EXPT-<=-1-ONE))
 (2 2 (:LINEAR EXPT-<-1-ONE)))
(|(n32p (logior x y))|
 (68 68
     (:TYPE-PRESCRIPTION |(< 0 (logior x y))| . 2))
 (68 68
     (:TYPE-PRESCRIPTION |(< 0 (logior x y))| . 1))
 (68 68
     (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (68 68
     (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (60 2 (:LINEAR LOGIOR-BOUNDS-NEG . 1))
 (13 8
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (13 8 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (13 8 (:REWRITE DEFAULT-LESS-THAN-1))
 (10
   10
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (10
  10
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (10 10
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (10 10
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (10 10
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (10 10
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (8 8 (:REWRITE THE-FLOOR-BELOW))
 (8 8 (:REWRITE THE-FLOOR-ABOVE))
 (8 8 (:REWRITE SIMPLIFY-SUMS-<))
 (8 8 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (8 8
    (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (8 8
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (8 8 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (8 8 (:REWRITE INTEGERP-<-CONSTANT))
 (8 8 (:REWRITE DEFAULT-LESS-THAN-2))
 (8 8 (:REWRITE CONSTANT-<-INTEGERP))
 (8 8
    (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (8 8
    (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (8 8
    (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (8 8
    (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (8 8 (:REWRITE |(< c (- x))|))
 (8 8
    (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (8 8
    (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (8 8
    (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (8 8
    (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (8 8 (:REWRITE |(< (/ x) (/ y))|))
 (8 8 (:REWRITE |(< (- x) c)|))
 (8 8 (:REWRITE |(< (- x) (- y))|))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (5 5 (:REWRITE DEFAULT-LOGIOR-2))
 (5 5 (:REWRITE DEFAULT-LOGIOR-1))
 (2 2
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (2 2
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (2 2
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (2 2
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (2 2 (:REWRITE REDUCE-INTEGERP-+))
 (2 2 (:REWRITE INTEGERP-MINUS-X))
 (2 2 (:REWRITE |(< 0 (/ x))|))
 (2 2 (:REWRITE |(< 0 (* x y))|))
 (2 2 (:REWRITE |(< (/ x) 0)|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (2 2 (:META META-INTEGERP-CORRECT))
 (2 2 (:LINEAR LOGIOR-BOUNDS-NEG . 2)))
(LOGAND-MASK-SHIFTED-2
 (34128 48 (:LINEAR LINEAR-FLOOR-BOUNDS-1))
 (19333 670 (:REWRITE THE-FLOOR-ABOVE))
 (18433 22 (:REWRITE MOD-X-Y-=-X-Y . 2))
 (18125 22 (:REWRITE MOD-ZERO . 4))
 (17822 6 (:REWRITE MOD-X-Y-=-X-Y . 1))
 (16091 1021 (:REWRITE DEFAULT-TIMES-2))
 (15993 15993
        (:TYPE-PRESCRIPTION INTEGERP-/-EXPT-1))
 (15987 15987
        (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
 (15987 15987
        (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
 (15987 15987
        (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
 (15022 22 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (14445 22 (:REWRITE MOD-X-Y-=-X . 4))
 (12393 1074 (:REWRITE DEFAULT-PLUS-2))
 (10902 1074 (:REWRITE DEFAULT-PLUS-1))
 (10880
  10880
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (10880
      10880
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (10880
     10880
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (10880 10880
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (10880 10880
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (8599 6 (:REWRITE MOD-X-Y-=-X+Y . 1))
 (8473 661 (:TYPE-PRESCRIPTION FLOOR-ZERO . 2))
 (8473 661
       (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 1))
 (8473 661
       (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 1))
 (8473 661
       (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 1))
 (8473 661
       (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 1))
 (6566 1021 (:REWRITE DEFAULT-TIMES-1))
 (6395 60 (:REWRITE CANCEL-FLOOR-+))
 (5301 41
       (:TYPE-PRESCRIPTION NOT-INTEGERP-4A-EXPT))
 (4754 22 (:REWRITE MOD-ZERO . 3))
 (4627 661 (:TYPE-PRESCRIPTION FLOOR-ZERO . 3))
 (4627 661 (:TYPE-PRESCRIPTION FLOOR-ZERO . 1))
 (4627 661
       (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 3))
 (4627 661
       (:TYPE-PRESCRIPTION FLOOR-POSITIVE . 2))
 (4627 661
       (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 3))
 (4627 661
       (:TYPE-PRESCRIPTION FLOOR-NONPOSITIVE . 2))
 (4627 661
       (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 3))
 (4627 661
       (:TYPE-PRESCRIPTION FLOOR-NONNEGATIVE . 2))
 (4627 661
       (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 3))
 (4627 661
       (:TYPE-PRESCRIPTION FLOOR-NEGATIVE . 2))
 (4517 626
       (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (4262 62 (:REWRITE |(integerp (- x))|))
 (3564 60 (:REWRITE FLOOR-X-Y-=-1 . 2))
 (3377 625 (:REWRITE DEFAULT-MINUS))
 (3282 330 (:REWRITE DEFAULT-DIVIDE))
 (3195 239 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (3109 53
       (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (2992 23 (:REWRITE DEFAULT-MOD-RATIO))
 (2973 60 (:REWRITE FLOOR-ZERO . 3))
 (2482 60 (:REWRITE FLOOR-=-X/Y . 2))
 (2477 93 (:LINEAR EXPT-<=-1-TWO))
 (2400 93 (:LINEAR EXPT->-1-ONE))
 (2340 61 (:REWRITE DEFAULT-FLOOR-RATIO))
 (2092 93 (:LINEAR EXPT-X->=-X))
 (2092 93 (:LINEAR EXPT-X->-X))
 (2006 482
       (:TYPE-PRESCRIPTION MOD-NEGATIVE . 2))
 (1946 670 (:REWRITE THE-FLOOR-BELOW))
 (1887 658 (:REWRITE DEFAULT-LESS-THAN-2))
 (1854 12 (:LINEAR LOGAND-BOUNDS-NEG . 2))
 (1854 12 (:LINEAR LOGAND-BOUNDS-NEG . 1))
 (1819 21 (:REWRITE |(mod (+ x (mod a b)) y)|))
 (1819 21
       (:REWRITE |(mod (+ x (- (mod a b))) y)|))
 (1675 21 (:REWRITE MOD-X-Y-=-X . 2))
 (1642 658 (:REWRITE DEFAULT-LESS-THAN-1))
 (1598 482 (:TYPE-PRESCRIPTION MOD-ZERO . 2))
 (1583 60 (:REWRITE FLOOR-X-Y-=--1 . 2))
 (1564 17
       (:REWRITE EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE-<-1))
 (1500 60 (:REWRITE FLOOR-ZERO . 2))
 (1500 60 (:REWRITE FLOOR-X-Y-=-1 . 3))
 (1500 60 (:REWRITE FLOOR-X-Y-=--1 . 3))
 (1447 45 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (1095 60 (:REWRITE FLOOR-ZERO . 5))
 (1095 60 (:REWRITE FLOOR-ZERO . 4))
 (1041 22 (:REWRITE MOD-X-Y-=-X-Y . 3))
 (1041 22 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (921 12 (:LINEAR BINARY-LOGAND-<=))
 (900 60 (:REWRITE FLOOR-CANCEL-*-CONST))
 (899 323 (:TYPE-PRESCRIPTION INTEGERP-MOD-2))
 (899 323 (:TYPE-PRESCRIPTION INTEGERP-MOD-1))
 (895 20 (:REWRITE MOD-CANCEL-*-CONST))
 (864 738
      (:TYPE-PRESCRIPTION NOT-INTEGERP-3B-EXPT))
 (864 738
      (:TYPE-PRESCRIPTION NOT-INTEGERP-1B-EXPT))
 (844 655 (:REWRITE |(< (- x) (- y))|))
 (839 650 (:REWRITE |(< (- x) c)|))
 (780 60
      (:REWRITE FLOOR-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
 (780 60
      (:REWRITE |(floor x (* y (/ z))) not rewriting-goal-literal|))
 (780 60
      (:REWRITE |(floor (* x (/ y)) z) not rewriting-goal-literal|))
 (744 24 (:LINEAR LINEAR-FLOOR-BOUNDS-3))
 (738 738
      (:TYPE-PRESCRIPTION NOT-INTEGERP-2B-EXPT))
 (668 650
      (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (667 667 (:REWRITE DEFAULT-EXPT-2))
 (667 667 (:REWRITE DEFAULT-EXPT-1))
 (667 667 (:REWRITE |(expt 1/c n)|))
 (667 667 (:REWRITE |(expt (- x) n)|))
 (658 23 (:REWRITE DEFAULT-MOD-1))
 (657 657
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (657 657
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (655 655
      (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (655 655
      (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (655 655
      (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (655 655
      (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (655 655
      (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (655 655
      (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (655 655
      (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (655 655
      (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (655 655 (:REWRITE |(< (/ x) (/ y))|))
 (650 650 (:REWRITE INTEGERP-<-CONSTANT))
 (650 650 (:REWRITE CONSTANT-<-INTEGERP))
 (650 650 (:REWRITE |(< c (- x))|))
 (645 230 (:REWRITE |(< 0 (/ x))|))
 (610 61 (:REWRITE DEFAULT-FLOOR-2))
 (599 41 (:REWRITE DEFAULT-LOGAND-2))
 (482 482
      (:TYPE-PRESCRIPTION MOD-NEGATIVE . 1))
 (481 481
      (:TYPE-PRESCRIPTION MOD-NONPOSITIVE))
 (470 470
      (:TYPE-PRESCRIPTION |(< (logand x y) 0)| . 1))
 (436 436 (:TYPE-PRESCRIPTION MOD-ZERO . 3))
 (436 436
      (:TYPE-PRESCRIPTION MOD-POSITIVE . 1))
 (384 24 (:LINEAR LINEAR-FLOOR-BOUNDS-2))
 (360 4
      (:REWRITE EXPT-IS-INCREASING-FOR-BASE->-1))
 (360 4
      (:REWRITE EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
 (360 4
      (:REWRITE |(< (expt x n) (expt x m))|))
 (314 314
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (275 41 (:REWRITE DEFAULT-LOGAND-1))
 (269 54 (:REWRITE |(equal (- x) (- y))|))
 (240 60
      (:REWRITE FLOOR-CANCEL-*-REWRITING-GOAL-LITERAL))
 (240 60
      (:REWRITE |(floor x (* y (/ z))) rewriting-goal-literal|))
 (240 60
      (:REWRITE |(floor (* x (/ y)) z) rewriting-goal-literal|))
 (231 231 (:REWRITE |(< 0 (* x y))|))
 (224 224
      (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (224 224
      (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (207 15
      (:REWRITE |(mod (* x (/ y)) z) rewriting-goal-literal|))
 (186 186
      (:LINEAR EXPT-IS-WEAKLY-DECREASING-FOR-POS-BASE-<-1))
 (186 186
      (:LINEAR EXPT-IS-INCREASING-FOR-BASE->-1))
 (186 186
      (:LINEAR EXPT-IS-DECREASING-FOR-POS-BASE-<-1))
 (180 15
      (:REWRITE |(mod x (* y (/ z))) rewriting-goal-literal|))
 (177 177 (:REWRITE |(< y (+ (- c) x))|))
 (177 177 (:REWRITE |(< x (+ c/d y))|))
 (176 176 (:REWRITE |(< (* x y) 0)|))
 (175 175 (:REWRITE |(< (/ x) 0)|))
 (167 23 (:REWRITE DEFAULT-MOD-2))
 (162 2 (:LINEAR MOD-BOUNDS-3))
 (152 152
      (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (152 152
      (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (136 4 (:REWRITE FLOOR-POSITIVE . 3))
 (132 132 (:REWRITE INTEGERP-MINUS-X))
 (130 130 (:META META-INTEGERP-CORRECT))
 (124 4 (:REWRITE FLOOR-POSITIVE . 2))
 (124 4 (:REWRITE FLOOR-NONPOSITIVE . 1))
 (100 4 (:REWRITE FLOOR-POSITIVE . 4))
 (100 4 (:REWRITE FLOOR-NONPOSITIVE . 3))
 (100 4 (:REWRITE FLOOR-NONPOSITIVE . 2))
 (100 4 (:LINEAR MOD-BOUNDS-2))
 (95 10
     (:REWRITE |(* (expt x m) (expt x n))|))
 (93 93 (:LINEAR EXPT-LINEAR-UPPER-<=))
 (93 93 (:LINEAR EXPT-LINEAR-UPPER-<))
 (93 93 (:LINEAR EXPT-LINEAR-LOWER-<))
 (93 93 (:LINEAR EXPT->=-1-TWO))
 (93 93 (:LINEAR EXPT->-1-TWO))
 (93 93 (:LINEAR EXPT-<=-1-ONE))
 (93 93 (:LINEAR EXPT-<-1-TWO))
 (93 93 (:LINEAR EXPT-<-1-ONE))
 (88 88 (:REWRITE |(- (* c x))|))
 (69 54 (:REWRITE |(equal (/ x) c)|))
 (64 4 (:REWRITE FLOOR-=-X/Y . 4))
 (64 4
     (:REWRITE |(equal (floor (+ x y) z) x)|))
 (61 61 (:REWRITE DEFAULT-FLOOR-1))
 (60 60 (:REWRITE |(floor x (- y))| . 2))
 (60 60 (:REWRITE |(floor x (- y))| . 1))
 (60 60 (:REWRITE |(floor (- x) y)| . 2))
 (60 60 (:REWRITE |(floor (- x) y)| . 1))
 (60 6
     (:REWRITE |(equal (mod (+ x y) z) x)|))
 (54 54
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (54 54
     (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (54 54 (:REWRITE |(equal c (/ x))|))
 (54 54 (:REWRITE |(equal (/ x) (/ y))|))
 (53 53
     (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (53 53 (:REWRITE |(equal c (- x))|))
 (53 53 (:REWRITE |(equal (- x) c)|))
 (47 47 (:REWRITE |(< (+ c/d x) y)|))
 (46 46 (:REWRITE |(< (+ (- c) x) y)|))
 (41 41
     (:TYPE-PRESCRIPTION NOT-INTEGERP-3A-EXPT))
 (41 41
     (:TYPE-PRESCRIPTION NOT-INTEGERP-2A-EXPT))
 (41 41
     (:TYPE-PRESCRIPTION NOT-INTEGERP-1A-EXPT))
 (39 39 (:REWRITE LOGAND-CONSTANT-MASK))
 (35 4 (:REWRITE O-INFP->NEQ-0))
 (33 33 (:TYPE-PRESCRIPTION RATIONALP-MOD))
 (28 28
     (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
 (23 23
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (21 21 (:REWRITE |(equal (+ (- c) x) y)|))
 (19 19
     (:REWRITE MOD-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
 (15 15 (:REWRITE |(mod x (- y))| . 3))
 (15 15 (:REWRITE |(mod x (- y))| . 2))
 (15 15 (:REWRITE |(mod x (- y))| . 1))
 (15 15
     (:REWRITE |(mod x (* y (/ z))) not rewriting-goal-literal|))
 (15 15 (:REWRITE |(mod (- x) y)| . 3))
 (15 15 (:REWRITE |(mod (- x) y)| . 2))
 (15 15 (:REWRITE |(mod (- x) y)| . 1))
 (15 15
     (:REWRITE |(mod (* x (/ y)) z) not rewriting-goal-literal|))
 (8 8 (:REWRITE |(* c (* d x))|))
 (4 4 (:REWRITE FLOOR-ZERO . 1))
 (4 4 (:REWRITE FLOOR-POSITIVE . 1))
 (4 4 (:REWRITE |(mod (floor x y) z)| . 5))
 (4 4 (:REWRITE |(mod (floor x y) z)| . 4))
 (4 4 (:REWRITE |(mod (floor x y) z)| . 3))
 (4 4 (:REWRITE |(mod (floor x y) z)| . 2))
 (4 4 (:REWRITE |(equal (* x y) 0)|))
 (2 2 (:REWRITE INTEGERP-+-REDUCE-CONSTANT))
 (1 1
    (:REWRITE NORMALIZE-TERMS-SUCH-AS-1/AX+BX))
 (1 1 (:REWRITE FOLD-CONSTS-IN-+))
 (1 1 (:REWRITE |(not (equal x (/ y)))|))
 (1 1 (:REWRITE |(equal x (/ y))|))
 (1 1
    (:REWRITE |(<= (/ x) y) with (< x 0)|))
 (1 1
    (:REWRITE |(<= (/ x) y) with (< 0 x)|))
 (1 1 (:REWRITE |(< x (/ y)) with (< y 0)|))
 (1 1 (:REWRITE |(/ (/ x))|)))
(SNPT-CODE-LOCATION)
(|(natp (snpt-code-location))|)
(|irritating crock|)
(|(n32p (+ 991 (snpt-code-location)))|)
(HANDY-REFERENCE-THM-FOR-OFFSETS)
(CHECK-CODE)
(CODE-LOADED-P-1 (36 33 (:REWRITE DEFAULT-+-1))
                 (35 33 (:REWRITE DEFAULT-+-2))
                 (12 9 (:REWRITE DEFAULT-UNARY-MINUS))
                 (6 2 (:LINEAR |(n08p (r08 addr st))|))
                 (5 5 (:REWRITE DEFAULT-<-2))
                 (5 5 (:REWRITE DEFAULT-<-1))
                 (4 4
                    (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                 (3 1 (:REWRITE O<=-O-FINP-DEF))
                 (1 1 (:REWRITE |a < b & b < c  =>  a < c|))
                 (1 1 (:REWRITE O-INFP-O-FINP-O<=))
                 (1 1 (:REWRITE DEFAULT-CDR))
                 (1 1 (:REWRITE AC-<)))
(CODE-LOADED-P)
(CROCK-1 (175 151 (:REWRITE DEFAULT-+-1))
         (173 151 (:REWRITE DEFAULT-+-2))
         (166 166
              (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
         (50 36 (:REWRITE DEFAULT-UNARY-MINUS))
         (44 44 (:REWRITE FOLD-CONSTS-IN-+))
         (35 24 (:REWRITE DEFAULT-<-1))
         (24 24 (:REWRITE DEFAULT-<-2))
         (18 6 (:LINEAR |(n08p (r08 addr st))|))
         (14 14 (:REWRITE DEFAULT-CDR)))
(CODE-LOADED-P-THM-08 (66 33
                          (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
                      (45 1 (:DEFINITION CODE-LOADED-P-1))
                      (18 14 (:REWRITE DEFAULT-+-2))
                      (17 14 (:REWRITE DEFAULT-+-1))
                      (7 4 (:REWRITE DEFAULT-UNARY-MINUS))
                      (3 3 (:REWRITE DEFAULT-CDR))
                      (3 3 (:REWRITE DEFAULT-<-2))
                      (3 3 (:REWRITE DEFAULT-<-1))
                      (3 1 (:REWRITE <-+-NEGATIVE-0-1)))
(CODE-LOADED-P-THM-32
     (84 41 (:REWRITE DEFAULT-+-2))
     (60 41 (:REWRITE DEFAULT-+-1))
     (51 13 (:REWRITE |(n32p x)|))
     (21 21 (:REWRITE FOLD-CONSTS-IN-+))
     (19 4
         (:REWRITE |(good-32-address-p addr st)|))
     (12 12 (:REWRITE DEFAULT-<-2))
     (12 12 (:REWRITE DEFAULT-<-1))
     (12 6
         (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
     (10 5 (:REWRITE DEFAULT-UNARY-MINUS))
     (8 8 (:REWRITE DEFAULT-CDR))
     (6 6
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE))
     (6 6
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONZERO))
     (6 6
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1 1 (:REWRITE EQUAL-CONSTANT-+)))
(CROCK-1 (474 419 (:REWRITE DEFAULT-+-2))
         (462 419 (:REWRITE DEFAULT-+-1))
         (234 234
              (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
         (85 66 (:REWRITE DEFAULT-UNARY-MINUS))
         (74 74
             (:TYPE-PRESCRIPTION |(natp (snpt-code-location))|))
         (57 39 (:REWRITE DEFAULT-<-1))
         (39 39 (:REWRITE DEFAULT-<-2))
         (32 8
             (:REWRITE |(memoryp (g :mem (w08 addr val st)))|))
         (31 2
             (:REWRITE |(r08 addr1 (w08 addr2 val st)) --- paging|))
         (29 29 (:REWRITE CODE-LOADED-P-THM-08))
         (19 19 (:REWRITE DEFAULT-CDR))
         (16 16 (:TYPE-PRESCRIPTION N08P))
         (12 12
             (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
         (8 8 (:REWRITE |(n08p x)|))
         (8 8
            (:REWRITE |(g field (w08 addr val st))|))
         (8 2 (:REWRITE DISJOINT-3-ITEMS))
         (4 4 (:REWRITE |(va-to-pa addr st)|)))
(CROCK-2
 (474 419 (:REWRITE DEFAULT-+-2))
 (462 419 (:REWRITE DEFAULT-+-1))
 (234 234
      (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (85 66 (:REWRITE DEFAULT-UNARY-MINUS))
 (74 74
     (:TYPE-PRESCRIPTION |(natp (snpt-code-location))|))
 (57 39 (:REWRITE DEFAULT-<-1))
 (39 39 (:REWRITE DEFAULT-<-2))
 (32 8
     (:REWRITE |(memoryp (g :mem (w32 addr val st)))|))
 (29 29 (:REWRITE CODE-LOADED-P-THM-08))
 (28 7
     (:REWRITE |(good-32-address-p addr st)|))
 (27 2
     (:REWRITE |(r08 addr1 (w32 addr2 val st)) --- paging|))
 (19 19 (:REWRITE DEFAULT-CDR))
 (12 12
     (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (12
  12
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (9
  9
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (9
  9
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (8 8
    (:REWRITE |(g field (w32 addr val st))|))
 (8 2 (:REWRITE DISJOINT-3-ITEMS))
 (4 4 (:REWRITE |(va-to-pa addr st)|)))
(|(code-loaded-p lower upper (w08 addr s))|
 (60 47 (:REWRITE DEFAULT-+-2))
 (51 47 (:REWRITE DEFAULT-+-1))
 (47 2
     (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (41
  1
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (33 4 (:REWRITE COMMUTATIVITY-2-OF-+))
 (18 12 (:REWRITE FOLD-CONSTS-IN-+))
 (14 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (13 12
     (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (9 9
    (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (5 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE CODE-LOADED-P-THM-08))
 (3 3 (:REWRITE |(n32p x)|))
 (2 1
    (:REWRITE MINUS-CANCELLATION-ON-RIGHT))
 (2 1 (:REWRITE MINUS-CANCELLATION-ON-LEFT))
 (1 1 (:TYPE-PRESCRIPTION SUBRANGEP))
 (1 1 (:REWRITE |(subrangep x x)|))
 (1 1
    (:REWRITE |(subrangep (list x) (range base offset length))|)))
(|(code-loaded-p lower upper (w32 addr s))|
 (60 47 (:REWRITE DEFAULT-+-2))
 (51 47 (:REWRITE DEFAULT-+-1))
 (47 2
     (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (42
  2
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (33 4 (:REWRITE COMMUTATIVITY-2-OF-+))
 (18 12 (:REWRITE FOLD-CONSTS-IN-+))
 (14 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (13 12
     (:TYPE-PRESCRIPTION |x < y  =>  0 < -x+y|))
 (9 9
    (:TYPE-PRESCRIPTION |x < y  =>  0 < y-x|))
 (5 4 (:REWRITE DEFAULT-<-1))
 (4 4 (:REWRITE DEFAULT-CDR))
 (4 4 (:REWRITE DEFAULT-<-2))
 (4 4 (:REWRITE CODE-LOADED-P-THM-08))
 (4 1
    (:REWRITE |(good-32-address-p addr st)|))
 (3 3 (:REWRITE |(n32p x)|))
 (2
  2
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (2
  2
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (2 1
    (:REWRITE MINUS-CANCELLATION-ON-RIGHT))
 (2 1 (:REWRITE MINUS-CANCELLATION-ON-LEFT))
 (1 1 (:TYPE-PRESCRIPTION SUBRANGEP))
 (1 1 (:REWRITE |(subrangep x x)|)))
(SEC_NOT_PRESENT-LOADED-P)
(SEC_NOT_PRESENT-LOADED-THM-08
     (54 27
         (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
     (14 8 (:REWRITE DEFAULT-+-2))
     (10 8 (:REWRITE DEFAULT-+-1))
     (4 2 (:REWRITE DEFAULT-UNARY-MINUS))
     (3 2 (:REWRITE DEFAULT-<-2))
     (3 2 (:REWRITE DEFAULT-<-1))
     (2 2 (:REWRITE DEFAULT-CDR)))
(SEC_NOT_PRESENT-LOADED-THM-32 (226 108 (:REWRITE DEFAULT-+-2))
                               (162 108 (:REWRITE DEFAULT-+-1))
                               (28 28 (:REWRITE DEFAULT-CDR))
                               (20 10 (:REWRITE DEFAULT-UNARY-MINUS))
                               (12 12
                                   (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                               (7 5 (:REWRITE DEFAULT-<-2))
                               (7 5 (:REWRITE DEFAULT-<-1)))
(INIT_PDTS-LOADED-P)
(INIT_PDTS-LOADED-THM-08 (54 27
                             (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
                         (20 11 (:REWRITE DEFAULT-+-2))
                         (13 11 (:REWRITE DEFAULT-+-1))
                         (4 2 (:REWRITE DEFAULT-UNARY-MINUS))
                         (3 2 (:REWRITE DEFAULT-<-2))
                         (3 2 (:REWRITE DEFAULT-<-1))
                         (2 2 (:REWRITE DEFAULT-CDR))
                         (1 1
                            (:REWRITE SEC_NOT_PRESENT-LOADED-THM-08)))
(INIT_PDTS-LOADED-THM-32 (364 173 (:REWRITE DEFAULT-+-2))
                         (259 173 (:REWRITE DEFAULT-+-1))
                         (44 44 (:REWRITE DEFAULT-CDR))
                         (28 14 (:REWRITE DEFAULT-UNARY-MINUS))
                         (20 20
                             (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                         (10 10
                             (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
                         (7 5 (:REWRITE DEFAULT-<-2))
                         (7 5 (:REWRITE DEFAULT-<-1)))
(INIT_PDPT-LOADED-P)
(INIT_PDPT-LOADED-THM-08 (54 27
                             (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
                         (20 11 (:REWRITE DEFAULT-+-2))
                         (13 11 (:REWRITE DEFAULT-+-1))
                         (4 2 (:REWRITE DEFAULT-UNARY-MINUS))
                         (3 2 (:REWRITE DEFAULT-<-2))
                         (3 2 (:REWRITE DEFAULT-<-1))
                         (2 2 (:REWRITE DEFAULT-CDR))
                         (1 1
                            (:REWRITE SEC_NOT_PRESENT-LOADED-THM-08))
                         (1 1 (:REWRITE INIT_PDTS-LOADED-THM-08)))
(INIT_PDPT-LOADED-THM-32 (364 173 (:REWRITE DEFAULT-+-2))
                         (259 173 (:REWRITE DEFAULT-+-1))
                         (44 44 (:REWRITE DEFAULT-CDR))
                         (28 14 (:REWRITE DEFAULT-UNARY-MINUS))
                         (20 20
                             (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                         (10 10
                             (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
                         (10 10 (:REWRITE INIT_PDTS-LOADED-THM-32))
                         (7 5 (:REWRITE DEFAULT-<-2))
                         (7 5 (:REWRITE DEFAULT-<-1)))
(CREATE_NESTED_PT-LOADED-P)
(CREATE_NESTED_PT-LOADED-THM-08
     (54 27
         (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
     (16 9 (:REWRITE DEFAULT-+-2))
     (11 9 (:REWRITE DEFAULT-+-1))
     (4 2 (:REWRITE DEFAULT-UNARY-MINUS))
     (3 2 (:REWRITE DEFAULT-<-2))
     (3 2 (:REWRITE DEFAULT-<-1))
     (2 2 (:REWRITE DEFAULT-CDR))
     (1 1
        (:REWRITE SEC_NOT_PRESENT-LOADED-THM-08))
     (1 1 (:REWRITE INIT_PDTS-LOADED-THM-08))
     (1 1 (:REWRITE INIT_PDPT-LOADED-THM-08)))
(CREATE_NESTED_PT-LOADED-THM-32
     (201 95 (:REWRITE DEFAULT-+-2))
     (142 95 (:REWRITE DEFAULT-+-1))
     (54 54 (:REWRITE FOLD-CONSTS-IN-+))
     (24 24 (:REWRITE DEFAULT-CDR))
     (12 6 (:REWRITE DEFAULT-UNARY-MINUS))
     (10 10
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (5 5
        (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
     (5 5 (:REWRITE INIT_PDTS-LOADED-THM-32))
     (5 5 (:REWRITE INIT_PDPT-LOADED-THM-32))
     (3 2 (:REWRITE DEFAULT-<-2))
     (3 2 (:REWRITE DEFAULT-<-1)))
(ALL-CODE-LOADED-P)
(ALL-CODE-LOADED-P-FC)
(GOOD-STATE-P)
(GOOD-STATE-P-FC (42 21 (:REWRITE DEFAULT-+-2))
                 (21 21 (:REWRITE DEFAULT-+-1)))
(CROCK-1-1 (159 137 (:REWRITE DEFAULT-+-1))
           (148 137 (:REWRITE DEFAULT-+-2))
           (50 50 (:REWRITE FOLD-CONSTS-IN-+))
           (50 39 (:REWRITE DEFAULT-UNARY-MINUS))
           (44 44
               (:TYPE-PRESCRIPTION |(natp (snpt-code-location))|))
           (17 17
               (:REWRITE SEC_NOT_PRESENT-LOADED-THM-08))
           (17 17 (:REWRITE INIT_PDTS-LOADED-THM-08))
           (17 17 (:REWRITE INIT_PDPT-LOADED-THM-08))
           (17 17
               (:REWRITE CREATE_NESTED_PT-LOADED-THM-08))
           (17 17 (:REWRITE CODE-LOADED-P-THM-08))
           (16 4 (:LINEAR |(n08p (r08 addr st))|))
           (14 14 (:REWRITE DEFAULT-<-2))
           (14 14 (:REWRITE DEFAULT-<-1))
           (11 11 (:REWRITE DEFAULT-CDR))
           (4 4 (:REWRITE G-DIFF-S)))
(CROCK-1 (45 1 (:DEFINITION CODE-LOADED-P-1))
         (14 3 (:REWRITE COMMUTATIVITY-OF-+))
         (10 8 (:REWRITE DEFAULT-+-2))
         (9 8 (:REWRITE DEFAULT-+-1))
         (7 3 (:REWRITE UNICITY-OF-0))
         (5 5
            (:TYPE-PRESCRIPTION |(natp (snpt-code-location))|))
         (4 3 (:DEFINITION FIX))
         (4 2
            (:TYPE-PRESCRIPTION |(n08p (r08 addr st))|))
         (3 2 (:REWRITE DEFAULT-UNARY-MINUS))
         (2 2 (:TYPE-PRESCRIPTION MEMORYP))
         (1 1
            (:REWRITE SEC_NOT_PRESENT-LOADED-THM-08))
         (1 1 (:REWRITE INIT_PDTS-LOADED-THM-08))
         (1 1 (:REWRITE INIT_PDPT-LOADED-THM-08))
         (1 1 (:REWRITE DEFAULT-CDR))
         (1 1 (:REWRITE DEFAULT-<-2))
         (1 1 (:REWRITE DEFAULT-<-1))
         (1 1
            (:REWRITE CREATE_NESTED_PT-LOADED-THM-08))
         (1 1 (:REWRITE CODE-LOADED-P-THM-08)))
(CROCK-3 (4 4 (:REWRITE G-DIFF-S)))
(|(good-state-p (s field val) s) --- n32p|
     (394 197 (:REWRITE DEFAULT-+-2))
     (197 197 (:REWRITE DEFAULT-+-1))
     (2 2 (:REWRITE |(memberp e (list x))|)))
(|(good-state-p (s field val) s) --- n01p|
     (605 5
          (:REWRITE |(good-state-p (s field val) s) --- n32p|))
     (240 120 (:REWRITE DEFAULT-+-2))
     (120 120 (:REWRITE DEFAULT-+-1))
     (2 2 (:REWRITE |(memberp e (list x))|)))
(|(good-state-p (w32 addr val s))|
 (214 123 (:REWRITE DEFAULT-+-2))
 (179 123 (:REWRITE DEFAULT-+-1))
 (16 8 (:REWRITE DEFAULT-UNARY-MINUS))
 (5
  5
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (5
  5
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (4 1
    (:REWRITE |(good-32-address-p addr st)|)))
(IN-INIT_PDPT)
(IN-SUB)
(INIT_PDPT-CUTPOINT-P)
(INIT_PDPT-PRE)
(INIT_PDPT-LOOP-PRE)
(INIT_PDPT-MODIFY-LOOP-1)
(|(paging-p (init_pdpt-modify-loop-1 loop-counter s))|
     (4046 14 (:DEFINITION BINARY-LOGAND))
     (3402 14 (:DEFINITION FLOOR))
     (2296 28
           (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (911 323 (:REWRITE DEFAULT-+-2))
     (610 323 (:REWRITE DEFAULT-+-1))
     (588 28 (:DEFINITION NFIX))
     (364 84 (:REWRITE DEFAULT-UNARY-MINUS))
     (325 73 (:REWRITE DEFAULT-<-1))
     (283 23 (:REWRITE DISTRIBUTIVITY))
     (280 14 (:REWRITE ZIP-OPEN))
     (280 14 (:REWRITE COMMUTATIVITY-OF-*))
     (241 73 (:REWRITE DEFAULT-<-2))
     (187 89 (:REWRITE DEFAULT-*-2))
     (108 108
          (:TYPE-PRESCRIPTION GOOD-32-ADDRESS-P))
     (108 9 (:REWRITE ASSOCIATIVITY-OF-+))
     (98 14 (:REWRITE O-INFP->NEQ-0))
     (98 14 (:REWRITE DEFAULT-NUMERATOR))
     (98 14 (:REWRITE DEFAULT-DENOMINATOR))
     (96 24
         (:REWRITE |(r32 addr1 (w32 addr2 val st)) --- not paging|))
     (89 89 (:REWRITE DEFAULT-*-1))
     (84 54
         (:REWRITE |(good-32-address-p addr st)|))
     (78 24
         (:REWRITE |(r32 addr1 (w32 addr2 val st)) --- paging|))
     (70 70
         (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (56 56
         (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
     (56 56 (:REWRITE INIT_PDTS-LOADED-THM-32))
     (56 56 (:REWRITE INIT_PDPT-LOADED-THM-32))
     (56 56
         (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
     (48 9
         (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- not paging|))
     (44 23 (:REWRITE FOLD-CONSTS-IN-+))
     (42 14 (:REWRITE UNICITY-OF-0))
     (36 36
         (:REWRITE |(g field (w32 addr val st))|))
     (36 9
         (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- paging|))
     (28 14 (:DEFINITION FIX))
     (17 8 (:REWRITE ZP-OPEN))
     (14 14
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP)))
(|(va-to-pa addr (init_pdpt-modify-loop-1 loop-counter s))|
     (750 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
     (668 2 (:DEFINITION BINARY-LOGIOR))
     (578 2 (:DEFINITION BINARY-LOGAND))
     (486 2 (:DEFINITION FLOOR))
     (410 165
          (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
     (328 4
          (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (165 165 (:TYPE-PRESCRIPTION R32))
     (165 165 (:TYPE-PRESCRIPTION MEMORYP))
     (117 42 (:REWRITE DEFAULT-+-2))
     (88 4 (:DEFINITION LOGNOT))
     (84 42 (:REWRITE DEFAULT-+-1))
     (84 12 (:REWRITE COMMUTATIVITY-OF-+))
     (84 4 (:DEFINITION NFIX))
     (52 12 (:REWRITE DEFAULT-UNARY-MINUS))
     (46 10 (:REWRITE DEFAULT-<-1))
     (40 2 (:REWRITE ZIP-OPEN))
     (40 2 (:REWRITE COMMUTATIVITY-OF-*))
     (38 38 (:TYPE-PRESCRIPTION VA-TO-PA))
     (34 10 (:REWRITE DEFAULT-<-2))
     (34 2 (:REWRITE DISTRIBUTIVITY))
     (25 11 (:REWRITE DEFAULT-*-2))
     (22 8 (:DEFINITION IFIX))
     (16 16 (:TYPE-PRESCRIPTION BINARY-LOGAND))
     (14 2 (:REWRITE O-INFP->NEQ-0))
     (14 2 (:REWRITE DEFAULT-NUMERATOR))
     (14 2 (:REWRITE DEFAULT-DENOMINATOR))
     (11 11 (:REWRITE DEFAULT-*-1))
     (10 10
         (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (8 8
        (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
     (8 8 (:REWRITE INIT_PDTS-LOADED-THM-32))
     (8 8 (:REWRITE INIT_PDPT-LOADED-THM-32))
     (8 8
        (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
     (6 2 (:REWRITE UNICITY-OF-0))
     (4 2 (:DEFINITION FIX))
     (2 2
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1 (:REWRITE FOLD-CONSTS-IN-+)))
(|(good-32-address-p addr (init_pdpt-modify-loop-1 loop-counter s))|
     (750 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
     (668 2 (:DEFINITION BINARY-LOGIOR))
     (578 2 (:DEFINITION BINARY-LOGAND))
     (486 2 (:DEFINITION FLOOR))
     (410 165
          (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
     (328 4
          (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (165 165 (:TYPE-PRESCRIPTION R32))
     (165 165 (:TYPE-PRESCRIPTION MEMORYP))
     (119 44 (:REWRITE DEFAULT-+-2))
     (88 4 (:DEFINITION LOGNOT))
     (86 44 (:REWRITE DEFAULT-+-1))
     (84 12 (:REWRITE COMMUTATIVITY-OF-+))
     (84 4 (:DEFINITION NFIX))
     (52 12 (:REWRITE DEFAULT-UNARY-MINUS))
     (50 14 (:REWRITE DEFAULT-<-1))
     (40 2 (:REWRITE ZIP-OPEN))
     (40 2 (:REWRITE COMMUTATIVITY-OF-*))
     (38 14 (:REWRITE DEFAULT-<-2))
     (34 2 (:REWRITE DISTRIBUTIVITY))
     (25 11 (:REWRITE DEFAULT-*-2))
     (23 7 (:REWRITE |(n32p x)|))
     (22 8 (:DEFINITION IFIX))
     (16 16 (:TYPE-PRESCRIPTION BINARY-LOGAND))
     (14 2 (:REWRITE O-INFP->NEQ-0))
     (14 2 (:REWRITE DEFAULT-NUMERATOR))
     (14 2 (:REWRITE DEFAULT-DENOMINATOR))
     (11 11 (:REWRITE DEFAULT-*-1))
     (10 10
         (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (8 8
        (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
     (8 8 (:REWRITE INIT_PDTS-LOADED-THM-32))
     (8 8 (:REWRITE INIT_PDPT-LOADED-THM-32))
     (8 8
        (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
     (8 2
        (:REWRITE |(good-32-address-p addr st)|))
     (6 2 (:REWRITE UNICITY-OF-0))
     (4 4
        (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (4 4
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (4 2 (:DEFINITION FIX))
     (2 2 (:TYPE-PRESCRIPTION N32P))
     (2 2
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (2 1
        (:REWRITE |(paging-p (init_pdpt-modify-loop-1 loop-counter s))|))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1 (:REWRITE FOLD-CONSTS-IN-+)))
(|(memoryp (g :mem (init_pdpt-modify-loop-1 loop-counter s)))|
 (706 508 (:REWRITE DEFAULT-PLUS-2))
 (706 35
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (582 508 (:REWRITE DEFAULT-PLUS-1))
 (269 269
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (269 269 (:REWRITE NORMALIZE-ADDENDS))
 (105 105
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (105 105 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (105 105 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (105 105
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (54 54 (:REWRITE FOLD-CONSTS-IN-+))
 (51 35 (:REWRITE DEFAULT-LESS-THAN-1))
 (47 47 (:REWRITE DEFAULT-TIMES-2))
 (47 47 (:REWRITE DEFAULT-TIMES-1))
 (45 45
     (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (45 15 (:REWRITE DEFAULT-LOGIOR-2))
 (40
   40
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (40
  40
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (40 40
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (40 40
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (40 40
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (40 40
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (35 35 (:REWRITE THE-FLOOR-BELOW))
 (35 35 (:REWRITE THE-FLOOR-ABOVE))
 (35 35
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (35 35
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (35 35 (:REWRITE DEFAULT-LESS-THAN-2))
 (26 18
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (26 18 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (20 20
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (20 20 (:REWRITE INTEGERP-<-CONSTANT))
 (20 20 (:REWRITE CONSTANT-<-INTEGERP))
 (20 20
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (20 20
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (20 20
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (20 20
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (20 20 (:REWRITE |(< c (- x))|))
 (20 20
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (20 20
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (20 20
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (20 20
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (20 20 (:REWRITE |(< (/ x) (/ y))|))
 (20 20 (:REWRITE |(< (- x) c)|))
 (20 20 (:REWRITE |(< (- x) (- y))|))
 (20 20 (:REWRITE |(< (+ c/d x) y)|))
 (18 18 (:REWRITE SIMPLIFY-SUMS-<))
 (15 15 (:REWRITE DEFAULT-LOGIOR-1))
 (13
  13
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (13
  13
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (9 9 (:REWRITE ZP-OPEN))
 (6 6
    (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (6 6
    (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (5 5 (:REWRITE |(< (/ x) 0)|))
 (5 5 (:REWRITE |(< (+ (- c) x) y)|))
 (5 5 (:REWRITE |(< (* x y) 0)|))
 (3 3
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (3 3
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (3 3 (:REWRITE REDUCE-INTEGERP-+))
 (3 3 (:REWRITE INTEGERP-MINUS-X))
 (3 3 (:META META-INTEGERP-CORRECT)))
(|(good-state-p (init_pdpt-modify-loop-1 loop-counter s))|
 (965 674 (:REWRITE DEFAULT-PLUS-2))
 (826 674 (:REWRITE DEFAULT-PLUS-1))
 (782 33
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (334 316 (:REWRITE NORMALIZE-ADDENDS))
 (314 314
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (107 18 (:REWRITE SIMPLIFY-SUMS-<))
 (100 100
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (100 100 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (100 100 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (100 100
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (70 70 (:REWRITE FOLD-CONSTS-IN-+))
 (49 33 (:REWRITE DEFAULT-LESS-THAN-1))
 (45 15 (:REWRITE DEFAULT-LOGIOR-2))
 (44 44 (:REWRITE DEFAULT-TIMES-2))
 (44 44 (:REWRITE DEFAULT-TIMES-1))
 (42 42
     (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (40
   40
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (40
  40
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (40 40
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (40 40
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (40 40
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (40 40
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (35 33 (:REWRITE DEFAULT-LESS-THAN-2))
 (33 33 (:REWRITE THE-FLOOR-BELOW))
 (33 33 (:REWRITE THE-FLOOR-ABOVE))
 (33 33
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (33 33
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (27 18
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (27 18 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (19 19
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (19 19 (:REWRITE INTEGERP-<-CONSTANT))
 (19 19 (:REWRITE CONSTANT-<-INTEGERP))
 (19 19
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (19 19
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (19 19
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (19 19
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (19 19 (:REWRITE |(< c (- x))|))
 (19 19
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (19 19
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (19 19
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (19 19
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (19 19 (:REWRITE |(< (/ x) (/ y))|))
 (19 19 (:REWRITE |(< (- x) c)|))
 (19 19 (:REWRITE |(< (- x) (- y))|))
 (19 19 (:REWRITE |(< (+ c/d x) y)|))
 (17
  17
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (17
  17
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (15 15 (:REWRITE DEFAULT-LOGIOR-1))
 (8 8 (:REWRITE ZP-OPEN))
 (6 3 (:DEFINITION FIX))
 (5 5 (:REWRITE |(< (+ (- c) x) y)|))
 (4 4
    (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (4 4
    (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (4 4 (:REWRITE |(< (/ x) 0)|))
 (4 4 (:REWRITE |(< (* x y) 0)|))
 (4 2 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (4 2 (:REWRITE BUBBLE-DOWN-+-MATCH-1))
 (3 3
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (3 3
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (3 3 (:REWRITE REDUCE-INTEGERP-+))
 (3 3 (:REWRITE INTEGERP-MINUS-X))
 (3 3 (:META META-INTEGERP-CORRECT))
 (2 2 (:REWRITE |(< x (+ c/d y))|))
 (2 2 (:REWRITE |(+ x (- x))|))
 (1 1 (:REWRITE |(< y (+ (- c) x))|)))
(|(r32 addr (init_pdpt-modify-loop-1 loop-counter s))|
 (6495 4731 (:REWRITE DEFAULT-PLUS-2))
 (5823 4731 (:REWRITE DEFAULT-PLUS-1))
 (2007 2007
       (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (2007 2007 (:REWRITE NORMALIZE-ADDENDS))
 (1333 64
       (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (495 495 (:REWRITE FOLD-CONSTS-IN-+))
 (415 415
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (415 415 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (415 415 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (415 415
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (385
   385
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (385
  385
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (385 385
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (385
     385
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (385 385
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (385 385
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (264 264 (:REWRITE DEFAULT-TIMES-2))
 (264 264 (:REWRITE DEFAULT-TIMES-1))
 (173 173
      (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (128
  128
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (128
  128
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (90 64 (:REWRITE DEFAULT-LESS-THAN-1))
 (64 64 (:REWRITE THE-FLOOR-BELOW))
 (64 64 (:REWRITE THE-FLOOR-ABOVE))
 (64 64
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (64 64
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (64 64 (:REWRITE DEFAULT-LESS-THAN-2))
 (54 18 (:REWRITE DEFAULT-LOGIOR-2))
 (45 32
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (45 32 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (39 39 (:REWRITE |(< (+ c/d x) y)|))
 (35 35
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (35 35 (:REWRITE INTEGERP-<-CONSTANT))
 (35 35 (:REWRITE CONSTANT-<-INTEGERP))
 (35 35
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (35 35
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (35 35
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (35 35
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (35 35 (:REWRITE |(< c (- x))|))
 (35 35
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (35 35
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (35 35
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (35 35
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (35 35 (:REWRITE |(< (/ x) (/ y))|))
 (35 35 (:REWRITE |(< (- x) c)|))
 (35 35 (:REWRITE |(< (- x) (- y))|))
 (35 7 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (35 7
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (35 7
     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (34 34
     (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (34 34
     (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (32 32 (:REWRITE SIMPLIFY-SUMS-<))
 (18 18 (:REWRITE DEFAULT-LOGIOR-1))
 (11 11 (:REWRITE ZP-OPEN))
 (11 11 (:REWRITE REDUCE-INTEGERP-+))
 (11 11 (:REWRITE INTEGERP-MINUS-X))
 (11 11 (:META META-INTEGERP-CORRECT))
 (10 10 (:REWRITE |(< (+ (- c) x) y)|))
 (9 1
    (:REWRITE |(r32 addr1 (w32 addr2 val st)) --- paging|))
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
 (6 6 (:REWRITE |(< (/ x) 0)|))
 (6 6 (:REWRITE |(< (* x y) 0)|))
 (3 3
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (3 3
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON)))
(|(init_pdpt-modify-loop-1 loop-counter (w32 addr val s))|
 (12291 9070 (:REWRITE DEFAULT-PLUS-2))
 (11019 9070 (:REWRITE DEFAULT-PLUS-1))
 (4842
  216
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (4587 116
       (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (4364 3644 (:REWRITE NORMALIZE-ADDENDS))
 (3584 3584
       (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (2334 69 (:REWRITE SIMPLIFY-SUMS-<))
 (1470
  216
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (1290 6
       (:REWRITE |(r32 addr1 (w32 addr2 val st)) --- paging|))
 (862 862 (:REWRITE FOLD-CONSTS-IN-+))
 (702 6 (:REWRITE DISJOINT-3-ITEMS))
 (650
   650
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (650
  650
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (650 650
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (650
     650
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (650 650
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (650 650
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (373 373
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (373 373 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (373 373 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (373 373
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (300 30 (:REWRITE BUBBLE-DOWN-+-MATCH-3))
 (189 116 (:REWRITE DEFAULT-LESS-THAN-1))
 (161 116 (:REWRITE DEFAULT-LESS-THAN-2))
 (150 150 (:REWRITE DEFAULT-TIMES-2))
 (150 150 (:REWRITE DEFAULT-TIMES-1))
 (143 69
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (143 69 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (135 90 (:DEFINITION FIX))
 (123 37 (:REWRITE DEFAULT-LOGIOR-2))
 (120 120
      (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (120 30 (:REWRITE |(+ (* c x) (* d x))|))
 (118 19 (:REWRITE ZP-OPEN))
 (116 116 (:REWRITE THE-FLOOR-BELOW))
 (116 116 (:REWRITE THE-FLOOR-ABOVE))
 (116 116
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (116 116
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (90 60 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (74 74
     (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (74 74
     (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (73 73
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (73 73 (:REWRITE INTEGERP-<-CONSTANT))
 (73 73 (:REWRITE CONSTANT-<-INTEGERP))
 (73 73
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (73 73
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (73 73
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (73 73
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (73 73 (:REWRITE |(< c (- x))|))
 (73 73
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (73 73
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (73 73
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (73 73
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (73 73 (:REWRITE |(< (/ x) (/ y))|))
 (73 73 (:REWRITE |(< (- x) c)|))
 (73 73 (:REWRITE |(< (- x) (- y))|))
 (73 73 (:REWRITE |(< (+ c/d x) y)|))
 (66 18 (:REWRITE ACL2-NUMBERP-X))
 (60 30 (:REWRITE BUBBLE-DOWN-+-MATCH-1))
 (60 6
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (37 37 (:REWRITE DEFAULT-LOGIOR-1))
 (33 33 (:REWRITE |(< x (+ c/d y))|))
 (30 30 (:REWRITE |(< (+ (- c) x) y)|))
 (30 30 (:REWRITE |(+ x (- x))|))
 (30 30 (:REWRITE |(* 0 x)|))
 (24 6 (:REWRITE RATIONALP-X))
 (18 18 (:REWRITE |(< y (+ (- c) x))|))
 (15 15 (:REWRITE REDUCE-INTEGERP-+))
 (15 15 (:REWRITE INTEGERP-MINUS-X))
 (15 15 (:META META-INTEGERP-CORRECT))
 (12 6 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (12 6
     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (6 6 (:REWRITE REDUCE-RATIONALP-+))
 (6 6 (:REWRITE REDUCE-RATIONALP-*))
 (6 6
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (6 6
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (6 6 (:REWRITE RATIONALP-MINUS-X))
 (6 6
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (6 6 (:REWRITE |(equal c (/ x))|))
 (6 6 (:REWRITE |(equal c (- x))|))
 (6 6 (:REWRITE |(equal (/ x) c)|))
 (6 6 (:REWRITE |(equal (/ x) (/ y))|))
 (6 6 (:REWRITE |(equal (- x) c)|))
 (6 6 (:REWRITE |(equal (- x) (- y))|))
 (6 6 (:REWRITE |(< (/ x) 0)|))
 (6 6 (:REWRITE |(< (* x y) 0)|))
 (6 6 (:META META-RATIONALP-CORRECT))
 (3 3
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (3 3
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (3 3 (:REWRITE |(< 0 (/ x))|))
 (3 3 (:REWRITE |(< 0 (* x y))|))
 (2 2
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (2 2
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON)))
(|(r32 addr (init_pdpt-modify-loop-1 loop-counter s)) --- written to 1|
 (22085 15095 (:REWRITE DEFAULT-PLUS-2))
 (20073 15071 (:REWRITE DEFAULT-PLUS-1))
 (18337
  289
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (10396 610
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (6474 754
       (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (5503 5503
       (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (3376 35 (:LINEAR LOGIOR-BOUNDS-NEG . 1))
 (2758 1
       (:REWRITE |(init_pdpt-modify-loop-1 loop-counter (w32 addr val s))|))
 (2537 5
       (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- not paging|))
 (2248 480 (:REWRITE INTEGERP-<-CONSTANT))
 (1424 1424 (:REWRITE FOLD-CONSTS-IN-+))
 (1338 37
       (:REWRITE |(r32 addr1 (w32 addr2 val st)) --- paging|))
 (1260 972 (:REWRITE DEFAULT-TIMES-2))
 (1021 1021
       (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (1021 1021
       (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (1017 754 (:REWRITE DEFAULT-LESS-THAN-2))
 (972 972 (:REWRITE DEFAULT-TIMES-1))
 (965 754 (:REWRITE DEFAULT-LESS-THAN-1))
 (940 72 (:REWRITE |(* y (* x z))|))
 (855
   855
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (855
  855
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (855 855
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (855
     855
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (855 855
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (855 855
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (826 826
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (826 826 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (826 826 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (826 826
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (818 407
      (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (754 754 (:REWRITE THE-FLOOR-BELOW))
 (754 754 (:REWRITE THE-FLOOR-ABOVE))
 (746 6 (:REWRITE DISJOINT-3-ITEMS))
 (660 342 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (624 24
      (:REWRITE INTEGERP-+-REDUCE-CONSTANT))
 (614 610
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (588 484 (:REWRITE CONSTANT-<-INTEGERP))
 (532 532
      (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (484 484
      (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (484 484
      (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (484 484
      (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (484 484
      (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (484 484 (:REWRITE |(< c (- x))|))
 (484 484
      (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (484 484
      (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (484 484
      (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (484 484
      (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (484 484 (:REWRITE |(< (/ x) (/ y))|))
 (484 484 (:REWRITE |(< (- x) c)|))
 (484 484 (:REWRITE |(< (- x) (- y))|))
 (432 48 (:REWRITE ACL2-NUMBERP-X))
 (412 412
      (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (372 372 (:REWRITE |(< (+ c/d x) y)|))
 (372 76 (:REWRITE |(* c (* d x))|))
 (340 340 (:REWRITE |(* (- x) y)|))
 (340 112 (:REWRITE DEFAULT-LOGIOR-2))
 (220 22 (:REWRITE BUBBLE-DOWN-+-MATCH-3))
 (192 48 (:REWRITE RATIONALP-X))
 (152 152 (:TYPE-PRESCRIPTION ABS))
 (124 4 (:REWRITE |(< (/ x) y) with (< 0 x)|))
 (112 112 (:REWRITE DEFAULT-LOGIOR-1))
 (110 110 (:REWRITE |(< x (+ c/d y))|))
 (109 35 (:LINEAR LOGIOR-BOUNDS-NEG . 2))
 (103 103 (:REWRITE |(< y (+ (- c) x))|))
 (96 8 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (96 8
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (96 8
     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (88 22 (:REWRITE |(+ (* c x) (* d x))|))
 (84 84 (:REWRITE |(< (* x y) 0)|))
 (83 83 (:REWRITE REDUCE-INTEGERP-+))
 (83 83 (:REWRITE INTEGERP-MINUS-X))
 (83 83 (:META META-INTEGERP-CORRECT))
 (72 72 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (72 72 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (72 72 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (72 72 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (69 69
     (:REWRITE |(< x (/ y)) with (< y 0)|))
 (68 68 (:REWRITE |(* a (/ a) b)|))
 (48 48 (:REWRITE REDUCE-RATIONALP-+))
 (48 48 (:REWRITE REDUCE-RATIONALP-*))
 (48 48 (:REWRITE RATIONALP-MINUS-X))
 (48 48 (:META META-RATIONALP-CORRECT))
 (48 15 (:REWRITE ZP-OPEN))
 (37 37 (:REWRITE |(< 0 (* x y))|))
 (36 36
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (36 36
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (36 36 (:REWRITE |(< 0 (/ x))|))
 (22 22 (:REWRITE |(* 0 x)|))
 (16 16 (:REWRITE |(< (/ x) 0)|))
 (12 12
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (12 12
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (8 8
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (8 8
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (8 8
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (8 8 (:REWRITE |(equal c (/ x))|))
 (8 8 (:REWRITE |(equal c (- x))|))
 (8 8 (:REWRITE |(equal (/ x) c)|))
 (8 8 (:REWRITE |(equal (/ x) (/ y))|))
 (8 8 (:REWRITE |(equal (- x) c)|))
 (8 8 (:REWRITE |(equal (- x) (- y))|))
 (4 4 (:REWRITE |(< (/ x) y) with (< x 0)|))
 (4 4 (:REWRITE |(* 1 x)|))
 (4 1
    (:REWRITE |(r32 addr (w32 addr val st)) --- paging|))
 (1 1
    (:REWRITE |(<= (/ x) y) with (< x 0)|))
 (1 1
    (:REWRITE |(<= (/ x) y) with (< 0 x)|)))
(|(r32 addr (init_pdpt-modify-loop-1 loop-counter s)) --- written to 2|
 (21912 569
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (18928
  222
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (18674 12593 (:REWRITE DEFAULT-PLUS-2))
 (16814 12593 (:REWRITE DEFAULT-PLUS-1))
 (6322 695
       (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (4559 4559
       (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (2537 5
       (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- not paging|))
 (1923 389 (:REWRITE INTEGERP-<-CONSTANT))
 (1711 118 (:REWRITE |(* y (* x z))|))
 (1638 9
       (:REWRITE |(r32 addr1 (w32 addr2 val st)) --- paging|))
 (1411 1411 (:REWRITE FOLD-CONSTS-IN-+))
 (1376 904 (:REWRITE DEFAULT-TIMES-2))
 (1290 1
       (:REWRITE |(init_pdpt-modify-loop-1 loop-counter (w32 addr val s))|))
 (1028 7 (:REWRITE DISJOINT-3-ITEMS))
 (931 695 (:REWRITE DEFAULT-LESS-THAN-2))
 (908 695 (:REWRITE DEFAULT-LESS-THAN-1))
 (904 904 (:REWRITE DEFAULT-TIMES-1))
 (695 695 (:REWRITE THE-FLOOR-BELOW))
 (695 695 (:REWRITE THE-FLOOR-ABOVE))
 (650 326
      (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (610
   610
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (610
  610
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (610 610
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (610
     610
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (610 610
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (610 610
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (600 312 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (573 569
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (542 542
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (542 542 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (542 542 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (542 542
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (497 393 (:REWRITE CONSTANT-<-INTEGERP))
 (464 464
      (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (393 393
      (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (393 393
      (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (393 393
      (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (393 393
      (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (393 393 (:REWRITE |(< c (- x))|))
 (393 393
      (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (393 393
      (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (393 393
      (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (393 393
      (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (393 393 (:REWRITE |(< (/ x) (/ y))|))
 (393 393 (:REWRITE |(< (- x) c)|))
 (393 393 (:REWRITE |(< (- x) (- y))|))
 (387 387 (:REWRITE |(< (+ c/d x) y)|))
 (354 354 (:REWRITE |(* (- x) y)|))
 (330 330
      (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (327 67 (:REWRITE |(* c (* d x))|))
 (220 22 (:REWRITE BUBBLE-DOWN-+-MATCH-3))
 (157 157 (:REWRITE |(< x (+ c/d y))|))
 (134 134 (:TYPE-PRESCRIPTION ABS))
 (124 4 (:REWRITE |(< (/ x) y) with (< 0 x)|))
 (118 118
      (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (118 118
      (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (118 118
      (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (118 118
      (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (88 22 (:REWRITE |(+ (* c x) (* d x))|))
 (79 25 (:REWRITE DEFAULT-LOGIOR-2))
 (76 76 (:REWRITE |(< y (+ (- c) x))|))
 (72 72 (:REWRITE |(< (* x y) 0)|))
 (60 60
     (:REWRITE |(< x (/ y)) with (< y 0)|))
 (59 59 (:REWRITE |(* a (/ a) b)|))
 (46 13 (:REWRITE ZP-OPEN))
 (42 42
     (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (42 42
     (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (35 7
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (35 7
     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (35 7 (:REWRITE O-INFP->NEQ-0))
 (25 25 (:REWRITE DEFAULT-LOGIOR-1))
 (22 22 (:REWRITE |(* 0 x)|))
 (13 13 (:REWRITE |(< (/ x) 0)|))
 (10 10
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (10 10
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (10 10 (:REWRITE REDUCE-INTEGERP-+))
 (10 10 (:REWRITE INTEGERP-MINUS-X))
 (10 10 (:META META-INTEGERP-CORRECT))
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
 (4 4 (:REWRITE |(< (/ x) y) with (< x 0)|))
 (4 4 (:REWRITE |(* 1 x)|))
 (2 2 (:REWRITE |(< 0 (* x y))|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (1 1
    (:REWRITE |(<= (/ x) y) with (< x 0)|))
 (1 1
    (:REWRITE |(<= (/ x) y) with (< 0 x)|))
 (1 1 (:REWRITE |(< 0 (/ x))|)))
(INIT_PDPT-MODIFY-LOOP)
(INIT_PDPT-MODIFY)
(|(paging-p (init_pdpt-modify s))|
 (188 36 (:REWRITE ACL2-NUMBERP-X))
 (163 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (162 4 (:REWRITE |(< (if a b c) x)|))
 (131 9 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (111 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (109 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (76 19 (:REWRITE RATIONALP-X))
 (36 36 (:REWRITE DEFAULT-PLUS-1))
 (27 27
     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (27 27 (:REWRITE NORMALIZE-ADDENDS))
 (24 5 (:REWRITE |(+ c (+ d x))|))
 (21 21 (:REWRITE REDUCE-INTEGERP-+))
 (21 21 (:REWRITE INTEGERP-MINUS-X))
 (21 21 (:META META-INTEGERP-CORRECT))
 (19 19 (:REWRITE REDUCE-RATIONALP-+))
 (19 19 (:REWRITE REDUCE-RATIONALP-*))
 (19 19 (:REWRITE RATIONALP-MINUS-X))
 (19 19 (:META META-RATIONALP-CORRECT))
 (16 4 (:REWRITE DEFAULT-TIMES-2))
 (16 4 (:REWRITE DEFAULT-TIMES-1))
 (15 13 (:REWRITE DEFAULT-LESS-THAN-1))
 (14 2 (:REWRITE DEFAULT-LOGIOR-2))
 (13 13 (:REWRITE THE-FLOOR-BELOW))
 (13 13 (:REWRITE THE-FLOOR-ABOVE))
 (13 13 (:REWRITE DEFAULT-LESS-THAN-2))
 (9 9
    (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (9 9
    (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (9 9
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (9 9 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (9 9 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (9 9
    (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (7 5
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (7 5 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (6 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 2
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 2
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (5 5 (:REWRITE SIMPLIFY-SUMS-<))
 (5 5 (:REWRITE REMOVE-STRICT-INEQUALITIES))
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
 (5 5 (:REWRITE |(< (/ x) (/ y))|))
 (5 5 (:REWRITE |(< (- x) c)|))
 (5 5 (:REWRITE |(< (- x) (- y))|))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (4
   4
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (4
  4
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (4 4 (:REWRITE |(< (+ c/d x) y)|))
 (4 4 (:REWRITE |(+ 0 x)|))
 (3 3 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (2 2
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (2 2
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (2 2
    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (2 2
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (2 2 (:REWRITE DEFAULT-LOGIOR-1))
 (2 2 (:REWRITE |(equal c (/ x))|))
 (2 2 (:REWRITE |(equal c (- x))|))
 (2 2 (:REWRITE |(equal (/ x) c)|))
 (2 2 (:REWRITE |(equal (/ x) (/ y))|))
 (2 2 (:REWRITE |(equal (- x) c)|))
 (2 2 (:REWRITE |(equal (- x) (- y))|))
 (2 2 (:REWRITE |(equal (+ (- c) x) y)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (* x y) 0)|)))
(|(va-to-pa addr (init_pdpt-modify s))|
 (188 36 (:REWRITE ACL2-NUMBERP-X))
 (163 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (162 4 (:REWRITE |(< (if a b c) x)|))
 (131 9 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (111 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (109 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (76 19 (:REWRITE RATIONALP-X))
 (38 38 (:TYPE-PRESCRIPTION VA-TO-PA))
 (36 36 (:REWRITE DEFAULT-PLUS-1))
 (27 27
     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (27 27 (:REWRITE NORMALIZE-ADDENDS))
 (24 5 (:REWRITE |(+ c (+ d x))|))
 (21 21 (:REWRITE REDUCE-INTEGERP-+))
 (21 21 (:REWRITE INTEGERP-MINUS-X))
 (21 21 (:META META-INTEGERP-CORRECT))
 (19 19 (:REWRITE REDUCE-RATIONALP-+))
 (19 19 (:REWRITE REDUCE-RATIONALP-*))
 (19 19 (:REWRITE RATIONALP-MINUS-X))
 (19 19 (:META META-RATIONALP-CORRECT))
 (16 4 (:REWRITE DEFAULT-TIMES-2))
 (16 4 (:REWRITE DEFAULT-TIMES-1))
 (15 13 (:REWRITE DEFAULT-LESS-THAN-1))
 (14 2 (:REWRITE DEFAULT-LOGIOR-2))
 (13 13 (:REWRITE THE-FLOOR-BELOW))
 (13 13 (:REWRITE THE-FLOOR-ABOVE))
 (13 13 (:REWRITE DEFAULT-LESS-THAN-2))
 (9 9
    (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (9 9
    (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (9 9
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (9 9 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (9 9 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (9 9
    (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (7 5
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (7 5 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (6 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 2
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 2
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (5 5 (:REWRITE SIMPLIFY-SUMS-<))
 (5 5 (:REWRITE REMOVE-STRICT-INEQUALITIES))
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
 (5 5 (:REWRITE |(< (/ x) (/ y))|))
 (5 5 (:REWRITE |(< (- x) c)|))
 (5 5 (:REWRITE |(< (- x) (- y))|))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (4
   4
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (4
  4
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (4 4 (:REWRITE |(< (+ c/d x) y)|))
 (4 4 (:REWRITE |(+ 0 x)|))
 (3 3 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (2 2
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (2 2
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (2 2
    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (2 2
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (2 2 (:REWRITE DEFAULT-LOGIOR-1))
 (2 2 (:REWRITE |(equal c (/ x))|))
 (2 2 (:REWRITE |(equal c (- x))|))
 (2 2 (:REWRITE |(equal (/ x) c)|))
 (2 2 (:REWRITE |(equal (/ x) (/ y))|))
 (2 2 (:REWRITE |(equal (- x) c)|))
 (2 2 (:REWRITE |(equal (- x) (- y))|))
 (2 2 (:REWRITE |(equal (+ (- c) x) y)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (* x y) 0)|)))
(|(good-32-address-p addr (init_pdpt-modify s))|
 (211 15
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (188 36 (:REWRITE ACL2-NUMBERP-X))
 (188 7 (:REWRITE |(n32p x)|))
 (163 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (162 4 (:REWRITE |(< (if a b c) x)|))
 (111 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (109 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (76 19 (:REWRITE RATIONALP-X))
 (46 46 (:REWRITE DEFAULT-PLUS-1))
 (32 7 (:REWRITE |(+ c (+ d x))|))
 (31 31
     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (31 31 (:REWRITE NORMALIZE-ADDENDS))
 (31 2
     (:REWRITE |(good-32-address-p addr st)|))
 (22 22 (:REWRITE REDUCE-INTEGERP-+))
 (22 22 (:REWRITE INTEGERP-MINUS-X))
 (22 22 (:META META-INTEGERP-CORRECT))
 (22 2 (:REWRITE |(+ y (+ x z))|))
 (21 19 (:REWRITE DEFAULT-LESS-THAN-1))
 (19 19 (:REWRITE THE-FLOOR-BELOW))
 (19 19 (:REWRITE THE-FLOOR-ABOVE))
 (19 19 (:REWRITE REDUCE-RATIONALP-+))
 (19 19 (:REWRITE REDUCE-RATIONALP-*))
 (19 19 (:REWRITE RATIONALP-MINUS-X))
 (19 19 (:REWRITE DEFAULT-LESS-THAN-2))
 (19 19 (:META META-RATIONALP-CORRECT))
 (16 4 (:REWRITE DEFAULT-TIMES-2))
 (16 4 (:REWRITE DEFAULT-TIMES-1))
 (15 15
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (15 15
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (14 2 (:REWRITE DEFAULT-LOGIOR-2))
 (11 9
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (11 9 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (9 9 (:REWRITE SIMPLIFY-SUMS-<))
 (9 9
    (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (9 9 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (9 9 (:REWRITE INTEGERP-<-CONSTANT))
 (9 9 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (9 9 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (9 9
    (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (9 9 (:REWRITE CONSTANT-<-INTEGERP))
 (9 9
    (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (9 9
    (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (9 9
    (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (9 9
    (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (9 9 (:REWRITE |(< c (- x))|))
 (9 9
    (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (9 9
    (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (9 9
    (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (9 9
    (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (9 9 (:REWRITE |(< (/ x) (/ y))|))
 (9 9 (:REWRITE |(< (- x) c)|))
 (9 9 (:REWRITE |(< (- x) (- y))|))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (8
   8
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (8
  8
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (6 6 (:REWRITE |(< (+ c/d x) y)|))
 (6 6 (:REWRITE |(+ 0 x)|))
 (6 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 2
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 2
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (3 3 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (2 2 (:TYPE-PRESCRIPTION N32P))
 (2 2
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (2 2
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (2 2
    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (2 2
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (2 2 (:REWRITE DEFAULT-LOGIOR-1))
 (2 2 (:REWRITE |(equal c (/ x))|))
 (2 2 (:REWRITE |(equal c (- x))|))
 (2 2 (:REWRITE |(equal (/ x) c)|))
 (2 2 (:REWRITE |(equal (/ x) (/ y))|))
 (2 2 (:REWRITE |(equal (- x) c)|))
 (2 2 (:REWRITE |(equal (- x) (- y))|))
 (2 2 (:REWRITE |(equal (+ (- c) x) y)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (* x y) 0)|)))
(|(G field (INIT_PDPT-MODIFY-loop-1 i s))|
     (301 53 (:REWRITE ACL2-NUMBERP-X))
     (124 31 (:REWRITE RATIONALP-X))
     (70 7
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (57 21 (:REWRITE DEFAULT-TIMES-2))
     (57 21 (:REWRITE DEFAULT-TIMES-1))
     (42 6 (:REWRITE DEFAULT-LOGIOR-2))
     (41 41
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (41 41 (:REWRITE NORMALIZE-ADDENDS))
     (41 41 (:REWRITE DEFAULT-PLUS-1))
     (37 37 (:REWRITE REDUCE-INTEGERP-+))
     (37 37 (:REWRITE INTEGERP-MINUS-X))
     (37 37 (:META META-INTEGERP-CORRECT))
     (31 31 (:REWRITE REDUCE-RATIONALP-+))
     (31 31 (:REWRITE REDUCE-RATIONALP-*))
     (31 31 (:REWRITE RATIONALP-MINUS-X))
     (31 31 (:META META-RATIONALP-CORRECT))
     (24 24
         (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
     (24 24 (:REWRITE INIT_PDTS-LOADED-THM-32))
     (24 24 (:REWRITE INIT_PDPT-LOADED-THM-32))
     (24 24
         (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
     (15 15
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (14 7
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (12 12 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
     (12 12 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
     (12 12 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
     (10 7 (:REWRITE SIMPLIFY-SUMS-EQUAL))
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
     (6 6 (:REWRITE DEFAULT-LOGIOR-1))
     (4 4 (:REWRITE ZP-OPEN))
     (3 3 (:REWRITE FOLD-CONSTS-IN-+))
     (3 3 (:REWRITE |(+ c (+ d x))|)))
(|(y86-p (init_pdpt-modify s))|
 (369 20
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (105 69 (:REWRITE DEFAULT-PLUS-2))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (92 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (69 69 (:REWRITE DEFAULT-PLUS-1))
 (60 4 (:REWRITE |(+ y (+ x z))|))
 (50 10 (:REWRITE |(+ c (+ d x))|))
 (46 46
     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (46 46 (:REWRITE NORMALIZE-ADDENDS))
 (39 21 (:REWRITE DEFAULT-LESS-THAN-1))
 (28
   28
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (28
  28
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (28 28
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (28 28
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (28 28
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (28 28
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (25 25
     (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (25 25 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (25 25 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (25 25
     (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (22 21 (:REWRITE DEFAULT-LESS-THAN-2))
 (21 21 (:REWRITE THE-FLOOR-BELOW))
 (21 21 (:REWRITE THE-FLOOR-ABOVE))
 (20 20
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (20 20
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (18 11
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (18 11 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (14 11
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (13 11 (:REWRITE SIMPLIFY-SUMS-<))
 (13 9 (:REWRITE |(+ 0 x)|))
 (12 12 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (12 12 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (12 12 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
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
 (11 1 (:REWRITE DISJOINT-4-ITEMS))
 (10 10 (:REWRITE |(< (+ c/d x) y)|))
 (8 4 (:REWRITE DEFAULT-TIMES-2))
 (8 4 (:REWRITE DEFAULT-TIMES-1))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (6 2 (:REWRITE DEFAULT-LOGIOR-2))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (4
  4
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2 (:REWRITE REDUCE-INTEGERP-+))
 (2 2
    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (2 2 (:REWRITE INTEGERP-MINUS-X))
 (2 2 (:REWRITE DEFAULT-LOGIOR-1))
 (2
  2
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (2
  2
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (2 2 (:META META-INTEGERP-CORRECT))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(|(memoryp (g :mem (init_pdpt-modify s)))|
 (369 20
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (105 69 (:REWRITE DEFAULT-PLUS-2))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (92 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (69 69 (:REWRITE DEFAULT-PLUS-1))
 (60 4 (:REWRITE |(+ y (+ x z))|))
 (50 10 (:REWRITE |(+ c (+ d x))|))
 (46 46
     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (46 46 (:REWRITE NORMALIZE-ADDENDS))
 (30 20 (:REWRITE DEFAULT-LESS-THAN-1))
 (25 25
     (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (25 25 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (25 25 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (25 25
     (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (21 20 (:REWRITE DEFAULT-LESS-THAN-2))
 (20 20 (:REWRITE THE-FLOOR-BELOW))
 (20 20 (:REWRITE THE-FLOOR-ABOVE))
 (20 20
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (20 20
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (18 11
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (18 11 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (14
   14
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (14
  14
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (14 14
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (14 14
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (14 14
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (14 14
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (14 11
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (13 11 (:REWRITE SIMPLIFY-SUMS-<))
 (13 9 (:REWRITE |(+ 0 x)|))
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
 (11 1 (:REWRITE DISJOINT-4-ITEMS))
 (10 10 (:REWRITE |(< (+ c/d x) y)|))
 (8 4 (:REWRITE DEFAULT-TIMES-2))
 (8 4 (:REWRITE DEFAULT-TIMES-1))
 (6 6
    (:REWRITE |(g field (w32 addr val st))|))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (6 2 (:REWRITE DEFAULT-LOGIOR-2))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (4
  4
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2 (:REWRITE REDUCE-INTEGERP-+))
 (2 2
    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (2 2 (:REWRITE INTEGERP-MINUS-X))
 (2 2 (:REWRITE DEFAULT-LOGIOR-1))
 (2
  2
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (2
  2
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (2 2 (:META META-INTEGERP-CORRECT))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1
    (:REWRITE |(G field (INIT_PDPT-MODIFY-loop-1 i s))|))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(|(good-state-p (init_pdpt-modify s))|
 (18740 18424 (:REWRITE DEFAULT-PLUS-2))
 (18424 18424 (:REWRITE DEFAULT-PLUS-1))
 (7481 7481
       (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (7481 7481 (:REWRITE NORMALIZE-ADDENDS))
 (3841 212
       (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (1301 27 (:REWRITE |(n32-to-i32 x) --- 2|))
 (1275 27 (:REWRITE |(n32-to-i32 x) --- 1|))
 (1256
   1256
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (1256
  1256
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (1256
      1256
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (1256
     1256
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (1256 1256
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (1256 1256
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (837
  837
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (837
  837
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (684 9 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (444 444
      (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (444 444
      (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (444 444
      (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (324 324
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (324 324 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (324 324 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (324 324
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (298 212 (:REWRITE DEFAULT-LESS-THAN-1))
 (221 212 (:REWRITE DEFAULT-LESS-THAN-2))
 (212 212 (:REWRITE THE-FLOOR-BELOW))
 (212 212 (:REWRITE THE-FLOOR-ABOVE))
 (212 212
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (212 212
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (174 115
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (174 115
      (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (146 115
      (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (133 115 (:REWRITE SIMPLIFY-SUMS-<))
 (115 115 (:REWRITE INTEGERP-<-CONSTANT))
 (115 115 (:REWRITE CONSTANT-<-INTEGERP))
 (115 115
      (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (115 115
      (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (115 115
      (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (115 115
      (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (115 115 (:REWRITE |(< c (- x))|))
 (115 115
      (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (115 115
      (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (115 115
      (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (115 115
      (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (115 115 (:REWRITE |(< (/ x) (/ y))|))
 (115 115 (:REWRITE |(< (- x) c)|))
 (115 115 (:REWRITE |(< (- x) (- y))|))
 (106 106 (:REWRITE |(< (+ c/d x) y)|))
 (99 9 (:REWRITE DISJOINT-4-ITEMS))
 (64 28 (:REWRITE DEFAULT-TIMES-2))
 (57 53 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (48 28 (:REWRITE DEFAULT-TIMES-1))
 (46 27 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (46 27
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (46 27
     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (35 35
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (30 10 (:REWRITE DEFAULT-LOGIOR-2))
 (27 27
     (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (27 27 (:REWRITE |(equal c (/ x))|))
 (27 27 (:REWRITE |(equal c (- x))|))
 (27 27 (:REWRITE |(equal (/ x) c)|))
 (27 27 (:REWRITE |(equal (/ x) (/ y))|))
 (27 27 (:REWRITE |(equal (- x) c)|))
 (27 27 (:REWRITE |(equal (- x) (- y))|))
 (19 19 (:REWRITE |(equal (+ (- c) x) y)|))
 (18 18
     (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (18 18 (:REWRITE |(< (* x y) 0)|))
 (10 10 (:REWRITE REDUCE-INTEGERP-+))
 (10 10 (:REWRITE INTEGERP-MINUS-X))
 (10 10 (:REWRITE DEFAULT-LOGIOR-1))
 (10 10 (:META META-INTEGERP-CORRECT))
 (9 9
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (9 9
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (9 9 (:REWRITE |(< (/ x) 0)|))
 (9 9 (:REWRITE |(< (+ (- c) x) y)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1 (:REWRITE O-INFP->NEQ-0)))
(|(g :cr0 (init_pdpt-modify s))|
 (369 20
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (338 5 (:REWRITE |(n32p x)|))
 (104 68 (:REWRITE DEFAULT-PLUS-2))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (92 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (68 68 (:REWRITE DEFAULT-PLUS-1))
 (60 4 (:REWRITE |(+ y (+ x z))|))
 (50 10 (:REWRITE |(+ c (+ d x))|))
 (45 45
     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (45 45 (:REWRITE NORMALIZE-ADDENDS))
 (30 20 (:REWRITE DEFAULT-LESS-THAN-1))
 (24 24
     (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (24 24 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (24 24 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (24 24
     (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (21 20 (:REWRITE DEFAULT-LESS-THAN-2))
 (20 20 (:REWRITE THE-FLOOR-BELOW))
 (20 20 (:REWRITE THE-FLOOR-ABOVE))
 (20 20
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (20 20
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (18 11
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (18 11 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (14 11
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (13 11 (:REWRITE SIMPLIFY-SUMS-<))
 (13 9 (:REWRITE |(+ 0 x)|))
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
 (11 1 (:REWRITE DISJOINT-4-ITEMS))
 (10 10 (:REWRITE |(< (+ c/d x) y)|))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (8
   8
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (8
  8
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (8 4 (:REWRITE DEFAULT-TIMES-2))
 (8 4 (:REWRITE DEFAULT-TIMES-1))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (6 2 (:REWRITE DEFAULT-LOGIOR-2))
 (6 1
    (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2 (:REWRITE REDUCE-INTEGERP-+))
 (2 2
    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (2 2 (:REWRITE INTEGERP-MINUS-X))
 (2 2 (:REWRITE DEFAULT-LOGIOR-1))
 (2 2 (:REWRITE |(subrangep x x)|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (2 2 (:META META-INTEGERP-CORRECT))
 (1 1 (:TYPE-PRESCRIPTION SUBRANGEP))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1
  1
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (1
  1
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (1
  1
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(|(g :eip (init_pdpt-modify s))|
 (369 20
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (338 5 (:REWRITE |(n32p x)|))
 (104 68 (:REWRITE DEFAULT-PLUS-2))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (92 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (68 68 (:REWRITE DEFAULT-PLUS-1))
 (60 4 (:REWRITE |(+ y (+ x z))|))
 (50 10 (:REWRITE |(+ c (+ d x))|))
 (45 45
     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (45 45 (:REWRITE NORMALIZE-ADDENDS))
 (30 20 (:REWRITE DEFAULT-LESS-THAN-1))
 (25 25
     (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (25 25 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (25 25 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (25 25
     (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (21 20 (:REWRITE DEFAULT-LESS-THAN-2))
 (20 20 (:REWRITE THE-FLOOR-BELOW))
 (20 20 (:REWRITE THE-FLOOR-ABOVE))
 (20 20
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (20 20
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (18 11
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (18 11 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (14 11
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (13 11 (:REWRITE SIMPLIFY-SUMS-<))
 (13 9 (:REWRITE |(+ 0 x)|))
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
 (11 1 (:REWRITE DISJOINT-4-ITEMS))
 (10 10 (:REWRITE |(< (+ c/d x) y)|))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (8
   8
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (8
  8
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (8 4 (:REWRITE DEFAULT-TIMES-2))
 (8 4 (:REWRITE DEFAULT-TIMES-1))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (6 2 (:REWRITE DEFAULT-LOGIOR-2))
 (6 1
    (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2 (:REWRITE REDUCE-INTEGERP-+))
 (2 2
    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (2 2 (:REWRITE INTEGERP-MINUS-X))
 (2 2 (:REWRITE DEFAULT-LOGIOR-1))
 (2 2 (:REWRITE |(subrangep x x)|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (2 2 (:META META-INTEGERP-CORRECT))
 (1 1 (:TYPE-PRESCRIPTION SUBRANGEP))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1
  1
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (1
  1
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (1
  1
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(|(g :ebp (init_pdpt-modify s))|
 (369 20
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (338 5 (:REWRITE |(n32p x)|))
 (104 68 (:REWRITE DEFAULT-PLUS-2))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (92 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (68 68 (:REWRITE DEFAULT-PLUS-1))
 (60 4 (:REWRITE |(+ y (+ x z))|))
 (50 10 (:REWRITE |(+ c (+ d x))|))
 (45 45
     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (45 45 (:REWRITE NORMALIZE-ADDENDS))
 (30 20 (:REWRITE DEFAULT-LESS-THAN-1))
 (24 24
     (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (24 24 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (24 24 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (24 24
     (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (21 20 (:REWRITE DEFAULT-LESS-THAN-2))
 (20 20 (:REWRITE THE-FLOOR-BELOW))
 (20 20 (:REWRITE THE-FLOOR-ABOVE))
 (20 20
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (20 20
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (18 11
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (18 11 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (14 11
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (13 11 (:REWRITE SIMPLIFY-SUMS-<))
 (13 9 (:REWRITE |(+ 0 x)|))
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
 (11 1 (:REWRITE DISJOINT-4-ITEMS))
 (10 10 (:REWRITE |(< (+ c/d x) y)|))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (8
   8
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (8
  8
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (8 4 (:REWRITE DEFAULT-TIMES-2))
 (8 4 (:REWRITE DEFAULT-TIMES-1))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (6 2 (:REWRITE DEFAULT-LOGIOR-2))
 (6 1
    (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2 (:REWRITE REDUCE-INTEGERP-+))
 (2 2
    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (2 2 (:REWRITE INTEGERP-MINUS-X))
 (2 2 (:REWRITE DEFAULT-LOGIOR-1))
 (2 2 (:REWRITE |(subrangep x x)|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (2 2 (:META META-INTEGERP-CORRECT))
 (1 1 (:TYPE-PRESCRIPTION SUBRANGEP))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1
  1
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (1
  1
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (1
  1
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(|(g :esp (init_pdpt-modify s))|
 (369 20
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (338 5 (:REWRITE |(n32p x)|))
 (105 69 (:REWRITE DEFAULT-PLUS-2))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (92 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (69 69 (:REWRITE DEFAULT-PLUS-1))
 (60 4 (:REWRITE |(+ y (+ x z))|))
 (50 10 (:REWRITE |(+ c (+ d x))|))
 (46 46
     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (46 46 (:REWRITE NORMALIZE-ADDENDS))
 (30 20 (:REWRITE DEFAULT-LESS-THAN-1))
 (24 24
     (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (24 24 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (24 24 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (24 24
     (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (21 20 (:REWRITE DEFAULT-LESS-THAN-2))
 (20 20 (:REWRITE THE-FLOOR-BELOW))
 (20 20 (:REWRITE THE-FLOOR-ABOVE))
 (20 20
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (20 20
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (18 11
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (18 11 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (14 11
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (13 11 (:REWRITE SIMPLIFY-SUMS-<))
 (13 9 (:REWRITE |(+ 0 x)|))
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
 (11 1 (:REWRITE DISJOINT-4-ITEMS))
 (10 10 (:REWRITE |(< (+ c/d x) y)|))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (8
   8
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (8
  8
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (8 4 (:REWRITE DEFAULT-TIMES-2))
 (8 4 (:REWRITE DEFAULT-TIMES-1))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (6 2 (:REWRITE DEFAULT-LOGIOR-2))
 (6 1
    (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2 (:REWRITE REDUCE-INTEGERP-+))
 (2 2
    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (2 2 (:REWRITE INTEGERP-MINUS-X))
 (2 2 (:REWRITE DEFAULT-LOGIOR-1))
 (2 2 (:REWRITE |(subrangep x x)|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (2 2 (:META META-INTEGERP-CORRECT))
 (1 1 (:TYPE-PRESCRIPTION SUBRANGEP))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1
  1
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (1
  1
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (1
  1
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(|(r32 addr (init_pdpt-modify s))|
 (408 22
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (310 274 (:REWRITE DEFAULT-PLUS-2))
 (274 274 (:REWRITE DEFAULT-PLUS-1))
 (120 120
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (120 120 (:REWRITE NORMALIZE-ADDENDS))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (92 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (55 55
     (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (55 55 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (55 55 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (55 55
     (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (36
   36
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (36
  36
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (36 36
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (36 36
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (36 36
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (36 36
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (32 22 (:REWRITE DEFAULT-LESS-THAN-1))
 (23 22 (:REWRITE DEFAULT-LESS-THAN-2))
 (22 22 (:REWRITE THE-FLOOR-BELOW))
 (22 22 (:REWRITE THE-FLOOR-ABOVE))
 (22 22
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (22 22
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (19 12
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (19 12 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (19 1 (:REWRITE DISJOINT-3-ITEMS))
 (16
  16
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (16
  16
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (15 15
     (:REWRITE |(g field (w32 addr val st))|))
 (15 12
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (14 12 (:REWRITE SIMPLIFY-SUMS-<))
 (12 12 (:REWRITE INTEGERP-<-CONSTANT))
 (12 12 (:REWRITE CONSTANT-<-INTEGERP))
 (12 12
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (12 12
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (12 12
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (12 12
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (12 12 (:REWRITE |(< c (- x))|))
 (12 12
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (12 12
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (12 12
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (12 12
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (12 12 (:REWRITE |(< (/ x) (/ y))|))
 (12 12 (:REWRITE |(< (- x) c)|))
 (12 12 (:REWRITE |(< (- x) (- y))|))
 (11 11 (:REWRITE |(< (+ c/d x) y)|))
 (11 1 (:REWRITE DISJOINT-4-ITEMS))
 (8 4 (:REWRITE DEFAULT-TIMES-2))
 (8 4 (:REWRITE DEFAULT-TIMES-1))
 (6 6
    (:REWRITE |(G field (INIT_PDPT-MODIFY-loop-1 i s))|))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (6 2 (:REWRITE DEFAULT-LOGIOR-2))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3 (:REWRITE REDUCE-INTEGERP-+))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3 (:REWRITE INTEGERP-MINUS-X))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (3 3 (:META META-INTEGERP-CORRECT))
 (2 2
    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (2 2 (:REWRITE DEFAULT-LOGIOR-1))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(|(r32 addr (init_pdpt-modify s)) --- written to 1|
 (610 459 (:REWRITE DEFAULT-PLUS-2))
 (531 459 (:REWRITE DEFAULT-PLUS-1))
 (371 22
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (211 211
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (211 211 (:REWRITE NORMALIZE-ADDENDS))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (92 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (61 61
     (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (61 61
     (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (60 60
     (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (60 60 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (60 60 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (60 60
     (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (49
   49
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (49
  49
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (49 49
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (49 49
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (49 49
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (49 49
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (32 22 (:REWRITE DEFAULT-LESS-THAN-1))
 (23 22 (:REWRITE DEFAULT-LESS-THAN-2))
 (22 22 (:REWRITE THE-FLOOR-BELOW))
 (22 22 (:REWRITE THE-FLOOR-ABOVE))
 (22 22
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (22 22
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (21 21 (:REWRITE FOLD-CONSTS-IN-+))
 (21 13 (:REWRITE DEFAULT-TIMES-2))
 (21 13 (:REWRITE DEFAULT-TIMES-1))
 (20 13
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (20 13 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (16 13
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (15 15
     (:REWRITE |(g field (w32 addr val st))|))
 (15
  15
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (15
  15
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (15 13 (:REWRITE SIMPLIFY-SUMS-<))
 (13 13 (:REWRITE INTEGERP-<-CONSTANT))
 (13 13 (:REWRITE CONSTANT-<-INTEGERP))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< c (- x))|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< (/ x) (/ y))|))
 (13 13 (:REWRITE |(< (- x) c)|))
 (13 13 (:REWRITE |(< (- x) (- y))|))
 (12 4 (:REWRITE DEFAULT-LOGIOR-2))
 (11 1 (:REWRITE DISJOINT-4-ITEMS))
 (10 10 (:REWRITE |(< (+ c/d x) y)|))
 (9 9
    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (8 8 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (8 8 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (8 8 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (7 7 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (6 6
    (:REWRITE |(G field (INIT_PDPT-MODIFY-loop-1 i s))|))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (5 5 (:REWRITE REDUCE-INTEGERP-+))
 (5 5 (:REWRITE INTEGERP-MINUS-X))
 (5 5 (:META META-INTEGERP-CORRECT))
 (4 4 (:REWRITE DEFAULT-LOGIOR-1))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (3 3 (:REWRITE |(< (* x y) 0)|))
 (2 2
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (2 2
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (2 2 (:REWRITE |(< (/ x) 0)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(|(r32 addr (init_pdpt-modify s)) --- written to 2|
 (709 520 (:REWRITE DEFAULT-PLUS-2))
 (616 520 (:REWRITE DEFAULT-PLUS-1))
 (371 22
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (230 230
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (230 230 (:REWRITE NORMALIZE-ADDENDS))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (92 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (55 55
     (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (55 55 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (55 55 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (55 55
     (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (50
   50
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (50
  50
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (50 50
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (50 50
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (50 50
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (50 50
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (46 46 (:REWRITE FOLD-CONSTS-IN-+))
 (32 22 (:REWRITE DEFAULT-LESS-THAN-1))
 (23 22 (:REWRITE DEFAULT-LESS-THAN-2))
 (22 22 (:REWRITE THE-FLOOR-BELOW))
 (22 22 (:REWRITE THE-FLOOR-ABOVE))
 (22 22
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (22 22
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (20 13
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (20 13 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (16 13
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (15 15
     (:REWRITE |(g field (w32 addr val st))|))
 (15 13 (:REWRITE SIMPLIFY-SUMS-<))
 (14
  14
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (14
  14
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (13 13 (:REWRITE INTEGERP-<-CONSTANT))
 (13 13 (:REWRITE CONSTANT-<-INTEGERP))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< c (- x))|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< (/ x) (/ y))|))
 (13 13 (:REWRITE |(< (- x) c)|))
 (13 13 (:REWRITE |(< (- x) (- y))|))
 (11 7 (:REWRITE DEFAULT-TIMES-2))
 (11 7 (:REWRITE DEFAULT-TIMES-1))
 (11 1 (:REWRITE DISJOINT-4-ITEMS))
 (10 10 (:REWRITE |(< (+ c/d x) y)|))
 (7 7 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (6 6
    (:REWRITE |(G field (INIT_PDPT-MODIFY-loop-1 i s))|))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (6 2 (:REWRITE DEFAULT-LOGIOR-2))
 (5 5
    (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3 (:REWRITE REDUCE-INTEGERP-+))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3 (:REWRITE INTEGERP-MINUS-X))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (3 3 (:REWRITE |(< (* x y) 0)|))
 (3 3 (:META META-INTEGERP-CORRECT))
 (2 2
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (2 2
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (2 2 (:REWRITE DEFAULT-LOGIOR-1))
 (2 2 (:REWRITE |(< (/ x) 0)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(INIT_PDPT-ASSERTION)
($$$INSUB)
($$$PRESUB)
($$$MODIFYSUB)
($$$NO-MAIN-CUTPOINT-IN-SUB)
($$$IN-SUB-IMPLIES-IN-MAIN)
($$$PRESUB-IMPLIES-INSUB)
($$$STEPS-TO-EXITPOINT-SUB-TAIL)
(|$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1-defpun-test|)
(|$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1-defpun-base|)
(|$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1-step|)
(|$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1-defpun-stn|)
(|$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1-defpun-fn|
     (1 1 (:REWRITE DEFAULT-<-2))
     (1 1 (:REWRITE DEFAULT-<-1)))
(|$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1|
 (1
   1
   (:TYPE-PRESCRIPTION |$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1-defpun-stn|)))
(|$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1-DEF|)
($$$STEPS-TO-EXITPOINT-SUB-TAIL)
($$$STEPS-TO-EXITPOINT-SUB-TAIL-DEF (4 4 (:REWRITE DEFAULT-CAR))
                                    (2 2 (:REWRITE DEFAULT-CDR)))
($$$STEPS-TO-EXITPOINT-SUB-TAIL$DEF)
($$$STEPS-TO-EXITPOINT-SUB (8 2 (:TYPE-PRESCRIPTION RETURN-LAST))
                           (2 2
                              (:TYPE-PRESCRIPTION THROW-NONEXEC-ERROR)))
($$$NEXT-EXITPOINT-SUB)
($$$EXISTS-EXITPOINT-SUB)
($$$EXISTS-EXITPOINT-SUB-SUFF)
($$$CORRECTNESS-OF-SUB)
($$$NEXT-CUTPOINT-MAIN)
(|$$$NEXT-CUTPOINT-MAIN-arity-1-defpun-test|)
(|$$$NEXT-CUTPOINT-MAIN-arity-1-defpun-base|)
(|$$$NEXT-CUTPOINT-MAIN-arity-1-step|)
(|$$$NEXT-CUTPOINT-MAIN-arity-1-defpun-stn|)
(|$$$NEXT-CUTPOINT-MAIN-arity-1-defpun-fn| (4 4 (:REWRITE DEFAULT-<-2))
                                           (4 4 (:REWRITE DEFAULT-<-1))
                                           (1 1 (:REWRITE ZP-OPEN))
                                           (1 1 (:REWRITE DEFAULT-+-2))
                                           (1 1 (:REWRITE DEFAULT-+-1)))
(|$$$NEXT-CUTPOINT-MAIN-arity-1|
     (1 1
        (:TYPE-PRESCRIPTION |$$$NEXT-CUTPOINT-MAIN-arity-1-defpun-stn|)))
(|$$$NEXT-CUTPOINT-MAIN-arity-1-DEF|)
($$$NEXT-CUTPOINT-MAIN)
($$$NEXT-CUTPOINT-MAIN-DEF)
($$$NEXT-CUTPOINT-MAIN$DEF)
($$$DEFP-SYMSIM-THEOREM)
($$$PRE-IMPLIES-ASSERTION
 (238 2 (:DEFINITION BINARY-LOGAND))
 (198 2 (:DEFINITION FLOOR))
 (184 1 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (128 79 (:REWRITE DEFAULT-+-2))
 (104 2
      (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (97 79 (:REWRITE DEFAULT-+-1))
 (41 20 (:REWRITE DEFAULT-<-1))
 (31 31
     (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (31 31 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (31 31 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (31 31
     (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (28 2 (:REWRITE COMMUTATIVITY-OF-*))
 (27 20 (:REWRITE DEFAULT-<-2))
 (26 10 (:REWRITE DEFAULT-UNARY-MINUS))
 (19
  19
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (18 8 (:REWRITE DEFAULT-*-2))
 (18 2 (:REWRITE DISTRIBUTIVITY))
 (18 2 (:DEFINITION NFIX))
 (12 8 (:REWRITE DEFAULT-*-1))
 (11 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (11 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (8 8
    (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (7
  7
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (7
  7
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (6 2 (:REWRITE DEFAULT-NUMERATOR))
 (6 2 (:REWRITE DEFAULT-DENOMINATOR))
 (4 1 (:REWRITE FOLD-CONSTS-IN-+))
 (1 1 (:REWRITE O-INFP->NEQ-0)))
($$$ASSERTION-MAIN-IMPLIES-POST
 (11849 41 (:DEFINITION BINARY-LOGAND))
 (9963 41 (:DEFINITION FLOOR))
 (8043 20
       (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (6724 82
       (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (2914 1206 (:REWRITE DEFAULT-+-2))
 (2085 1206 (:REWRITE DEFAULT-+-1))
 (1722 82 (:DEFINITION NFIX))
 (1128 328 (:REWRITE DEFAULT-<-1))
 (1066 246 (:REWRITE DEFAULT-UNARY-MINUS))
 (858 328 (:REWRITE DEFAULT-<-2))
 (820 41 (:REWRITE ZIP-OPEN))
 (820 41 (:REWRITE COMMUTATIVITY-OF-*))
 (463 176 (:REWRITE DEFAULT-*-2))
 (298 49 (:REWRITE O-INFP->NEQ-0))
 (287 41 (:REWRITE DEFAULT-NUMERATOR))
 (287 41 (:REWRITE DEFAULT-DENOMINATOR))
 (285 15 (:REWRITE |(n32p x)|))
 (205 205
      (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (205 205
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (205 205 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (205 205 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (205 205
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (185 49 (:REWRITE |(n32-to-i32 x) --- 2|))
 (185 49 (:REWRITE |(n32-to-i32 x) --- 1|))
 (176 176 (:REWRITE DEFAULT-*-1))
 (85 5
     (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- not paging|))
 (75 10
     (:REWRITE |(good-32-address-p addr st)|))
 (68 68
     (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (68 68
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (54 18
     (:LINEAR |(n32p (r32 addr (g :mem st)))|))
 (52 52
     (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (20 20
     (:TYPE-PRESCRIPTION GOOD-32-ADDRESS-P))
 (20 12
     (:REWRITE |(paging-p (w32 addr val st))|))
 (20 5
     (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- paging|))
 (18 3 (:REWRITE DISJOINT-4-ITEMS))
 (8 4
    (:REWRITE |(paging-p (init_pdpt-modify-loop-1 loop-counter s))|))
 (4 1 (:REWRITE ZP-OPEN))
 (3 3
    (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (3
  3
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (3
  3
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (2 2 (:TYPE-PRESCRIPTION N32P)))
($$$ASSERTION-IMPLIES-CUTPOINT
 (1445 5 (:DEFINITION BINARY-LOGAND))
 (1239 2 (:DEFINITION INIT_PDPT-MODIFY-LOOP-1))
 (1215 5 (:DEFINITION FLOOR))
 (820 10
      (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (590 258 (:REWRITE DEFAULT-+-2))
 (381 258 (:REWRITE DEFAULT-+-1))
 (285 15 (:REWRITE |(n32p x)|))
 (210 10 (:DEFINITION NFIX))
 (204 68 (:REWRITE DEFAULT-<-1))
 (164 68 (:REWRITE DEFAULT-<-2))
 (130 30 (:REWRITE DEFAULT-UNARY-MINUS))
 (100 5 (:REWRITE ZIP-OPEN))
 (100 5 (:REWRITE COMMUTATIVITY-OF-*))
 (67 32 (:REWRITE DEFAULT-*-2))
 (54 18
     (:LINEAR |(n32p (r32 addr (g :mem st)))|))
 (45 1
     (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- not paging|))
 (43 43
     (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (43 43 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (43 43 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (43 43
     (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (43 2
     (:REWRITE |(good-32-address-p addr st)|))
 (40 7 (:REWRITE O-INFP->NEQ-0))
 (35 5 (:REWRITE DEFAULT-NUMERATOR))
 (35 5 (:REWRITE DEFAULT-DENOMINATOR))
 (34 34
     (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (32 32 (:REWRITE DEFAULT-*-1))
 (25 25
     (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (18 3 (:REWRITE DISJOINT-4-ITEMS))
 (11 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (11 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (4 4
    (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (4 4
    (:TYPE-PRESCRIPTION GOOD-32-ADDRESS-P))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
 (4 1 (:REWRITE ZP-OPEN))
 (4 1
    (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- paging|))
 (3 3
    (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (3
  3
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (3
  3
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (2 2 (:TYPE-PRESCRIPTION N32P)))
($$$EXISTS-NEXT-CUTPOINT)
($$$EXISTS-NEXT-CUTPOINT-SUFF)
(SIMULATION-DEFAULT-HINT (5 5 (:TYPE-PRESCRIPTION LAST)))
(SIMULATE-MAIN
 (48556 37707 (:REWRITE DEFAULT-PLUS-1))
 (22298 1498
        (:REWRITE CREATE_NESTED_PT-LOADED-THM-08))
 (21667 21667
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (18629 18629
        (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
 (18629 18629
        (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
 (18629 18629
        (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
 (17790 3558 (:TYPE-PRESCRIPTION MOD-ZERO . 2))
 (17790 3558 (:TYPE-PRESCRIPTION MOD-ZERO . 1))
 (17790 3558
        (:TYPE-PRESCRIPTION MOD-POSITIVE . 2))
 (17790 3558
        (:TYPE-PRESCRIPTION MOD-NEGATIVE . 2))
 (6247 994
       (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (5796 2708
       (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (5584 2708
       (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (5375 76 (:REWRITE MOD-X-Y-=-X-Y . 1))
 (5306 2840 (:REWRITE DEFAULT-TIMES-2))
 (5263 4071 (:REWRITE DEFAULT-LESS-THAN-2))
 (4804 346 (:REWRITE |(* x (+ y z))|))
 (4375 994
       (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (4270 4070
       (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (4071 4071 (:REWRITE THE-FLOOR-BELOW))
 (4071 4071 (:REWRITE THE-FLOOR-ABOVE))
 (4066 4066
       (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (3639 76 (:REWRITE MOD-ZERO . 1))
 (3558 3558 (:TYPE-PRESCRIPTION MOD-ZERO . 3))
 (3558 3558
       (:TYPE-PRESCRIPTION MOD-POSITIVE . 1))
 (3558 3558
       (:TYPE-PRESCRIPTION MOD-NONPOSITIVE))
 (3558 3558
       (:TYPE-PRESCRIPTION MOD-NEGATIVE . 1))
 (3558 3558
       (:TYPE-PRESCRIPTION INTEGERP-MOD-2))
 (3521 84 (:LINEAR MOD-BOUNDS-3))
 (3368 88 (:REWRITE MOD-ZERO . 3))
 (3182 2840 (:REWRITE DEFAULT-TIMES-1))
 (3115 1072
       (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (2878 106 (:REWRITE DEFAULT-MOD-RATIO))
 (2873 737 (:REWRITE ACL2-NUMBERP-X))
 (2785 2709
       (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (2772 1400 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (2738
   2738
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (2738
  2738
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (2738
      2738
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (2738
     2738
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (2738 2738
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (2738 2738
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (2734 1352
       (:REWRITE SEC_NOT_PRESENT-LOADED-THM-08))
 (2734 1352 (:REWRITE INIT_PDTS-LOADED-THM-08))
 (2709 2709 (:REWRITE INTEGERP-<-CONSTANT))
 (2709 2709 (:REWRITE CONSTANT-<-INTEGERP))
 (2709 2709
       (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (2709 2709
       (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (2709 2709
       (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (2709 2709
       (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (2709 2709 (:REWRITE |(< c (- x))|))
 (2709 2709
       (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (2709 2709
       (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (2709 2709
       (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (2709 2709 (:REWRITE |(< (/ x) (/ y))|))
 (2709 2709 (:REWRITE |(< (- x) c)|))
 (2709 2709 (:REWRITE |(< (- x) (- y))|))
 (2583 76 (:REWRITE O-INFP->NEQ-0))
 (2564 234 (:REWRITE DISJOINT-4-ITEMS))
 (2470 2470
       (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (2006 2006 (:REWRITE |(< (+ c/d x) y)|))
 (2004 500 (:REWRITE DEFAULT-LOGIOR-2))
 (1935 1528
       (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (1830 936
       (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (1324 28 (:LINEAR LOGIOR-BOUNDS-NEG . 1))
 (1072 1072
       (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (1068 267 (:REWRITE RATIONALP-X))
 (1050 28 (:LINEAR LOGIOR-BOUNDS-POS . 2))
 (1006 500 (:REWRITE DEFAULT-LOGIOR-1))
 (1006 168 (:LINEAR MOD-BOUNDS-2))
 (994 994
      (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (994 994 (:REWRITE |(equal c (/ x))|))
 (994 994 (:REWRITE |(equal c (- x))|))
 (994 994 (:REWRITE |(equal (/ x) c)|))
 (994 994 (:REWRITE |(equal (/ x) (/ y))|))
 (994 994 (:REWRITE |(equal (- x) c)|))
 (994 994 (:REWRITE |(equal (- x) (- y))|))
 (966 28 (:LINEAR LOGIOR-BOUNDS-POS . 1))
 (936 936
      (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (936 936
      (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (936 936
      (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (704 88 (:REWRITE MOD-X-Y-=-X . 4))
 (649 649 (:REWRITE |(< (+ (- c) x) y)|))
 (618 106 (:REWRITE MOD-X-Y-=-X-Y . 3))
 (616 88 (:REWRITE MOD-ZERO . 4))
 (616 88 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (595 85 (:REWRITE MOD-X-Y-=-X . 2))
 (595 85 (:REWRITE |(mod (+ x (mod a b)) y)|))
 (595 85
      (:REWRITE |(mod (+ x (- (mod a b))) y)|))
 (530 76 (:REWRITE MOD-ZERO . 2))
 (530 76 (:REWRITE MOD-X-Y-=-X+Y . 1))
 (528 88 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (511 511 (:REWRITE REDUCE-INTEGERP-+))
 (511 511 (:REWRITE INTEGERP-MINUS-X))
 (511 511 (:META META-INTEGERP-CORRECT))
 (510 85
      (:REWRITE MOD-CANCEL-*-REWRITING-GOAL-LITERAL))
 (510 85
      (:REWRITE |(mod (+ x y) z) where (<= z 0)| . 1))
 (510 85
      (:REWRITE |(mod (* x (/ y)) z) rewriting-goal-literal|))
 (480 85 (:REWRITE MOD-CANCEL-*-CONST))
 (473 473 (:REWRITE FOLD-CONSTS-IN-+))
 (464 464 (:REWRITE |(subrangep x x)|))
 (457 457 (:REWRITE |(< x (+ c/d y))|))
 (380 190 (:REWRITE DEFAULT-MINUS))
 (297 297 (:REWRITE |(< y (+ (- c) x))|))
 (282 282
      (:TYPE-PRESCRIPTION |(< 0 (logior x y))| . 1))
 (282 282
      (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (282 282
      (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (267 267 (:REWRITE REDUCE-RATIONALP-+))
 (267 267 (:REWRITE REDUCE-RATIONALP-*))
 (267 267 (:REWRITE RATIONALP-MINUS-X))
 (267 267 (:META META-RATIONALP-CORRECT))
 (240 240
      (:REWRITE INTEGERP-+-REDUCE-CONSTANT))
 (218 166
      (:TYPE-PRESCRIPTION N32-TO-I32-TYPE))
 (194 106 (:REWRITE DEFAULT-MOD-1))
 (168 28 (:LINEAR LOGIOR-BOUNDS-NEG . 2))
 (151 76
      (:REWRITE |(equal (mod (+ x y) z) x)|))
 (106 106 (:REWRITE DEFAULT-MOD-2))
 (85 85
     (:REWRITE MOD-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
 (85 85 (:REWRITE |(mod x (- y))| . 3))
 (85 85 (:REWRITE |(mod x (- y))| . 2))
 (85 85 (:REWRITE |(mod x (- y))| . 1))
 (85 85
     (:REWRITE |(mod x (* y (/ z))) rewriting-goal-literal|))
 (85 85
     (:REWRITE |(mod x (* y (/ z))) not rewriting-goal-literal|))
 (85 85 (:REWRITE |(mod (- x) y)| . 3))
 (85 85 (:REWRITE |(mod (- x) y)| . 2))
 (85 85 (:REWRITE |(mod (- x) y)| . 1))
 (85 85
     (:REWRITE |(mod (+ x y) z) where (<= z 0)| . 3))
 (85 85
     (:REWRITE |(mod (+ x y) z) where (<= z 0)| . 2))
 (85 85
     (:REWRITE |(mod (* x (/ y)) z) not rewriting-goal-literal|))
 (80 8 (:REWRITE DEFAULT-FLOOR-RATIO))
 (76 76
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (56 4 (:REWRITE |(* y (* x z))|))
 (46 46 (:REWRITE |(< (* x y) 0)|))
 (39 38 (:REWRITE DEFAULT-LOGAND-2))
 (39 38 (:REWRITE DEFAULT-LOGAND-1))
 (29 29
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (29 29
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (29 29 (:REWRITE |(< 0 (/ x))|))
 (29 29 (:REWRITE |(< 0 (* x y))|))
 (16 8 (:REWRITE DEFAULT-FLOOR-1))
 (8 8 (:REWRITE DEFAULT-FLOOR-2))
 (8 4 (:REWRITE |(* a (/ a) b)|))
 (4 4 (:TYPE-PRESCRIPTION ABS))
 (4 1
    (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- paging|))
 (1 1 (:TYPE-PRESCRIPTION N32-TO-I32)))
(ASSERTION-INVARIANT-DEFAULT-HINT-1)
(ASSERTION-INVARIANT-DEFAULT-HINT)
($$$ASSERTION-INVARIANT-OVER-CUTPOINTS
 (304393 238605 (:REWRITE DEFAULT-PLUS-1))
 (107612 107612
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (68648 2325 (:REWRITE |(n32-to-i32 x) --- 2|))
 (21995
   21995
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (21995
  21995
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (21995
      21995
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (21995
     21995
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (21995 21995
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (21995 21995
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (19632 14452 (:REWRITE DEFAULT-LESS-THAN-2))
 (19257 179
        (:REWRITE |(r32 addr1 (w32 addr2 val st)) --- paging|))
 (19246 9563
        (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (19244 9563
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (18846 9792 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (14452 14452 (:REWRITE THE-FLOOR-BELOW))
 (14452 14452 (:REWRITE THE-FLOOR-ABOVE))
 (14426 14426
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (14426 14426
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (12214 84 (:REWRITE DISJOINT-3-ITEMS))
 (9608 9608 (:REWRITE INTEGERP-<-CONSTANT))
 (9608 9608 (:REWRITE CONSTANT-<-INTEGERP))
 (9608 9608
       (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (9608 9608
       (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (9608 9608
       (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (9608 9608
       (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (9608 9608 (:REWRITE |(< c (- x))|))
 (9608 9608
       (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (9608 9608
       (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (9608 9608
       (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (9608 9608
       (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (9608 9608 (:REWRITE |(< (/ x) (/ y))|))
 (9608 9608 (:REWRITE |(< (- x) c)|))
 (9608 9608 (:REWRITE |(< (- x) (- y))|))
 (8663 8663 (:REWRITE |(< (+ c/d x) y)|))
 (8501 8501 (:REWRITE DEFAULT-TIMES-2))
 (8501 8501 (:REWRITE DEFAULT-TIMES-1))
 (7767 1303 (:REWRITE ACL2-NUMBERP-X))
 (6726 6726
       (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (6469 6469 (:REWRITE FOLD-CONSTS-IN-+))
 (6073 1801
       (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (4473 1801
       (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (4044 1340 (:REWRITE DEFAULT-LOGIOR-2))
 (3845 3845 (:REWRITE |(< (+ (- c) x) y)|))
 (3808 112 (:REWRITE ZP-OPEN))
 (3232 808 (:REWRITE RATIONALP-X))
 (3169 3169 (:REWRITE |(< x (+ c/d y))|))
 (2248 2248
       (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (2150 1340 (:REWRITE DEFAULT-LOGIOR-1))
 (2034 2034 (:REWRITE |(< y (+ (- c) x))|))
 (1801 1801
       (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (1801 1801 (:REWRITE |(equal c (/ x))|))
 (1801 1801 (:REWRITE |(equal c (- x))|))
 (1801 1801 (:REWRITE |(equal (/ x) c)|))
 (1801 1801 (:REWRITE |(equal (/ x) (/ y))|))
 (1801 1801 (:REWRITE |(equal (- x) c)|))
 (1801 1801 (:REWRITE |(equal (- x) (- y))|))
 (1206 327
       (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- paging|))
 (1090 218 (:REWRITE BUBBLE-DOWN-+-MATCH-3))
 (872 218 (:REWRITE |(+ (* c x) (* d x))|))
 (842 842 (:REWRITE REDUCE-INTEGERP-+))
 (842 842 (:REWRITE INTEGERP-MINUS-X))
 (842 842 (:META META-INTEGERP-CORRECT))
 (808 808 (:REWRITE REDUCE-RATIONALP-+))
 (808 808 (:REWRITE REDUCE-RATIONALP-*))
 (808 808 (:REWRITE RATIONALP-MINUS-X))
 (808 808 (:META META-RATIONALP-CORRECT))
 (700 700
      (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (700 700
      (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (568 4
      (:REWRITE |(r32 addr (w32 addr val st)) --- paging|))
 (559 559
      (:TYPE-PRESCRIPTION N32-TO-I32-TYPE))
 (486 12 (:REWRITE |(< (if a b c) x)|))
 (247 116 (:REWRITE O-INFP->NEQ-0))
 (244 244 (:REWRITE |(< (* x y) 0)|))
 (218 218
      (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (218 218
      (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (218 218 (:REWRITE |(< 0 (/ x))|))
 (218 218 (:REWRITE |(< 0 (* x y))|))
 (218 218 (:REWRITE |(* 0 x)|))
 (116 116
      (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (3 3 (:TYPE-PRESCRIPTION N32-TO-I32)))
(EXITSTEPS-TAIL)
(|EXITSTEPS-TAIL-arity-1-defpun-test|)
(|EXITSTEPS-TAIL-arity-1-defpun-base|)
(|EXITSTEPS-TAIL-arity-1-step|)
(|EXITSTEPS-TAIL-arity-1-defpun-stn|)
(|EXITSTEPS-TAIL-arity-1-defpun-fn| (4 4 (:REWRITE DEFAULT-<-2))
                                    (4 4 (:REWRITE DEFAULT-<-1))
                                    (1 1 (:REWRITE ZP-OPEN))
                                    (1 1 (:REWRITE DEFAULT-+-2))
                                    (1 1 (:REWRITE DEFAULT-+-1)))
(|EXITSTEPS-TAIL-arity-1|
     (1 1
        (:TYPE-PRESCRIPTION |EXITSTEPS-TAIL-arity-1-defpun-stn|)))
(|EXITSTEPS-TAIL-arity-1-DEF|)
(EXITSTEPS-TAIL)
(EXITSTEPS-TAIL-DEF (6 6 (:REWRITE DEFAULT-CAR))
                    (4 2 (:REWRITE DEFAULT-+-2))
                    (3 3 (:REWRITE DEFAULT-CDR))
                    (2 2
                       (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
                    (2 2 (:REWRITE DEFAULT-+-1)))
(EXITSTEPS-TAIL$DEF)
(EXITSTEPS)
(EXISTS-NEXT-EXITPOINT)
(EXISTS-NEXT-EXITPOINT-SUFF)
(NEXT-EXITPOINT)
(INIT_PDPT-CORRECT)
(IN-INIT_PDTS)
(INIT_PDTS-CUTPOINT-P)
(INIT_PDTS-PRE)
(INIT_PDTS-OUTER-LOOP-PRE)
(INIT_PDTS-INNER-LOOP-PRE)
(INIT_PDTS-MODIFY-INNER-LOOP-1)
(|(paging-p (init_pdts-modify-inner-loop-1 i j s))|
     (438 6 (:DEFINITION BINARY-LOGAND))
     (342 6 (:DEFINITION FLOOR))
     (296 152 (:REWRITE DEFAULT-+-2))
     (242 152 (:REWRITE DEFAULT-+-1))
     (192 12
          (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (138 60
          (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
     (75 63 (:REWRITE DEFAULT-*-2))
     (69 63 (:REWRITE DEFAULT-*-1))
     (60 60 (:TYPE-PRESCRIPTION R32))
     (60 60 (:TYPE-PRESCRIPTION MEMORYP))
     (48 36 (:REWRITE DEFAULT-UNARY-MINUS))
     (36 12 (:DEFINITION NFIX))
     (30 30
         (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (30 30 (:REWRITE DEFAULT-<-2))
     (30 30 (:REWRITE DEFAULT-<-1))
     (30 6 (:REWRITE DISTRIBUTIVITY))
     (24 24
         (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
     (24 24 (:REWRITE INIT_PDTS-LOADED-THM-32))
     (24 24 (:REWRITE INIT_PDPT-LOADED-THM-32))
     (24 24
         (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
     (18 18
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (18 6 (:REWRITE UNICITY-OF-0))
     (12 6 (:REWRITE ZIP-OPEN))
     (12 6 (:DEFINITION FIX))
     (6 6 (:REWRITE O-INFP->NEQ-0))
     (6 6 (:REWRITE DEFAULT-NUMERATOR))
     (6 6 (:REWRITE DEFAULT-DENOMINATOR))
     (4 4 (:REWRITE ZP-OPEN))
     (3 3 (:REWRITE FOLD-CONSTS-IN-+)))
(|(va-to-pa addr (init_pdts-modify-inner-loop-1 i j s))|
     (366 1
          (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
     (188 2 (:DEFINITION BINARY-LOGIOR))
     (146 2 (:DEFINITION BINARY-LOGAND))
     (114 2 (:DEFINITION FLOOR))
     (99 51 (:REWRITE DEFAULT-+-2))
     (93 19 (:REWRITE COMMUTATIVITY-OF-+))
     (81 51 (:REWRITE DEFAULT-+-1))
     (64 4
         (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (46 20
         (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
     (40 4 (:DEFINITION LOGNOT))
     (38 38 (:TYPE-PRESCRIPTION VA-TO-PA))
     (25 21 (:REWRITE DEFAULT-*-2))
     (23 21 (:REWRITE DEFAULT-*-1))
     (22 4 (:REWRITE COMMUTATIVITY-OF-*))
     (20 20 (:TYPE-PRESCRIPTION R32))
     (20 20 (:TYPE-PRESCRIPTION MEMORYP))
     (16 16 (:TYPE-PRESCRIPTION BINARY-LOGAND))
     (16 12 (:REWRITE DEFAULT-UNARY-MINUS))
     (12 4 (:DEFINITION NFIX))
     (10 10
         (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (10 10 (:REWRITE DEFAULT-<-2))
     (10 10 (:REWRITE DEFAULT-<-1))
     (10 8 (:DEFINITION IFIX))
     (10 2 (:REWRITE DISTRIBUTIVITY))
     (8 8
        (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
     (8 8 (:REWRITE INIT_PDTS-LOADED-THM-32))
     (8 8 (:REWRITE INIT_PDPT-LOADED-THM-32))
     (8 8
        (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
     (6 6
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (6 2 (:REWRITE UNICITY-OF-0))
     (4 2 (:REWRITE ZIP-OPEN))
     (4 2 (:DEFINITION FIX))
     (2 2 (:REWRITE O-INFP->NEQ-0))
     (2 2 (:REWRITE DEFAULT-NUMERATOR))
     (2 2 (:REWRITE DEFAULT-DENOMINATOR))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1 (:REWRITE FOLD-CONSTS-IN-+)))
(|(good-32-address-p addr (init_pdts-modify-inner-loop-1 i j s))|
     (366 1
          (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
     (188 2 (:DEFINITION BINARY-LOGIOR))
     (146 2 (:DEFINITION BINARY-LOGAND))
     (114 2 (:DEFINITION FLOOR))
     (101 53 (:REWRITE DEFAULT-+-2))
     (93 19 (:REWRITE COMMUTATIVITY-OF-+))
     (83 53 (:REWRITE DEFAULT-+-1))
     (64 4
         (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (46 20
         (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
     (40 4 (:DEFINITION LOGNOT))
     (25 21 (:REWRITE DEFAULT-*-2))
     (23 21 (:REWRITE DEFAULT-*-1))
     (23 7 (:REWRITE |(n32p x)|))
     (22 4 (:REWRITE COMMUTATIVITY-OF-*))
     (20 20 (:TYPE-PRESCRIPTION R32))
     (20 20 (:TYPE-PRESCRIPTION MEMORYP))
     (16 16 (:TYPE-PRESCRIPTION BINARY-LOGAND))
     (16 12 (:REWRITE DEFAULT-UNARY-MINUS))
     (14 14 (:REWRITE DEFAULT-<-2))
     (14 14 (:REWRITE DEFAULT-<-1))
     (12 4 (:DEFINITION NFIX))
     (10 10
         (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (10 8 (:DEFINITION IFIX))
     (10 2 (:REWRITE DISTRIBUTIVITY))
     (8 8
        (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
     (8 8 (:REWRITE INIT_PDTS-LOADED-THM-32))
     (8 8 (:REWRITE INIT_PDPT-LOADED-THM-32))
     (8 8
        (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
     (8 2
        (:REWRITE |(good-32-address-p addr st)|))
     (6 6
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (6 2 (:REWRITE UNICITY-OF-0))
     (4 4
        (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
     (4 4
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE))
     (4 2 (:REWRITE ZIP-OPEN))
     (4 2 (:DEFINITION FIX))
     (2 2 (:TYPE-PRESCRIPTION N32P))
     (2 2 (:REWRITE O-INFP->NEQ-0))
     (2 2 (:REWRITE DEFAULT-NUMERATOR))
     (2 2 (:REWRITE DEFAULT-DENOMINATOR))
     (2 1
        (:REWRITE |(paging-p (init_pdts-modify-inner-loop-1 i j s))|))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1 (:REWRITE FOLD-CONSTS-IN-+)))
(|(G field (INIT_PDTS-MODIFY-INNER-LOOP-1 i j s))|
     (469 77 (:REWRITE ACL2-NUMBERP-X))
     (266 104 (:REWRITE DEFAULT-PLUS-1))
     (196 49 (:REWRITE RATIONALP-X))
     (70 7
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (61 61 (:REWRITE REDUCE-INTEGERP-+))
     (61 61 (:REWRITE INTEGERP-MINUS-X))
     (61 61 (:META META-INTEGERP-CORRECT))
     (49 49 (:REWRITE REDUCE-RATIONALP-+))
     (49 49 (:REWRITE REDUCE-RATIONALP-*))
     (49 49 (:REWRITE RATIONALP-MINUS-X))
     (49 49 (:META META-RATIONALP-CORRECT))
     (41 41
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (41 41 (:REWRITE NORMALIZE-ADDENDS))
     (33 33
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (24 24
         (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
     (24 24 (:REWRITE INIT_PDTS-LOADED-THM-32))
     (24 24 (:REWRITE INIT_PDPT-LOADED-THM-32))
     (24 24
         (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
     (14 7
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (10 7 (:REWRITE SIMPLIFY-SUMS-EQUAL))
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
     (6 6 (:REWRITE DEFAULT-LOGIOR-1))
     (4 4 (:REWRITE ZP-OPEN))
     (3 3 (:REWRITE FOLD-CONSTS-IN-+))
     (3 3 (:REWRITE |(+ c (+ d x))|)))
(|(y86-p (init_pdts-modify-inner-loop-1 i j s))|
 (472 29
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (305 158 (:REWRITE DEFAULT-PLUS-2))
 (190 158 (:REWRITE DEFAULT-PLUS-1))
 (141 7 (:REWRITE |(+ y (+ x z))|))
 (123 123 (:REWRITE REDUCE-INTEGERP-+))
 (123 123 (:REWRITE INTEGERP-MINUS-X))
 (123 123 (:META META-INTEGERP-CORRECT))
 (104 104
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (104 104 (:REWRITE NORMALIZE-ADDENDS))
 (103 31
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (93 93 (:REWRITE DEFAULT-TIMES-2))
 (93 93 (:REWRITE DEFAULT-TIMES-1))
 (73 73
     (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (68 68
     (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (68 68 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (68 68 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (68 68
     (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (59 31 (:REWRITE DEFAULT-LESS-THAN-1))
 (35
   35
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (35
  35
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (35 35
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (35 35
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (35 35
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (35 35
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (34 20
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (34 20 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (31 31 (:REWRITE THE-FLOOR-BELOW))
 (31 31 (:REWRITE THE-FLOOR-ABOVE))
 (31 31 (:REWRITE DEFAULT-LESS-THAN-2))
 (29 29
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (22 22
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (22 22 (:REWRITE INTEGERP-<-CONSTANT))
 (22 22 (:REWRITE CONSTANT-<-INTEGERP))
 (22 22
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (22 22
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (22 22
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (22 22
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (22 22 (:REWRITE |(< c (- x))|))
 (22 22
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (22 22
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (22 22
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (22 22
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (22 22 (:REWRITE |(< (/ x) (/ y))|))
 (22 22 (:REWRITE |(< (- x) c)|))
 (22 22 (:REWRITE |(< (- x) (- y))|))
 (20 20 (:REWRITE SIMPLIFY-SUMS-<))
 (15 15 (:REWRITE FOLD-CONSTS-IN-+))
 (15 15 (:REWRITE |(< (+ c/d x) y)|))
 (13 13 (:REWRITE |(< (* x y) 0)|))
 (11 11 (:REWRITE |(< (/ x) 0)|))
 (9 9
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (9 9
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (9 9 (:REWRITE DEFAULT-LOGIOR-2))
 (9 9 (:REWRITE DEFAULT-LOGIOR-1))
 (8 8 (:REWRITE |(< (+ (- c) x) y)|))
 (6 6
    (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (6 6
    (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (6 6 (:REWRITE ZP-OPEN))
 (6 6
    (:REWRITE |(g field (w32 addr val st))|))
 (2 2 (:TYPE-PRESCRIPTION ABS))
 (2 2
    (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
 (2 2 (:REWRITE |(* 1 x)|)))
(|(memoryp (g :mem (init_pdts-modify-inner-loop-1 i j s)))|
 (402 24
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (250 128 (:REWRITE DEFAULT-PLUS-2))
 (152 128 (:REWRITE DEFAULT-PLUS-1))
 (120 6 (:REWRITE |(+ y (+ x z))|))
 (98 26
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (84 84
     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (84 84 (:REWRITE NORMALIZE-ADDENDS))
 (74 74 (:REWRITE DEFAULT-TIMES-2))
 (74 74 (:REWRITE DEFAULT-TIMES-1))
 (58 58
     (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (56 56
     (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (56 56 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (56 56 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (56 56
     (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (50 26 (:REWRITE DEFAULT-LESS-THAN-1))
 (28 16
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (28 16 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (26 26 (:REWRITE THE-FLOOR-BELOW))
 (26 26 (:REWRITE THE-FLOOR-ABOVE))
 (26 26 (:REWRITE DEFAULT-LESS-THAN-2))
 (24 24
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (18 18
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (18 18 (:REWRITE INTEGERP-<-CONSTANT))
 (18 18 (:REWRITE CONSTANT-<-INTEGERP))
 (18 18
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (18 18
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (18 18
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (18 18
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (18 18 (:REWRITE |(< c (- x))|))
 (18 18
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (18 18
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (18 18
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (18 18
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (18 18 (:REWRITE |(< (/ x) (/ y))|))
 (18 18 (:REWRITE |(< (- x) c)|))
 (18 18 (:REWRITE |(< (- x) (- y))|))
 (16 16 (:REWRITE SIMPLIFY-SUMS-<))
 (14
   14
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (14
  14
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (14 14
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (14 14
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (14 14
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (14 14
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (12 12 (:REWRITE FOLD-CONSTS-IN-+))
 (12 12 (:REWRITE |(< (+ c/d x) y)|))
 (11 11 (:REWRITE |(< (* x y) 0)|))
 (9 9 (:REWRITE |(< (/ x) 0)|))
 (7 7
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (7 7
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (7 7 (:REWRITE REDUCE-INTEGERP-+))
 (7 7 (:REWRITE INTEGERP-MINUS-X))
 (7 7 (:REWRITE DEFAULT-LOGIOR-2))
 (7 7 (:REWRITE DEFAULT-LOGIOR-1))
 (7 7 (:META META-INTEGERP-CORRECT))
 (6 6
    (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (6 6
    (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (6 6
    (:REWRITE |(g field (w32 addr val st))|))
 (6 6 (:REWRITE |(< (+ (- c) x) y)|))
 (5 5 (:REWRITE ZP-OPEN))
 (3 3
    (:REWRITE |(G field (INIT_PDTS-MODIFY-INNER-LOOP-1 i j s))|))
 (2 2 (:TYPE-PRESCRIPTION ABS))
 (2 2
    (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
 (2 2 (:REWRITE |(* 1 x)|)))
(|(good-state-p (init_pdts-modify-inner-loop-1 i j s))|
 (5744 10
       (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- not paging|))
 (4490 2094 (:REWRITE DEFAULT-PLUS-2))
 (4026 117
       (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (3290 10
       (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- paging|))
 (3214 2094 (:REWRITE DEFAULT-PLUS-1))
 (3192
  48
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (2184 8 (:REWRITE DISJOINT-3-ITEMS))
 (1808
  48
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (1594 74 (:REWRITE SIMPLIFY-SUMS-<))
 (1500 1020 (:REWRITE NORMALIZE-ADDENDS))
 (988 988
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (400 400
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (400 400 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (400 400 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (400 400
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (349 19 (:REWRITE ZP-OPEN))
 (336 8
      (:REWRITE |(memoryp (g :mem (init_pdts-modify-inner-loop-1 i j s)))|))
 (277 277 (:REWRITE FOLD-CONSTS-IN-+))
 (241 117 (:REWRITE DEFAULT-LESS-THAN-1))
 (192 16 (:REWRITE BUBBLE-DOWN-+-MATCH-3))
 (182 16 (:REWRITE DISJOINT-5-ITEMS))
 (168 74
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (168 74 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (165 117 (:REWRITE DEFAULT-LESS-THAN-2))
 (164 164 (:REWRITE DEFAULT-TIMES-2))
 (164 164 (:REWRITE DEFAULT-TIMES-1))
 (136 136
      (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (121
   121
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (121
  121
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (121 121
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (121
     121
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (121 121
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (121 121
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (117 117 (:REWRITE THE-FLOOR-BELOW))
 (117 117 (:REWRITE THE-FLOOR-ABOVE))
 (117 117
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (117 117
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (96 48 (:DEFINITION FIX))
 (78 78
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (78 78 (:REWRITE INTEGERP-<-CONSTANT))
 (78 78 (:REWRITE CONSTANT-<-INTEGERP))
 (78 78
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (78 78
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (78 78
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (78 78
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (78 78 (:REWRITE |(< c (- x))|))
 (78 78
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (78 78
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (78 78
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (78 78
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (78 78 (:REWRITE |(< (/ x) (/ y))|))
 (78 78 (:REWRITE |(< (- x) c)|))
 (78 78 (:REWRITE |(< (- x) (- y))|))
 (66 66 (:REWRITE |(< (+ c/d x) y)|))
 (64 32 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (64 16 (:REWRITE |(+ (* c x) (* d x))|))
 (32 16 (:REWRITE BUBBLE-DOWN-+-MATCH-1))
 (32 16
     (:REWRITE |(va-to-pa addr (init_pdts-modify-inner-loop-1 i j s))|))
 (27 27 (:REWRITE |(< (+ (- c) x) y)|))
 (26 26 (:REWRITE |(< x (+ c/d y))|))
 (25 25 (:REWRITE DEFAULT-LOGIOR-2))
 (25 25 (:REWRITE DEFAULT-LOGIOR-1))
 (24 6 (:REWRITE |(* y x)|))
 (24 6 (:REWRITE |(* c (* d x))|))
 (18 18 (:REWRITE |(< y (+ (- c) x))|))
 (18 18 (:REWRITE |(< (* x y) 0)|))
 (16 16 (:REWRITE |(va-to-pa addr st)|))
 (16 16 (:REWRITE |(+ x (- x))|))
 (16 16 (:REWRITE |(* 0 x)|))
 (10 10
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (10 10
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (10 10 (:REWRITE |(< 0 (/ x))|))
 (10 10 (:REWRITE |(< 0 (* x y))|))
 (10 10 (:REWRITE |(< (/ x) 0)|))
 (8 8
    (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (8 8
    (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (8 8
    (:REWRITE |(G field (INIT_PDTS-MODIFY-INNER-LOOP-1 i j s))|))
 (6 6
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (6 6
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (6 6 (:REWRITE REDUCE-INTEGERP-+))
 (6 6 (:REWRITE INTEGERP-MINUS-X))
 (6 6 (:META META-INTEGERP-CORRECT)))
(|(r32 addr (init_pdts-modify-inner-loop-1 i j s))|
 (1449 736 (:REWRITE DEFAULT-PLUS-2))
 (1114 736 (:REWRITE DEFAULT-PLUS-1))
 (706 41
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (359 359
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (359 359 (:REWRITE NORMALIZE-ADDENDS))
 (210 210
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (210 210 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (210 210 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (210 210
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (162 162 (:REWRITE DEFAULT-TIMES-2))
 (162 162 (:REWRITE DEFAULT-TIMES-1))
 (144 144
      (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (115 43
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (75 75 (:REWRITE FOLD-CONSTS-IN-+))
 (73
   73
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (73
  73
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (73 73
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (73 73
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (73 73
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (73 73
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (71 43 (:REWRITE DEFAULT-LESS-THAN-1))
 (43 43 (:REWRITE THE-FLOOR-BELOW))
 (43 43 (:REWRITE THE-FLOOR-ABOVE))
 (43 43 (:REWRITE DEFAULT-LESS-THAN-2))
 (42 42
     (:REWRITE |(G field (INIT_PDTS-MODIFY-INNER-LOOP-1 i j s))|))
 (41 41
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (39 25
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (39 25 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (28 28
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (28 28 (:REWRITE INTEGERP-<-CONSTANT))
 (28 28 (:REWRITE CONSTANT-<-INTEGERP))
 (28 28
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (28 28
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (28 28
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (28 28
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (28 28 (:REWRITE |(< c (- x))|))
 (28 28
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (28 28
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (28 28
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (28 28
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (28 28 (:REWRITE |(< (/ x) (/ y))|))
 (28 28 (:REWRITE |(< (- x) c)|))
 (28 28 (:REWRITE |(< (- x) (- y))|))
 (25 25 (:REWRITE SIMPLIFY-SUMS-<))
 (25 5 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (25 5
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (25 5
     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (22
  22
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (22
  22
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (21 21 (:REWRITE |(< (+ c/d x) y)|))
 (15 15
     (:REWRITE |(g field (w32 addr val st))|))
 (14 14 (:REWRITE REDUCE-INTEGERP-+))
 (14 14 (:REWRITE INTEGERP-MINUS-X))
 (14 14 (:META META-INTEGERP-CORRECT))
 (13 13 (:REWRITE |(< (* x y) 0)|))
 (11 11 (:REWRITE |(< (/ x) 0)|))
 (9 1
    (:REWRITE |(r32 addr1 (w32 addr2 val st)) --- paging|))
 (8 8
    (:TYPE-PRESCRIPTION |(< 0 (logior x y))| . 2))
 (8 8
    (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (8 8
    (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (8 8
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (8 8
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (8 8 (:REWRITE DEFAULT-LOGIOR-2))
 (8 8 (:REWRITE DEFAULT-LOGIOR-1))
 (8 8 (:REWRITE |(< (+ (- c) x) y)|))
 (7 7 (:REWRITE ZP-OPEN))
 (5 5
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (5 5
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (5 5
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (5 5 (:REWRITE |(equal c (/ x))|))
 (5 5 (:REWRITE |(equal c (- x))|))
 (5 5 (:REWRITE |(equal (/ x) c)|))
 (5 5 (:REWRITE |(equal (/ x) (/ y))|))
 (5 5 (:REWRITE |(equal (- x) c)|))
 (5 5 (:REWRITE |(equal (- x) (- y))|))
 (2 2 (:TYPE-PRESCRIPTION ABS))
 (2 2
    (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
 (2 2 (:REWRITE |(* 1 x)|)))
(|(r32 addr (init_pdts-modify-inner-loop-1 i j s)) --- written to 1|
 (7641 3613 (:REWRITE DEFAULT-PLUS-2))
 (6859 3613 (:REWRITE DEFAULT-PLUS-1))
 (5622 398
       (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (4348 504
       (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (1553 331 (:REWRITE INTEGERP-<-CONSTANT))
 (1171 1171
       (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (854 666 (:REWRITE DEFAULT-TIMES-2))
 (788 504 (:REWRITE DEFAULT-LESS-THAN-2))
 (782 278 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (767 8
      (:REWRITE |(r32 addr1 (w32 addr2 val st)) --- paging|))
 (760 278
      (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (741 741
      (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (741 741
      (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (736 504 (:REWRITE DEFAULT-LESS-THAN-1))
 (666 666 (:REWRITE DEFAULT-TIMES-1))
 (655 55 (:REWRITE |(* y (* x z))|))
 (504 504 (:REWRITE THE-FLOOR-BELOW))
 (504 504 (:REWRITE THE-FLOOR-ABOVE))
 (447 447
      (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (398 398
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (331 331 (:REWRITE CONSTANT-<-INTEGERP))
 (331 331
      (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (331 331
      (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (331 331
      (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (331 331
      (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (331 331 (:REWRITE |(< c (- x))|))
 (331 331
      (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (331 331
      (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (331 331
      (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (331 331
      (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (331 331 (:REWRITE |(< (/ x) (/ y))|))
 (331 331 (:REWRITE |(< (- x) c)|))
 (331 331 (:REWRITE |(< (- x) (- y))|))
 (322 322
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (322 322 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (322 322 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (322 322
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (288 24 (:REWRITE BUBBLE-DOWN-+-MATCH-3))
 (284 284
      (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (252 252 (:REWRITE |(< (+ c/d x) y)|))
 (250 250 (:REWRITE FOLD-CONSTS-IN-+))
 (239 239 (:REWRITE |(* (- x) y)|))
 (228
   228
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (228
  228
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (228 228
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (228
     228
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (228 228
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (228 228
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (106 106 (:TYPE-PRESCRIPTION ABS))
 (96 24 (:REWRITE |(+ (* c x) (* d x))|))
 (95 17
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (95 17
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (81 81 (:REWRITE |(< y (+ (- c) x))|))
 (81 81 (:REWRITE |(< x (+ c/d y))|))
 (72 72 (:REWRITE |(< (* x y) 0)|))
 (70 70 (:REWRITE DEFAULT-LOGIOR-2))
 (70 70 (:REWRITE DEFAULT-LOGIOR-1))
 (69 69
     (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (68 11 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (68 11
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (68 11
     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (56 56
     (:REWRITE |(G field (INIT_PDTS-MODIFY-INNER-LOOP-1 i j s))|))
 (49 49
     (:REWRITE |(< x (/ y)) with (< y 0)|))
 (47 47 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (47 47 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (47 47 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (47 47 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (47 47 (:REWRITE |(* a (/ a) b)|))
 (42 7 (:REWRITE DISJOINT-3-ITEMS))
 (24 24 (:REWRITE |(* 0 x)|))
 (22 22 (:LINEAR LOGIOR-BOUNDS-NEG . 2))
 (21 21 (:REWRITE |(< 0 (* x y))|))
 (19 19 (:REWRITE |(< (/ x) 0)|))
 (17 17 (:REWRITE |(< 0 (/ x))|))
 (16 16
     (:REWRITE |(g field (w32 addr val st))|))
 (15 15
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (15 15
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (15 15 (:REWRITE REDUCE-INTEGERP-+))
 (15 15 (:REWRITE INTEGERP-MINUS-X))
 (15 15 (:META META-INTEGERP-CORRECT))
 (11 11
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (11 11
     (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (11 11
     (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (11 11 (:REWRITE |(equal c (/ x))|))
 (11 11 (:REWRITE |(equal c (- x))|))
 (11 11 (:REWRITE |(equal (/ x) c)|))
 (11 11 (:REWRITE |(equal (/ x) (/ y))|))
 (11 11 (:REWRITE |(equal (- x) c)|))
 (11 11 (:REWRITE |(equal (- x) (- y))|))
 (8 8 (:REWRITE ZP-OPEN))
 (4 4 (:REWRITE |(equal (+ (- c) x) y)|))
 (4 4 (:REWRITE |(* 1 x)|))
 (4 1
    (:REWRITE |(r32 addr (w32 addr val st)) --- paging|))
 (2 2
    (:REWRITE |(<= (/ x) y) with (< x 0)|))
 (2 2
    (:REWRITE |(<= (/ x) y) with (< 0 x)|))
 (2 2
    (:REWRITE |(< 0 (* x y)) rationalp (* x y)|))
 (2 2
    (:REWRITE |(< (* x y) 0) rationalp (* x y)|)))
(|(r32 addr (init_pdts-modify-inner-loop-1 i j s)) --- written to 2|
 (17582 378
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (9222 4087 (:REWRITE DEFAULT-PLUS-2))
 (7161 4087 (:REWRITE DEFAULT-PLUS-1))
 (3954 464
       (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (1375 1375
       (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (1251 263 (:REWRITE INTEGERP-<-CONSTANT))
 (1106 80 (:REWRITE |(* y (* x z))|))
 (925 621 (:REWRITE DEFAULT-TIMES-2))
 (828 464 (:REWRITE DEFAULT-LESS-THAN-2))
 (783 8
      (:REWRITE |(r32 addr1 (w32 addr2 val st)) --- paging|))
 (746 464 (:REWRITE DEFAULT-LESS-THAN-1))
 (699 219
      (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (674 242 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (621 621 (:REWRITE DEFAULT-TIMES-1))
 (472 472 (:REWRITE FOLD-CONSTS-IN-+))
 (464 464 (:REWRITE THE-FLOOR-BELOW))
 (464 464 (:REWRITE THE-FLOOR-ABOVE))
 (409 409
      (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (378 378
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (292 292
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (292 292 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (292 292 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (292 292
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (288 24 (:REWRITE BUBBLE-DOWN-+-MATCH-3))
 (270 270 (:REWRITE |(< (+ c/d x) y)|))
 (263 263 (:REWRITE CONSTANT-<-INTEGERP))
 (263 263
      (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (263 263
      (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (263 263
      (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (263 263
      (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (263 263 (:REWRITE |(< c (- x))|))
 (263 263
      (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (263 263
      (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (263 263
      (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (263 263
      (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (263 263 (:REWRITE |(< (/ x) (/ y))|))
 (263 263 (:REWRITE |(< (- x) c)|))
 (263 263 (:REWRITE |(< (- x) (- y))|))
 (260
   260
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (260
  260
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (260 260
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (260
     260
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (260 260
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (260 260
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (232 232 (:REWRITE |(* (- x) y)|))
 (225 225
      (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (116 116 (:REWRITE |(< x (+ c/d y))|))
 (96 24 (:REWRITE |(+ (* c x) (* d x))|))
 (86 86 (:TYPE-PRESCRIPTION ABS))
 (76 76 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (76 76 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (76 76 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (76 76 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (60 60
     (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (60 60 (:REWRITE |(< (* x y) 0)|))
 (54 54 (:REWRITE |(< y (+ (- c) x))|))
 (50 50
     (:REWRITE |(G field (INIT_PDTS-MODIFY-INNER-LOOP-1 i j s))|))
 (42 7 (:REWRITE DISJOINT-3-ITEMS))
 (40 40
     (:REWRITE |(< x (/ y)) with (< y 0)|))
 (38 38 (:REWRITE |(* a (/ a) b)|))
 (29 6
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (29 6
     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (28 5 (:REWRITE O-INFP->NEQ-0))
 (24 24 (:REWRITE |(* 0 x)|))
 (16 16
     (:REWRITE |(g field (w32 addr val st))|))
 (16 16 (:REWRITE |(< (/ x) 0)|))
 (12 12
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (12 12
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (12 12 (:REWRITE REDUCE-INTEGERP-+))
 (12 12 (:REWRITE INTEGERP-MINUS-X))
 (12 12 (:META META-INTEGERP-CORRECT))
 (9 9 (:REWRITE DEFAULT-LOGIOR-2))
 (9 9 (:REWRITE DEFAULT-LOGIOR-1))
 (8 8
    (:TYPE-PRESCRIPTION |(< 0 (logior x y))| . 2))
 (8 8
    (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (8 8
    (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (7 7 (:REWRITE ZP-OPEN))
 (6 6 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 6
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (6 6
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (6 6
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (6 6 (:REWRITE |(equal c (/ x))|))
 (6 6 (:REWRITE |(equal c (- x))|))
 (6 6 (:REWRITE |(equal (/ x) c)|))
 (6 6 (:REWRITE |(equal (/ x) (/ y))|))
 (6 6 (:REWRITE |(equal (- x) c)|))
 (6 6 (:REWRITE |(equal (- x) (- y))|))
 (5 5
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (2 2
    (:REWRITE |(<= (/ x) y) with (< x 0)|))
 (2 2
    (:REWRITE |(<= (/ x) y) with (< 0 x)|))
 (2 2 (:REWRITE |(< 0 (* x y))|))
 (2 2
    (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
 (2 2 (:REWRITE |(* 1 x)|)))
(|(init_pdts-modify-inner-loop-1 i j (w32 addr val s))|
 (5158 2503 (:REWRITE DEFAULT-PLUS-2))
 (4640 137
       (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (4360 11
       (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- paging|))
 (4036
  106
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (3843 2503 (:REWRITE DEFAULT-PLUS-1))
 (2890 10 (:REWRITE DISJOINT-3-ITEMS))
 (2306
  106
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (1986 86 (:REWRITE SIMPLIFY-SUMS-<))
 (1769 1169 (:REWRITE NORMALIZE-ADDENDS))
 (1129 1129
       (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (416 416 (:REWRITE DEFAULT-TIMES-2))
 (416 416 (:REWRITE DEFAULT-TIMES-1))
 (363 363 (:REWRITE FOLD-CONSTS-IN-+))
 (351 21 (:REWRITE ZP-OPEN))
 (328 328
      (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (321 321
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (321 321 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (321 321 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (321 321
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (240
   240
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (240
  240
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (240 240
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (240
     240
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (240 240
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (240 240
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (240 20 (:REWRITE BUBBLE-DOWN-+-MATCH-3))
 (236 139 (:REWRITE DEFAULT-LESS-THAN-1))
 (211 139
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (199 139 (:REWRITE DEFAULT-LESS-THAN-2))
 (175 86
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (175 86 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (139 139 (:REWRITE THE-FLOOR-BELOW))
 (139 139 (:REWRITE THE-FLOOR-ABOVE))
 (137 137
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (120 60 (:DEFINITION FIX))
 (99 27 (:REWRITE ACL2-NUMBERP-X))
 (90 90 (:REWRITE |(< (+ c/d x) y)|))
 (90 9
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (88 88
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (88 88 (:REWRITE INTEGERP-<-CONSTANT))
 (88 88 (:REWRITE CONSTANT-<-INTEGERP))
 (88 88
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (88 88
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (88 88
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (88 88
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (88 88 (:REWRITE |(< c (- x))|))
 (88 88
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (88 88
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (88 88
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (88 88
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (88 88 (:REWRITE |(< (/ x) (/ y))|))
 (88 88 (:REWRITE |(< (- x) c)|))
 (88 88 (:REWRITE |(< (- x) (- y))|))
 (88 20
     (:REWRITE |(va-to-pa addr (init_pdts-modify-inner-loop-1 i j s))|))
 (80 40 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (80 20 (:REWRITE |(+ (* c x) (* d x))|))
 (41 41 (:REWRITE |(< (+ (- c) x) y)|))
 (40 40 (:REWRITE DEFAULT-LOGIOR-2))
 (40 40 (:REWRITE DEFAULT-LOGIOR-1))
 (40 20 (:REWRITE BUBBLE-DOWN-+-MATCH-1))
 (36 9 (:REWRITE RATIONALP-X))
 (36 4 (:REWRITE |(y86-p (w32 addr val s))|))
 (35 35 (:REWRITE REDUCE-INTEGERP-+))
 (35 35 (:REWRITE INTEGERP-MINUS-X))
 (35 35 (:META META-INTEGERP-CORRECT))
 (30 30 (:REWRITE |(< x (+ c/d y))|))
 (23 23 (:REWRITE |(< (* x y) 0)|))
 (20 20 (:REWRITE |(< y (+ (- c) x))|))
 (20 20 (:REWRITE |(+ x (- x))|))
 (20 20 (:REWRITE |(* 0 x)|))
 (18 9 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (18 9
     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (13 13 (:REWRITE |(< (/ x) 0)|))
 (12 12
     (:REWRITE |(G field (INIT_PDTS-MODIFY-INNER-LOOP-1 i j s))|))
 (11 11
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (11 11
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (10 10
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (10 10
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (10 10 (:REWRITE |(< 0 (/ x))|))
 (10 10 (:REWRITE |(< 0 (* x y))|))
 (9 9 (:REWRITE REDUCE-RATIONALP-+))
 (9 9 (:REWRITE REDUCE-RATIONALP-*))
 (9 9
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (9 9
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (9 9 (:REWRITE RATIONALP-MINUS-X))
 (9 9
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (9 9 (:REWRITE |(equal c (/ x))|))
 (9 9 (:REWRITE |(equal c (- x))|))
 (9 9 (:REWRITE |(equal (/ x) c)|))
 (9 9 (:REWRITE |(equal (/ x) (/ y))|))
 (9 9 (:REWRITE |(equal (- x) c)|))
 (9 9 (:REWRITE |(equal (- x) (- y))|))
 (9 9 (:META META-RATIONALP-CORRECT))
 (5 2
    (:REWRITE |(r32 addr1 (w32 addr2 val st)) --- paging|))
 (2 2 (:TYPE-PRESCRIPTION ABS))
 (2 2
    (:REWRITE |(< (* x y) 0) rationalp (* x y)|))
 (2 2 (:REWRITE |(* 1 x)|)))
(INIT_PDTS-MODIFY-OUTER-LOOP-1)
(|(paging-p (init_pdts-modify-outer-loop-1 i s))|
     (1146 6
           (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
     (522 6 (:DEFINITION BINARY-LOGIOR))
     (384 6 (:DEFINITION BINARY-LOGAND))
     (341 164 (:REWRITE DEFAULT-+-2))
     (336 63 (:REWRITE COMMUTATIVITY-OF-+))
     (294 6 (:DEFINITION FLOOR))
     (290 164 (:REWRITE DEFAULT-+-1))
     (198 84
          (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
     (144 9
          (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (132 12 (:DEFINITION LOGNOT))
     (84 84 (:TYPE-PRESCRIPTION R32))
     (84 84 (:TYPE-PRESCRIPTION MEMORYP))
     (66 12 (:REWRITE COMMUTATIVITY-OF-*))
     (63 54 (:REWRITE DEFAULT-*-2))
     (63 9 (:REWRITE FOLD-CONSTS-IN-+))
     (57 54 (:REWRITE DEFAULT-*-1))
     (48 48 (:TYPE-PRESCRIPTION BINARY-LOGAND))
     (45 33 (:REWRITE DEFAULT-UNARY-MINUS))
     (30 6 (:REWRITE DISTRIBUTIVITY))
     (27 27
         (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (27 21 (:DEFINITION IFIX))
     (27 9 (:DEFINITION NFIX))
     (24 24
         (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
     (24 24 (:REWRITE INIT_PDTS-LOADED-THM-32))
     (24 24 (:REWRITE INIT_PDPT-LOADED-THM-32))
     (24 24 (:REWRITE DEFAULT-<-2))
     (24 24 (:REWRITE DEFAULT-<-1))
     (24 24
         (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
     (18 6 (:REWRITE UNICITY-OF-0))
     (12 12
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (12 6 (:DEFINITION FIX))
     (12 3
         (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
     (6 6 (:REWRITE DEFAULT-NUMERATOR))
     (6 6 (:REWRITE DEFAULT-DENOMINATOR))
     (6 3 (:REWRITE ZIP-OPEN))
     (4 4 (:REWRITE ZP-OPEN))
     (3 3 (:REWRITE O-INFP->NEQ-0)))
(|(va-to-pa addr (init_pdts-modify-outer-loop-1 i s))|
     (386 1
          (:DEFINITION INIT_PDTS-MODIFY-OUTER-LOOP-1))
     (382 2
          (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
     (174 2 (:DEFINITION BINARY-LOGIOR))
     (128 2 (:DEFINITION BINARY-LOGAND))
     (114 55 (:REWRITE DEFAULT-+-2))
     (112 21 (:REWRITE COMMUTATIVITY-OF-+))
     (98 2 (:DEFINITION FLOOR))
     (97 55 (:REWRITE DEFAULT-+-1))
     (66 28
         (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
     (48 3
         (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (44 4 (:DEFINITION LOGNOT))
     (38 38 (:TYPE-PRESCRIPTION VA-TO-PA))
     (28 28 (:TYPE-PRESCRIPTION R32))
     (28 28 (:TYPE-PRESCRIPTION MEMORYP))
     (22 4 (:REWRITE COMMUTATIVITY-OF-*))
     (21 18 (:REWRITE DEFAULT-*-2))
     (21 3 (:REWRITE FOLD-CONSTS-IN-+))
     (19 18 (:REWRITE DEFAULT-*-1))
     (16 16 (:TYPE-PRESCRIPTION BINARY-LOGAND))
     (15 11 (:REWRITE DEFAULT-UNARY-MINUS))
     (10 2 (:REWRITE DISTRIBUTIVITY))
     (9 9
        (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (9 7 (:DEFINITION IFIX))
     (9 3 (:DEFINITION NFIX))
     (8 8
        (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
     (8 8 (:REWRITE INIT_PDTS-LOADED-THM-32))
     (8 8 (:REWRITE INIT_PDPT-LOADED-THM-32))
     (8 8 (:REWRITE DEFAULT-<-2))
     (8 8 (:REWRITE DEFAULT-<-1))
     (8 8
        (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
     (6 2 (:REWRITE UNICITY-OF-0))
     (4 4
        (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (4 2 (:DEFINITION FIX))
     (4 1
        (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
     (2 2 (:REWRITE DEFAULT-NUMERATOR))
     (2 2 (:REWRITE DEFAULT-DENOMINATOR))
     (2 1 (:REWRITE ZIP-OPEN))
     (1 1 (:REWRITE ZP-OPEN))
     (1 1 (:REWRITE O-INFP->NEQ-0)))
(|(good-32-address-p addr (init_pdts-modify-outer-loop-1 i s))|
     (1146 6
           (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
     (522 6 (:DEFINITION BINARY-LOGIOR))
     (384 6 (:DEFINITION BINARY-LOGAND))
     (341 164 (:REWRITE DEFAULT-+-2))
     (336 63 (:REWRITE COMMUTATIVITY-OF-+))
     (294 6 (:DEFINITION FLOOR))
     (290 164 (:REWRITE DEFAULT-+-1))
     (198 84
          (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
     (144 9
          (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
     (132 12 (:DEFINITION LOGNOT))
     (84 84 (:TYPE-PRESCRIPTION R32))
     (84 84 (:TYPE-PRESCRIPTION MEMORYP))
     (66 12 (:REWRITE COMMUTATIVITY-OF-*))
     (63 54 (:REWRITE DEFAULT-*-2))
     (63 9 (:REWRITE FOLD-CONSTS-IN-+))
     (57 54 (:REWRITE DEFAULT-*-1))
     (48 48 (:TYPE-PRESCRIPTION BINARY-LOGAND))
     (45 33 (:REWRITE DEFAULT-UNARY-MINUS))
     (37 10
         (:REWRITE |(good-32-address-p addr st)|))
     (30 6 (:REWRITE DISTRIBUTIVITY))
     (27 27
         (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
     (27 21 (:DEFINITION IFIX))
     (27 9 (:DEFINITION NFIX))
     (24 24
         (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
     (24 24 (:REWRITE INIT_PDTS-LOADED-THM-32))
     (24 24 (:REWRITE INIT_PDPT-LOADED-THM-32))
     (24 24 (:REWRITE DEFAULT-<-2))
     (24 24 (:REWRITE DEFAULT-<-1))
     (24 24
         (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
     (18 6 (:REWRITE UNICITY-OF-0))
     (12 12
         (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
     (12 6 (:DEFINITION FIX))
     (12 3
         (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
     (10 10 (:TYPE-PRESCRIPTION N32P))
     (6 6 (:REWRITE DEFAULT-NUMERATOR))
     (6 6 (:REWRITE DEFAULT-DENOMINATOR))
     (6 3 (:REWRITE ZIP-OPEN))
     (5 5 (:REWRITE |(n32p x)|))
     (4 4 (:REWRITE ZP-OPEN))
     (3 3 (:REWRITE O-INFP->NEQ-0)))
(|(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|
     (1335 6
           (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
     (557 119 (:REWRITE DEFAULT-PLUS-2))
     (355 59 (:REWRITE ACL2-NUMBERP-X))
     (336 36 (:REWRITE |(+ y x)|))
     (330 138
          (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
     (269 107 (:REWRITE DEFAULT-PLUS-1))
     (174 6 (:REWRITE |(+ x (if a b c))|))
     (148 37 (:REWRITE RATIONALP-X))
     (144 48 (:REWRITE DEFAULT-TIMES-2))
     (138 138 (:TYPE-PRESCRIPTION R32))
     (138 138 (:TYPE-PRESCRIPTION MEMORYP))
     (84 42 (:REWRITE DEFAULT-TIMES-1))
     (75 6 (:REWRITE |(+ c (+ d x))|))
     (70 7
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (50 50
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (50 50 (:REWRITE NORMALIZE-ADDENDS))
     (43 43 (:REWRITE REDUCE-INTEGERP-+))
     (43 43 (:REWRITE INTEGERP-MINUS-X))
     (43 43 (:META META-INTEGERP-CORRECT))
     (37 37 (:REWRITE REDUCE-RATIONALP-+))
     (37 37 (:REWRITE REDUCE-RATIONALP-*))
     (37 37 (:REWRITE RATIONALP-MINUS-X))
     (37 37 (:META META-RATIONALP-CORRECT))
     (30 9 (:REWRITE DEFAULT-LOGIOR-2))
     (24 24
         (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
     (24 24
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (24 24 (:REWRITE INIT_PDTS-LOADED-THM-32))
     (24 24 (:REWRITE INIT_PDPT-LOADED-THM-32))
     (24 24
         (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
     (24 6 (:REWRITE |(+ 0 x)|))
     (24 6 (:REWRITE |(* y x)|))
     (24 6 (:REWRITE |(* c (* d x))|))
     (24 3 (:REWRITE |(+ (if a b c) x)|))
     (21 3 (:REWRITE |(* x (if a b c))|))
     (14 7
         (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (10 7 (:REWRITE SIMPLIFY-SUMS-EQUAL))
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
     (6 6 (:REWRITE DEFAULT-LOGIOR-1))
     (4 4 (:REWRITE ZP-OPEN)))
(|(y86-p (init_pdts-modify-outer-loop-1 i s))|
 (44557 16
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (15540 8768 (:REWRITE DEFAULT-PLUS-2))
 (11240 8768 (:REWRITE DEFAULT-PLUS-1))
 (3810 3810
       (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (3810 3810 (:REWRITE NORMALIZE-ADDENDS))
 (2752 88
       (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (1504 1504
       (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (1504 1504 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (1504 1504 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (1504 1504
       (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (620
   620
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (620
  620
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (620 620
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (620
     620
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (620 620
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (620 620
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (292
  292
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (292
  292
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (200 88 (:REWRITE DEFAULT-LESS-THAN-1))
 (120 44 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (100 44
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (88 88 (:REWRITE THE-FLOOR-BELOW))
 (88 88 (:REWRITE THE-FLOOR-ABOVE))
 (88 88
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (88 88
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (88 88 (:REWRITE DEFAULT-LESS-THAN-2))
 (44 44 (:REWRITE SIMPLIFY-SUMS-<))
 (44 44
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (44 44 (:REWRITE INTEGERP-<-CONSTANT))
 (44 44 (:REWRITE CONSTANT-<-INTEGERP))
 (44 44
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (44 44
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (44 44
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (44 44
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (44 44 (:REWRITE |(< c (- x))|))
 (44 44
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (44 44
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (44 44
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (44 44
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (44 44 (:REWRITE |(< (/ x) (/ y))|))
 (44 44 (:REWRITE |(< (- x) c)|))
 (44 44 (:REWRITE |(< (- x) (- y))|))
 (44 44 (:REWRITE |(< (+ c/d x) y)|))
 (44 4 (:REWRITE DISJOINT-5-ITEMS))
 (12 12
     (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|)))
(|(memoryp (g :mem (init_pdts-modify-outer-loop-1 i s)))|
 (45409 17
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (15726 8827 (:REWRITE DEFAULT-PLUS-2))
 (11317 8827 (:REWRITE DEFAULT-PLUS-1))
 (3842 3842
       (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (3842 3842 (:REWRITE NORMALIZE-ADDENDS))
 (3118 98
       (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (1522 1522
       (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (1522 1522 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (1522 1522 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (1522 1522
       (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (626
   626
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (626
  626
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (626 626
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (626
     626
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (626 626
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (626 626
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (495 1
      (:REWRITE |(y86-p (init_pdts-modify-outer-loop-1 i s))|))
 (292
  292
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (292
  292
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (230 98 (:REWRITE DEFAULT-LESS-THAN-1))
 (139 49 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (113 49
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (98 98 (:REWRITE THE-FLOOR-BELOW))
 (98 98 (:REWRITE THE-FLOOR-ABOVE))
 (98 98
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (98 98
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (98 98 (:REWRITE DEFAULT-LESS-THAN-2))
 (49 49 (:REWRITE SIMPLIFY-SUMS-<))
 (49 49
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (49 49 (:REWRITE INTEGERP-<-CONSTANT))
 (49 49 (:REWRITE CONSTANT-<-INTEGERP))
 (49 49
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (49 49
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (49 49
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (49 49
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (49 49 (:REWRITE |(< c (- x))|))
 (49 49
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (49 49
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (49 49
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (49 49
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (49 49 (:REWRITE |(< (/ x) (/ y))|))
 (49 49 (:REWRITE |(< (- x) c)|))
 (49 49 (:REWRITE |(< (- x) (- y))|))
 (49 49 (:REWRITE |(< (+ c/d x) y)|))
 (44 4 (:REWRITE DISJOINT-5-ITEMS))
 (19 19
     (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (2 1
    (:REWRITE |(paging-p (init_pdts-modify-outer-loop-1 i s))|))
 (1 1 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (1 1 (:REWRITE |(< (* x y) 0)|)))
(ANCESTORS-CHECK-DISJOINTP-HACK-2
     (558 66 (:DEFINITION LEN))
     (527 76
          (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (457 455 (:REWRITE DEFAULT-CDR))
     (439 1 (:DEFINITION VAR-FN-COUNT-1))
     (430 86 (:REWRITE ACL2-NUMBERP-X))
     (411 1 (:DEFINITION FN-COUNT-EVG-REC))
     (376 76 (:REWRITE O-P-O-INFP-CAR))
     (299 298 (:REWRITE DEFAULT-CAR))
     (183 76
          (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (176 44 (:REWRITE RATIONALP-X))
     (175 4 (:DEFINITION MIN-FIXNUM))
     (151 80 (:REWRITE DEFAULT-PLUS-2))
     (148 76 (:REWRITE O-P-DEF-O-FINP-1))
     (144 16 (:DEFINITION SYMBOL-LISTP))
     (124 76 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (81 80 (:REWRITE DEFAULT-PLUS-1))
     (78 72 (:REWRITE NORMALIZE-ADDENDS))
     (76 76
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (76 76
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (76 76
         (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (76 76 (:REWRITE |(equal c (/ x))|))
     (76 76 (:REWRITE |(equal c (- x))|))
     (76 76 (:REWRITE |(equal (/ x) c)|))
     (76 76 (:REWRITE |(equal (/ x) (/ y))|))
     (76 76 (:REWRITE |(equal (- x) c)|))
     (76 76 (:REWRITE |(equal (- x) (- y))|))
     (72 72 (:TYPE-PRESCRIPTION O-FINP))
     (71 71
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (66 66 (:REWRITE REDUCE-INTEGERP-+))
     (66 66 (:REWRITE INTEGERP-MINUS-X))
     (66 66 (:META META-INTEGERP-CORRECT))
     (61 10 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (44 44 (:REWRITE REDUCE-RATIONALP-+))
     (44 44 (:REWRITE REDUCE-RATIONALP-*))
     (44 44 (:REWRITE RATIONALP-MINUS-X))
     (44 44 (:META META-RATIONALP-CORRECT))
     (37 37
         (:REWRITE TERMP-IMPLIES-PSEUDO-TERMP))
     (22 22
         (:REWRITE TERM-LISTP-IMPLIES-PSEUDO-TERM-LISTP))
     (18 18 (:REWRITE DEFAULT-COERCE-2))
     (18 18 (:REWRITE DEFAULT-COERCE-1))
     (16 16 (:REWRITE |(equal x (if a b c))|))
     (16 16 (:REWRITE |(equal (if a b c) x)|))
     (14 10
         (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (12 10 (:REWRITE DEFAULT-LESS-THAN-2))
     (12 10 (:REWRITE DEFAULT-LESS-THAN-1))
     (10 10 (:REWRITE THE-FLOOR-BELOW))
     (10 10 (:REWRITE THE-FLOOR-ABOVE))
     (10 10 (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (10 10
         (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (10 10
         (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (10 10
         (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (10 10
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
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
     (10 1 (:REWRITE |(+ y (+ x z))|))
     (9 9 (:REWRITE SIMPLIFY-SUMS-<))
     (8 5 (:REWRITE |(+ 0 x)|))
     (5 1 (:REWRITE |(+ y x)|))
     (4 4 (:REWRITE |(< y (+ (- c) x))|))
     (4 4 (:REWRITE |(< x (+ c/d y))|))
     (4 2 (:REWRITE DEFAULT-TIMES-2))
     (2 2
        (:TYPE-PRESCRIPTION FN-COUNT-EVG-REC-TYPE-PRESCRIPTION))
     (2 2
        (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (2 2 (:REWRITE DEFAULT-TIMES-1))
     (2 2 (:DEFINITION FIX))
     (2 1 (:REWRITE BUBBLE-DOWN-+-MATCH-1))
     (1 1 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (1 1
        (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (1 1 (:REWRITE INTEGERP==>NUMERATOR-=-X))
     (1 1 (:REWRITE INTEGERP==>DENOMINATOR-=-1))
     (1 1 (:REWRITE DEFAULT-SYMBOL-NAME))
     (1 1 (:REWRITE DEFAULT-REALPART))
     (1 1 (:REWRITE DEFAULT-RATIONAL-NUMERATOR))
     (1 1
        (:REWRITE DEFAULT-RATIONAL-DENOMINATOR))
     (1 1 (:REWRITE DEFAULT-MINUS))
     (1 1 (:REWRITE DEFAULT-IMAGPART))
     (1 1 (:REWRITE |(< (/ x) 0)|))
     (1 1 (:REWRITE |(< (+ c/d x) y)|))
     (1 1 (:REWRITE |(< (+ (- c) x) y)|))
     (1 1 (:REWRITE |(< (* x y) 0)|))
     (1 1 (:REWRITE |(+ x (- x))|)))
(ANCESTORS-CHECK-DISJOINTP-HACK-CONSTRAINT-2
     (39237 21 (:DEFINITION ANCESTORS-CHECK1))
     (20447 1384 (:REWRITE DEFAULT-LESS-THAN-2))
     (16440 40 (:DEFINITION FN-COUNT-EVG-REC))
     (16154 42
            (:DEFINITION EARLIER-ANCESTOR-BIGGERP))
     (10537 1617 (:REWRITE ACL2-NUMBERP-X))
     (10020 1139 (:REWRITE DEFAULT-LESS-THAN-1))
     (7000 160 (:DEFINITION MIN-FIXNUM))
     (4620 1131 (:REWRITE RATIONALP-X))
     (3523 544
           (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
     (3044 1004
           (:REWRITE PREFER-POSITIVE-ADDENDS-<))
     (2520 63 (:DEFINITION INTERSECTP-EQUAL))
     (2284 2051 (:REWRITE DEFAULT-CDR))
     (1967 388 (:REWRITE O-P-O-INFP-CAR))
     (1621 1395 (:REWRITE DEFAULT-CAR))
     (1384 1384 (:REWRITE THE-FLOOR-BELOW))
     (1384 1384 (:REWRITE THE-FLOOR-ABOVE))
     (1360 1360 (:TYPE-PRESCRIPTION LEN))
     (1171 1171 (:REWRITE REDUCE-INTEGERP-+))
     (1171 1171 (:REWRITE INTEGERP-MINUS-X))
     (1171 1171 (:META META-INTEGERP-CORRECT))
     (1164 1004
           (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
     (1131 1131 (:REWRITE REDUCE-RATIONALP-+))
     (1131 1131 (:REWRITE REDUCE-RATIONALP-*))
     (1131 1131 (:REWRITE RATIONALP-MINUS-X))
     (1131 1131 (:META META-RATIONALP-CORRECT))
     (1004 1004
           (:REWRITE REMOVE-WEAK-INEQUALITIES))
     (1004 1004
           (:REWRITE REMOVE-STRICT-INEQUALITIES))
     (1004 1004
           (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
     (1004 1004
           (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
     (1004 1004
           (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
     (1004 1004 (:REWRITE INTEGERP-<-CONSTANT))
     (1004 1004 (:REWRITE CONSTANT-<-INTEGERP))
     (1004 1004
           (:REWRITE |(< c (/ x)) positive c --- present in goal|))
     (1004 1004
           (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
     (1004 1004
           (:REWRITE |(< c (/ x)) negative c --- present in goal|))
     (1004 1004
           (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
     (1004 1004 (:REWRITE |(< c (- x))|))
     (1004 1004
           (:REWRITE |(< (/ x) c) positive c --- present in goal|))
     (1004 1004
           (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
     (1004 1004
           (:REWRITE |(< (/ x) c) negative c --- present in goal|))
     (1004 1004
           (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
     (1004 1004 (:REWRITE |(< (/ x) (/ y))|))
     (1004 1004 (:REWRITE |(< (- x) c)|))
     (1004 1004 (:REWRITE |(< (- x) (- y))|))
     (964 964 (:REWRITE SIMPLIFY-SUMS-<))
     (920 640 (:REWRITE DEFAULT-PLUS-2))
     (875 544
          (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
     (845 367 (:REWRITE O-P-DEF-O-FINP-1))
     (800 80 (:DEFINITION LENGTH))
     (739 544 (:REWRITE SIMPLIFY-SUMS-EQUAL))
     (680 640 (:REWRITE DEFAULT-PLUS-1))
     (560 320 (:REWRITE NORMALIZE-ADDENDS))
     (560 80 (:DEFINITION LEN))
     (544 544
          (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
     (544 544
          (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
     (544 544
          (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
     (544 544 (:REWRITE |(equal c (/ x))|))
     (544 544 (:REWRITE |(equal c (- x))|))
     (544 544 (:REWRITE |(equal (/ x) c)|))
     (544 544 (:REWRITE |(equal (/ x) (/ y))|))
     (544 544 (:REWRITE |(equal (- x) c)|))
     (544 544 (:REWRITE |(equal (- x) (- y))|))
     (478 478 (:TYPE-PRESCRIPTION O-FINP))
     (400 40 (:REWRITE |(+ y (+ x z))|))
     (320 200 (:REWRITE |(+ 0 x)|))
     (280 280
          (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
     (255 255
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
     (255 255
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
     (255 255 (:REWRITE |(< (/ x) 0)|))
     (255 255 (:REWRITE |(< (* x y) 0)|))
     (200 40 (:REWRITE |(+ y x)|))
     (160 160 (:REWRITE |(< y (+ (- c) x))|))
     (160 160 (:REWRITE |(< x (+ c/d y))|))
     (160 80 (:REWRITE DEFAULT-TIMES-2))
     (118 118
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
     (118 118
          (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
     (118 118 (:REWRITE |(< 0 (/ x))|))
     (118 118 (:REWRITE |(< 0 (* x y))|))
     (80 80
         (:TYPE-PRESCRIPTION FN-COUNT-EVG-REC-TYPE-PRESCRIPTION))
     (80 80
         (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
     (80 80 (:REWRITE DEFAULT-TIMES-1))
     (80 80 (:REWRITE DEFAULT-COERCE-2))
     (80 80 (:REWRITE DEFAULT-COERCE-1))
     (80 80 (:DEFINITION FIX))
     (80 40 (:REWRITE BUBBLE-DOWN-+-MATCH-1))
     (63 63 (:TYPE-PRESCRIPTION MEMBER-EQUAL))
     (63 63
         (:TYPE-PRESCRIPTION INTERSECTP-EQUAL))
     (48 6 (:DEFINITION STRIP-ANCESTOR-LITERALS))
     (42 42
         (:TYPE-PRESCRIPTION EARLIER-ANCESTOR-BIGGERP))
     (40 40 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
     (40 40 (:REWRITE INTEGERP==>NUMERATOR-=-X))
     (40 40
         (:REWRITE INTEGERP==>DENOMINATOR-=-1))
     (40 40 (:REWRITE DEFAULT-SYMBOL-NAME))
     (40 40 (:REWRITE DEFAULT-REALPART))
     (40 40
         (:REWRITE DEFAULT-RATIONAL-NUMERATOR))
     (40 40
         (:REWRITE DEFAULT-RATIONAL-DENOMINATOR))
     (40 40 (:REWRITE DEFAULT-MINUS))
     (40 40 (:REWRITE DEFAULT-IMAGPART))
     (40 40 (:REWRITE |(< (+ c/d x) y)|))
     (40 40 (:REWRITE |(< (+ (- c) x) y)|))
     (40 40 (:REWRITE |(+ x (- x))|)))
(|(r32 addr (init_pdts-modify-outer-loop-1 i s))|
 (53031 17
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (22349 12599 (:REWRITE DEFAULT-PLUS-2))
 (16001 12599 (:REWRITE DEFAULT-PLUS-1))
 (6019 154
       (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (5620 5620
       (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (5620 5620 (:REWRITE NORMALIZE-ADDENDS))
 (2377 2377
       (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (2377 2377 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (2377 2377 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (2377 2377
       (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (883
   883
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (883
  883
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (883 883
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (883
     883
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (883 883
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (883 883
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (872 1
      (:REWRITE |(y86-p (init_pdts-modify-outer-loop-1 i s))|))
 (650
  650
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (650
  650
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (334 154 (:REWRITE DEFAULT-LESS-THAN-1))
 (215 77 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (154 154 (:REWRITE THE-FLOOR-BELOW))
 (154 154 (:REWRITE THE-FLOOR-ABOVE))
 (154 154
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (154 154
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (154 154 (:REWRITE DEFAULT-LESS-THAN-2))
 (147 77
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (84 4 (:REWRITE DISJOINT-6-ITEMS))
 (77 77 (:REWRITE SIMPLIFY-SUMS-<))
 (77 77
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (77 77 (:REWRITE INTEGERP-<-CONSTANT))
 (77 77 (:REWRITE CONSTANT-<-INTEGERP))
 (77 77
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (77 77
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (77 77
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (77 77
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (77 77 (:REWRITE |(< c (- x))|))
 (77 77
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (77 77
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (77 77
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (77 77
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (77 77 (:REWRITE |(< (/ x) (/ y))|))
 (77 77 (:REWRITE |(< (- x) c)|))
 (77 77 (:REWRITE |(< (- x) (- y))|))
 (77 77 (:REWRITE |(< (+ c/d x) y)|))
 (37 37
     (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (4 4 (:REWRITE REDUCE-INTEGERP-+))
 (4 4 (:REWRITE INTEGERP-MINUS-X))
 (4 4 (:META META-INTEGERP-CORRECT))
 (2 1
    (:REWRITE |(paging-p (init_pdts-modify-outer-loop-1 i s))|)))
(|(r32 addr (init_pdts-modify-outer-loop-1 i s)) --- written to 1|
 (507809 171
         (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (353496 202184 (:REWRITE DEFAULT-PLUS-2))
 (263954 202184 (:REWRITE DEFAULT-PLUS-1))
 (127942 156
         (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (91171 87427 (:REWRITE NORMALIZE-ADDENDS))
 (87115 87115
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (38020 1149
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (31716 31716
        (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (31716 31716
        (:REWRITE INIT_PDTS-LOADED-THM-32))
 (31716 31716
        (:REWRITE INIT_PDPT-LOADED-THM-32))
 (31716 31716
        (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (30438
  8208
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (26496 636 (:REWRITE SIMPLIFY-SUMS-<))
 (25416
  8208
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (20007
   20007
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (20007
  20007
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (20007
      20007
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (20007
     20007
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (20007 20007
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (20007 20007
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (13576 24
        (:REWRITE |(y86-p (init_pdts-modify-outer-loop-1 i s))|))
 (12177 1386
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (2840 812 (:REWRITE CONSTANT-<-INTEGERP))
 (2762 734 (:REWRITE INTEGERP-<-CONSTANT))
 (2497 2497
       (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (2497 2497
       (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (2276 1386 (:REWRITE DEFAULT-LESS-THAN-1))
 (1872 156 (:REWRITE |(* y (* x z))|))
 (1698 1386 (:REWRITE DEFAULT-LESS-THAN-2))
 (1658 636
       (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (1480 636
       (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (1404 468 (:DEFINITION FIX))
 (1386 1386 (:REWRITE THE-FLOOR-BELOW))
 (1386 1386 (:REWRITE THE-FLOOR-ABOVE))
 (1318 694 (:REWRITE DEFAULT-TIMES-2))
 (1149 1149
       (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (936 312 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (812 812
      (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (812 812
      (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (812 812
      (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (812 812
      (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (812 812 (:REWRITE |(< c (- x))|))
 (812 812
      (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (812 812
      (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (812 812
      (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (812 812
      (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (812 812 (:REWRITE |(< (/ x) (/ y))|))
 (812 812 (:REWRITE |(< (- x) c)|))
 (812 812 (:REWRITE |(< (- x) (- y))|))
 (694 694 (:REWRITE DEFAULT-TIMES-1))
 (656 656
      (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (624 312 (:REWRITE BUBBLE-DOWN-+-MATCH-1))
 (507 507 (:REWRITE |(< (+ c/d x) y)|))
 (480 480 (:REWRITE FOLD-CONSTS-IN-+))
 (402 81 (:REWRITE |(* c (* d x))|))
 (390 390 (:REWRITE |(* (- x) y)|))
 (312 312 (:REWRITE |(+ x (- x))|))
 (298 298
      (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (237 237 (:TYPE-PRESCRIPTION ABS))
 (230 22 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (230 22
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (230 22
      (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (176 16 (:REWRITE DISJOINT-6-ITEMS))
 (170 170 (:REWRITE |(< (+ (- c) x) y)|))
 (156 156
      (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (156 156
      (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (156 156
      (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (156 156
      (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (156 156 (:REWRITE |(* a (/ a) b)|))
 (122 122
      (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (116 116 (:REWRITE |(< (* x y) 0)|))
 (99 99 (:REWRITE DEFAULT-LOGIOR-2))
 (99 99 (:REWRITE DEFAULT-LOGIOR-1))
 (86 86 (:REWRITE |(< y (+ (- c) x))|))
 (86 86 (:REWRITE |(< x (+ c/d y))|))
 (78 78
     (:REWRITE |(< x (/ y)) with (< y 0)|))
 (78 78
     (:REWRITE |(< x (/ y)) with (< 0 y)|))
 (30 30 (:REWRITE |(< (/ x) 0)|))
 (26 26 (:LINEAR LOGIOR-BOUNDS-NEG . 2))
 (22 22
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (22 22
     (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (22 22
     (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (22 22 (:REWRITE |(equal c (/ x))|))
 (22 22 (:REWRITE |(equal c (- x))|))
 (22 22 (:REWRITE |(equal (/ x) c)|))
 (22 22 (:REWRITE |(equal (/ x) (/ y))|))
 (22 22 (:REWRITE |(equal (- x) c)|))
 (22 22 (:REWRITE |(equal (- x) (- y))|))
 (20 20
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (20 20
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (20 20 (:REWRITE REDUCE-INTEGERP-+))
 (20 20 (:REWRITE INTEGERP-MINUS-X))
 (20 20 (:META META-INTEGERP-CORRECT))
 (16 8
     (:REWRITE |(paging-p (init_pdts-modify-outer-loop-1 i s))|))
 (14 14 (:REWRITE |(< 0 (* x y))|))
 (11 11
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (11 11
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (11 11 (:REWRITE |(< 0 (/ x))|))
 (3 3
    (:REWRITE |(< 0 (* x y)) rationalp (* x y)|))
 (3 3 (:REWRITE |(* 1 x)|)))
(|(r32 addr (init_pdts-modify-outer-loop-1 i s)) --- written to 2|
 (507809 171
         (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (359734 204694 (:REWRITE DEFAULT-PLUS-2))
 (267808 204694 (:REWRITE DEFAULT-PLUS-1))
 (134054 156
         (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (92105 88361 (:REWRITE NORMALIZE-ADDENDS))
 (88049 88049
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (57511 1230
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (33714
  8208
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (31732 31732
        (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (31732 31732
        (:REWRITE INIT_PDTS-LOADED-THM-32))
 (31732 31732
        (:REWRITE INIT_PDPT-LOADED-THM-32))
 (31732 31732
        (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (31068
  8208
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (27535 625 (:REWRITE SIMPLIFY-SUMS-<))
 (20007
   20007
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (20007
  20007
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (20007
      20007
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (20007
     20007
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (20007 20007
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (20007 20007
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (13576 24
        (:REWRITE |(y86-p (init_pdts-modify-outer-loop-1 i s))|))
 (13008 1464
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (3120 234 (:REWRITE |(* y (* x z))|))
 (2829 801 (:REWRITE CONSTANT-<-INTEGERP))
 (2751 723 (:REWRITE INTEGERP-<-CONSTANT))
 (2538 1464 (:REWRITE DEFAULT-LESS-THAN-1))
 (1932 1464 (:REWRITE DEFAULT-LESS-THAN-2))
 (1748 812 (:REWRITE DEFAULT-TIMES-2))
 (1743 625
       (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (1565 625
       (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (1464 1464 (:REWRITE THE-FLOOR-BELOW))
 (1464 1464 (:REWRITE THE-FLOOR-ABOVE))
 (1404 468 (:DEFINITION FIX))
 (1354 1354 (:REWRITE FOLD-CONSTS-IN-+))
 (1230 1230
       (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (936 312 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (812 812 (:REWRITE DEFAULT-TIMES-1))
 (801 801
      (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (801 801
      (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (801 801
      (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (801 801
      (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (801 801 (:REWRITE |(< c (- x))|))
 (801 801
      (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (801 801
      (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (801 801
      (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (801 801
      (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (801 801 (:REWRITE |(< (/ x) (/ y))|))
 (801 801 (:REWRITE |(< (- x) c)|))
 (801 801 (:REWRITE |(< (- x) (- y))|))
 (645 645
      (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (624 312 (:REWRITE BUBBLE-DOWN-+-MATCH-1))
 (599 599 (:REWRITE |(< (+ c/d x) y)|))
 (468 468 (:REWRITE |(* (- x) y)|))
 (390 78 (:REWRITE |(* c (* d x))|))
 (344 344
      (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (312 312 (:REWRITE |(+ x (- x))|))
 (234 234
      (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (234 234
      (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (234 234
      (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (234 234
      (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (234 234 (:TYPE-PRESCRIPTION ABS))
 (176 16 (:REWRITE DISJOINT-6-ITEMS))
 (170 170 (:REWRITE |(< (+ (- c) x) y)|))
 (156 156 (:REWRITE |(< x (+ c/d y))|))
 (156 156 (:REWRITE |(* a (/ a) b)|))
 (132 22
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (132 22
      (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (132 22 (:REWRITE O-INFP->NEQ-0))
 (122 122
      (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (116 116 (:REWRITE |(< (* x y) 0)|))
 (78 78 (:REWRITE |(< y (+ (- c) x))|))
 (78 78
     (:REWRITE |(< x (/ y)) with (< y 0)|))
 (78 78
     (:REWRITE |(< x (/ y)) with (< 0 y)|))
 (30 30 (:REWRITE |(< (/ x) 0)|))
 (22 22
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (22 22 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (22 22
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (22 22
     (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (22 22
     (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (22 22 (:REWRITE |(equal c (/ x))|))
 (22 22 (:REWRITE |(equal c (- x))|))
 (22 22 (:REWRITE |(equal (/ x) c)|))
 (22 22 (:REWRITE |(equal (/ x) (/ y))|))
 (22 22 (:REWRITE |(equal (- x) c)|))
 (22 22 (:REWRITE |(equal (- x) (- y))|))
 (20 20
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (20 20
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (20 20 (:REWRITE REDUCE-INTEGERP-+))
 (20 20 (:REWRITE INTEGERP-MINUS-X))
 (20 20 (:META META-INTEGERP-CORRECT))
 (16 8
     (:REWRITE |(paging-p (init_pdts-modify-outer-loop-1 i s))|)))
(|(good-state-p (init_pdts-modify-outer-loop-1 i s))|
 (74953 27
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (34879 18879 (:REWRITE DEFAULT-PLUS-2))
 (23197 18879 (:REWRITE DEFAULT-PLUS-1))
 (19771 274
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (8694 8694
       (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (8694 8694 (:REWRITE NORMALIZE-ADDENDS))
 (7932 24
       (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (7202 142
       (:REWRITE |(memoryp (g :mem (init_pdts-modify-inner-loop-1 i j s)))|))
 (4537 4537
       (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (4537 4537 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (4537 4537 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (4537 4537
       (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (3516 24
       (:REWRITE |(memoryp (g :mem (init_pdts-modify-outer-loop-1 i s)))|))
 (2675
   2675
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (2675
  2675
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (2675
      2675
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (2675
     2675
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (2675 2675
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (2675 2675
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (893
  893
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (893
  893
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (746 274 (:REWRITE DEFAULT-LESS-THAN-1))
 (661 1
      (:REWRITE |(y86-p (init_pdts-modify-outer-loop-1 i s))|))
 (429 137
      (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (369 137
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (274 274 (:REWRITE THE-FLOOR-BELOW))
 (274 274 (:REWRITE THE-FLOOR-ABOVE))
 (274 274
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (274 274
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (274 274 (:REWRITE DEFAULT-LESS-THAN-2))
 (137 137 (:REWRITE SIMPLIFY-SUMS-<))
 (137 137
      (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (137 137 (:REWRITE INTEGERP-<-CONSTANT))
 (137 137 (:REWRITE CONSTANT-<-INTEGERP))
 (137 137
      (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (137 137
      (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (137 137
      (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (137 137
      (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (137 137 (:REWRITE |(< c (- x))|))
 (137 137
      (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (137 137
      (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (137 137
      (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (137 137
      (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (137 137 (:REWRITE |(< (/ x) (/ y))|))
 (137 137 (:REWRITE |(< (- x) c)|))
 (137 137 (:REWRITE |(< (- x) (- y))|))
 (137 137 (:REWRITE |(< (+ c/d x) y)|))
 (88 8 (:REWRITE DISJOINT-7-ITEMS))
 (38 38
     (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (16 16 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (16 16 (:REWRITE |(< (* x y) 0)|)))
(|(init_pdts-modify-outer-loop-1 i (w32 addr val s))|
 (118732 48
         (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (37245 20167 (:REWRITE DEFAULT-PLUS-2))
 (25081 20167 (:REWRITE DEFAULT-PLUS-1))
 (20199 288
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (9209 9209
       (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (9209 9209 (:REWRITE NORMALIZE-ADDENDS))
 (8088 56
       (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (7202 142
       (:REWRITE |(memoryp (g :mem (init_pdts-modify-inner-loop-1 i j s)))|))
 (4641 4641
       (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (4641 4641 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (4641 4641 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (4641 4641
       (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (3516 24
       (:REWRITE |(memoryp (g :mem (init_pdts-modify-outer-loop-1 i s)))|))
 (2783
   2783
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (2783
  2783
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (2783
      2783
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (2783
     2783
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (2783 2783
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (2783 2783
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (873
  873
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (873
  873
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (762 288 (:REWRITE DEFAULT-LESS-THAN-1))
 (643 1
      (:REWRITE |(y86-p (init_pdts-modify-outer-loop-1 i s))|))
 (545 19 (:REWRITE DISJOINT-5-ITEMS))
 (439 145
      (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (379 145
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (335 21
      (:REWRITE |(good-32-address-p addr st)|))
 (302 8
      (:REWRITE |(r32 addr1 (w32 addr2 val st)) --- not paging|))
 (288 288 (:REWRITE THE-FLOOR-BELOW))
 (288 288 (:REWRITE THE-FLOOR-ABOVE))
 (288 288
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (288 288
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (288 288 (:REWRITE DEFAULT-LESS-THAN-2))
 (145 145 (:REWRITE SIMPLIFY-SUMS-<))
 (145 145
      (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (145 145 (:REWRITE INTEGERP-<-CONSTANT))
 (145 145 (:REWRITE CONSTANT-<-INTEGERP))
 (145 145
      (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (145 145
      (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (145 145
      (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (145 145
      (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (145 145 (:REWRITE |(< c (- x))|))
 (145 145
      (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (145 145
      (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (145 145
      (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (145 145
      (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (145 145 (:REWRITE |(< (/ x) (/ y))|))
 (145 145 (:REWRITE |(< (- x) c)|))
 (145 145 (:REWRITE |(< (- x) (- y))|))
 (143 143 (:REWRITE |(< (+ c/d x) y)|))
 (110 8
      (:REWRITE |(r32 addr1 (w32 addr2 val st)) --- paging|))
 (88 8 (:REWRITE DISJOINT-7-ITEMS))
 (81 9 (:REWRITE |(y86-p (w32 addr val s))|))
 (70 54
     (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (44 12 (:REWRITE ACL2-NUMBERP-X))
 (42 6
     (:REWRITE |(memoryp (g :mem (w32 addr val st)))|))
 (40 4
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (28 28
     (:REWRITE |(g field (w32 addr val st))|))
 (27 27 (:REWRITE REDUCE-INTEGERP-+))
 (27 27 (:REWRITE INTEGERP-MINUS-X))
 (27 27 (:META META-INTEGERP-CORRECT))
 (25 25
     (:TYPE-PRESCRIPTION GOOD-32-ADDRESS-P))
 (22 2 (:REWRITE DISJOINT-3-ITEMS))
 (22 2
     (:REWRITE |(n32p (r32 addr (g :mem st)))|))
 (18 18 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (18 18 (:REWRITE |(< (* x y) 0)|))
 (16 4 (:REWRITE RATIONALP-X))
 (8 8 (:REWRITE |(va-to-pa addr st)|))
 (8 4 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (8 4
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (4 4 (:REWRITE REDUCE-RATIONALP-+))
 (4 4 (:REWRITE REDUCE-RATIONALP-*))
 (4 4
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (4 4
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (4 4 (:REWRITE RATIONALP-MINUS-X))
 (4 4
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (4 4 (:REWRITE |(equal c (/ x))|))
 (4 4 (:REWRITE |(equal c (- x))|))
 (4 4 (:REWRITE |(equal (/ x) c)|))
 (4 4 (:REWRITE |(equal (/ x) (/ y))|))
 (4 4 (:REWRITE |(equal (- x) c)|))
 (4 4 (:REWRITE |(equal (- x) (- y))|))
 (4 4 (:META META-RATIONALP-CORRECT))
 (2 2
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (2 2
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (2 2 (:REWRITE |(< (/ x) 0)|)))
(INIT_PDTS-MODIFY-INNER-LOOP)
(INIT_PDTS-MODIFY-OUTER-LOOP)
(INIT_PDTS-MODIFY)
(|(paging-p (init_pdts-modify s))|
 (228 44 (:REWRITE ACL2-NUMBERP-X))
 (162 4 (:REWRITE |(< (if a b c) x)|))
 (139 1
      (:DEFINITION INIT_PDTS-MODIFY-OUTER-LOOP-1))
 (138 1
      (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (131 9 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (111 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (109 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (92 23 (:REWRITE RATIONALP-X))
 (64 43 (:REWRITE DEFAULT-PLUS-1))
 (42 18
     (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
 (29 29
     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (29 29 (:REWRITE NORMALIZE-ADDENDS))
 (27 5 (:REWRITE |(+ c (+ d x))|))
 (23 23 (:REWRITE REDUCE-RATIONALP-+))
 (23 23 (:REWRITE REDUCE-RATIONALP-*))
 (23 23 (:REWRITE REDUCE-INTEGERP-+))
 (23 23 (:REWRITE RATIONALP-MINUS-X))
 (23 23 (:REWRITE INTEGERP-MINUS-X))
 (23 23 (:META META-RATIONALP-CORRECT))
 (23 23 (:META META-INTEGERP-CORRECT))
 (18 18 (:TYPE-PRESCRIPTION R32))
 (15 13 (:REWRITE DEFAULT-LESS-THAN-1))
 (13 13 (:REWRITE THE-FLOOR-BELOW))
 (13 13 (:REWRITE THE-FLOOR-ABOVE))
 (13 13 (:REWRITE DEFAULT-LESS-THAN-2))
 (9 9
    (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (9 9
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (7 7
    (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (7 7 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (7 7 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (7 7
    (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (7 5
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (7 5 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (6 4
    (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (6 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 2
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 2
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (5 5 (:REWRITE SIMPLIFY-SUMS-<))
 (5 5 (:REWRITE REMOVE-STRICT-INEQUALITIES))
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
 (5 5 (:REWRITE |(< (/ x) (/ y))|))
 (5 5 (:REWRITE |(< (- x) c)|))
 (5 5 (:REWRITE |(< (- x) (- y))|))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (4
   4
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (4
  4
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (4 4 (:REWRITE |(< (+ c/d x) y)|))
 (4 4 (:REWRITE |(+ 0 x)|))
 (3 3 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (2 2 (:TYPE-PRESCRIPTION Y86-P))
 (2 2
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (2 2
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (2 2
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (2 2 (:REWRITE |(equal c (/ x))|))
 (2 2 (:REWRITE |(equal c (- x))|))
 (2 2 (:REWRITE |(equal (/ x) c)|))
 (2 2 (:REWRITE |(equal (/ x) (/ y))|))
 (2 2 (:REWRITE |(equal (- x) c)|))
 (2 2 (:REWRITE |(equal (- x) (- y))|))
 (2 2 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2
    (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (* x y) 0)|)))
(|(va-to-pa addr (init_pdts-modify s))|
 (228 44 (:REWRITE ACL2-NUMBERP-X))
 (162 4 (:REWRITE |(< (if a b c) x)|))
 (139 1
      (:DEFINITION INIT_PDTS-MODIFY-OUTER-LOOP-1))
 (138 1
      (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (131 9 (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (111 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (109 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (92 23 (:REWRITE RATIONALP-X))
 (64 43 (:REWRITE DEFAULT-PLUS-1))
 (42 18
     (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
 (38 38 (:TYPE-PRESCRIPTION VA-TO-PA))
 (29 29
     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (29 29 (:REWRITE NORMALIZE-ADDENDS))
 (27 5 (:REWRITE |(+ c (+ d x))|))
 (23 23 (:REWRITE REDUCE-RATIONALP-+))
 (23 23 (:REWRITE REDUCE-RATIONALP-*))
 (23 23 (:REWRITE REDUCE-INTEGERP-+))
 (23 23 (:REWRITE RATIONALP-MINUS-X))
 (23 23 (:REWRITE INTEGERP-MINUS-X))
 (23 23 (:META META-RATIONALP-CORRECT))
 (23 23 (:META META-INTEGERP-CORRECT))
 (18 18 (:TYPE-PRESCRIPTION R32))
 (15 13 (:REWRITE DEFAULT-LESS-THAN-1))
 (13 13 (:REWRITE THE-FLOOR-BELOW))
 (13 13 (:REWRITE THE-FLOOR-ABOVE))
 (13 13 (:REWRITE DEFAULT-LESS-THAN-2))
 (9 9
    (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (9 9
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (7 7
    (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (7 7 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (7 7 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (7 7
    (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (7 5
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (7 5 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (6 4
    (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (6 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 2
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 2
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (5 5 (:REWRITE SIMPLIFY-SUMS-<))
 (5 5 (:REWRITE REMOVE-STRICT-INEQUALITIES))
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
 (5 5 (:REWRITE |(< (/ x) (/ y))|))
 (5 5 (:REWRITE |(< (- x) c)|))
 (5 5 (:REWRITE |(< (- x) (- y))|))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (4
   4
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (4
  4
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (4 4 (:REWRITE |(< (+ c/d x) y)|))
 (4 4 (:REWRITE |(+ 0 x)|))
 (3 3 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (2 2 (:TYPE-PRESCRIPTION Y86-P))
 (2 2
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (2 2
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (2 2
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (2 2 (:REWRITE |(equal c (/ x))|))
 (2 2 (:REWRITE |(equal c (- x))|))
 (2 2 (:REWRITE |(equal (/ x) c)|))
 (2 2 (:REWRITE |(equal (/ x) (/ y))|))
 (2 2 (:REWRITE |(equal (- x) c)|))
 (2 2 (:REWRITE |(equal (- x) (- y))|))
 (2 2 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2
    (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (* x y) 0)|)))
(|(good-32-address-p addr (init_pdts-modify s))|
 (228 44 (:REWRITE ACL2-NUMBERP-X))
 (211 15
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (188 7 (:REWRITE |(n32p x)|))
 (162 4 (:REWRITE |(< (if a b c) x)|))
 (139 1
      (:DEFINITION INIT_PDTS-MODIFY-OUTER-LOOP-1))
 (138 1
      (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (111 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (109 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (92 23 (:REWRITE RATIONALP-X))
 (74 53 (:REWRITE DEFAULT-PLUS-1))
 (42 18
     (:TYPE-PRESCRIPTION |(n32p (r32 addr (g :mem st)))|))
 (37 2
     (:REWRITE |(good-32-address-p addr st)|))
 (35 7 (:REWRITE |(+ c (+ d x))|))
 (33 33
     (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (33 33 (:REWRITE NORMALIZE-ADDENDS))
 (24 24 (:REWRITE REDUCE-INTEGERP-+))
 (24 24 (:REWRITE INTEGERP-MINUS-X))
 (24 24 (:META META-INTEGERP-CORRECT))
 (23 23 (:REWRITE REDUCE-RATIONALP-+))
 (23 23 (:REWRITE REDUCE-RATIONALP-*))
 (23 23 (:REWRITE RATIONALP-MINUS-X))
 (23 23 (:META META-RATIONALP-CORRECT))
 (22 2 (:REWRITE |(+ y (+ x z))|))
 (21 19 (:REWRITE DEFAULT-LESS-THAN-1))
 (19 19 (:REWRITE THE-FLOOR-BELOW))
 (19 19 (:REWRITE THE-FLOOR-ABOVE))
 (19 19 (:REWRITE DEFAULT-LESS-THAN-2))
 (18 18 (:TYPE-PRESCRIPTION R32))
 (15 15
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (15 15
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (11 9
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (11 9 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (9 9 (:REWRITE SIMPLIFY-SUMS-<))
 (9 9 (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (9 9 (:REWRITE INTEGERP-<-CONSTANT))
 (9 9 (:REWRITE CONSTANT-<-INTEGERP))
 (9 9
    (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (9 9
    (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (9 9
    (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (9 9
    (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (9 9 (:REWRITE |(< c (- x))|))
 (9 9
    (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (9 9
    (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (9 9
    (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (9 9
    (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (9 9 (:REWRITE |(< (/ x) (/ y))|))
 (9 9 (:REWRITE |(< (- x) c)|))
 (9 9 (:REWRITE |(< (- x) (- y))|))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (8
   8
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (8
  8
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (8 8
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (7 7
    (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (7 7 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (7 7 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (7 7
    (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (6 6 (:REWRITE |(< (+ c/d x) y)|))
 (6 6 (:REWRITE |(+ 0 x)|))
 (6 4
    (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (6 2 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 2
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 2
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (3 3 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (2 2 (:TYPE-PRESCRIPTION Y86-P))
 (2 2 (:TYPE-PRESCRIPTION N32P))
 (2 2
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (2 2
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (2 2
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (2 2 (:REWRITE |(equal c (/ x))|))
 (2 2 (:REWRITE |(equal c (- x))|))
 (2 2 (:REWRITE |(equal (/ x) c)|))
 (2 2 (:REWRITE |(equal (/ x) (/ y))|))
 (2 2 (:REWRITE |(equal (- x) c)|))
 (2 2 (:REWRITE |(equal (- x) (- y))|))
 (2 2 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2
    (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (* x y) 0)|)))
(|(y86-p (init_pdts-modify s))|
 (11629 1
        (:DEFINITION INIT_PDTS-MODIFY-OUTER-LOOP-1))
 (11628 1
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (11566 4
        (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (6584 4 (:REWRITE DISJOINT-6-ITEMS))
 (2701 1980 (:REWRITE DEFAULT-PLUS-2))
 (2371 1980 (:REWRITE DEFAULT-PLUS-1))
 (813 813
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (813 813 (:REWRITE NORMALIZE-ADDENDS))
 (507 24
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (342 22 (:REWRITE |(+ y (+ x z))|))
 (153 153
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (153 153 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (153 153 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (153 153
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (111
  111
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (111
  111
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (68
   68
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (68
  68
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (68 68
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (68 68
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (68 68
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (68 68
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (44 24 (:REWRITE DEFAULT-LESS-THAN-1))
 (25 24 (:REWRITE DEFAULT-LESS-THAN-2))
 (25 13
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (25 13 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (24 24 (:REWRITE THE-FLOOR-BELOW))
 (24 24 (:REWRITE THE-FLOOR-ABOVE))
 (24 24
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (24 24
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (16 13
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (15 13 (:REWRITE SIMPLIFY-SUMS-<))
 (13 13 (:REWRITE INTEGERP-<-CONSTANT))
 (13 13 (:REWRITE CONSTANT-<-INTEGERP))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< c (- x))|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< (/ x) (/ y))|))
 (13 13 (:REWRITE |(< (- x) c)|))
 (13 13 (:REWRITE |(< (- x) (- y))|))
 (12 12 (:REWRITE |(< (+ c/d x) y)|))
 (11 1 (:REWRITE DISJOINT-7-ITEMS))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(|(memoryp (g :mem (init_pdts-modify s)))|
 (11629 1
        (:DEFINITION INIT_PDTS-MODIFY-OUTER-LOOP-1))
 (11628 1
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (11566 4
        (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (6584 4 (:REWRITE DISJOINT-6-ITEMS))
 (2701 1980 (:REWRITE DEFAULT-PLUS-2))
 (2371 1980 (:REWRITE DEFAULT-PLUS-1))
 (813 813
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (813 813 (:REWRITE NORMALIZE-ADDENDS))
 (507 24
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (342 22 (:REWRITE |(+ y (+ x z))|))
 (153 153
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (153 153 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (153 153 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (153 153
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (111
  111
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (111
  111
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (55
   55
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (55
  55
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (55 55
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (55 55
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (55 55
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (55 55
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (44 24 (:REWRITE DEFAULT-LESS-THAN-1))
 (25 24 (:REWRITE DEFAULT-LESS-THAN-2))
 (25 13
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (25 13 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (24 24 (:REWRITE THE-FLOOR-BELOW))
 (24 24 (:REWRITE THE-FLOOR-ABOVE))
 (24 24
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (24 24
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (16 13
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (15 13 (:REWRITE SIMPLIFY-SUMS-<))
 (13 13 (:REWRITE INTEGERP-<-CONSTANT))
 (13 13 (:REWRITE CONSTANT-<-INTEGERP))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< c (- x))|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< (/ x) (/ y))|))
 (13 13 (:REWRITE |(< (- x) c)|))
 (13 13 (:REWRITE |(< (- x) (- y))|))
 (12 12
     (:REWRITE |(g field (w32 addr val st))|))
 (12 12 (:REWRITE |(< (+ c/d x) y)|))
 (11 1 (:REWRITE DISJOINT-7-ITEMS))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (3 3
    (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(|(good-state-p (init_pdts-modify s))|
 (58145 5
        (:DEFINITION INIT_PDTS-MODIFY-OUTER-LOOP-1))
 (58140 5
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (57830 20
        (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (40849 36143 (:REWRITE DEFAULT-PLUS-2))
 (37854 36143 (:REWRITE DEFAULT-PLUS-1))
 (32920 20 (:REWRITE DISJOINT-6-ITEMS))
 (17180 20 (:REWRITE DISJOINT-5-ITEMS))
 (15049 15049
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (15049 15049 (:REWRITE NORMALIZE-ADDENDS))
 (2795 136
       (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (2089
  2089
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (2089
  2089
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (1622
   1622
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (1622
  1622
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (1622
      1622
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (1622
     1622
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (1622 1622
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (1622 1622
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (1506 1506
       (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (1506 1506 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (1506 1506 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (1506 1506
       (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (701 15 (:REWRITE |(n32-to-i32 x) --- 2|))
 (687 15 (:REWRITE |(n32-to-i32 x) --- 1|))
 (234 136 (:REWRITE DEFAULT-LESS-THAN-1))
 (141 136 (:REWRITE DEFAULT-LESS-THAN-2))
 (136 136 (:REWRITE THE-FLOOR-BELOW))
 (136 136 (:REWRITE THE-FLOOR-ABOVE))
 (136 136
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (136 136
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (131 73
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (131 73 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (90 73
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (83 73 (:REWRITE SIMPLIFY-SUMS-<))
 (73 73 (:REWRITE INTEGERP-<-CONSTANT))
 (73 73 (:REWRITE CONSTANT-<-INTEGERP))
 (73 73
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (73 73
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (73 73
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (73 73
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (73 73 (:REWRITE |(< c (- x))|))
 (73 73
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (73 73
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (73 73
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (73 73
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (73 73 (:REWRITE |(< (/ x) (/ y))|))
 (73 73 (:REWRITE |(< (- x) c)|))
 (73 73 (:REWRITE |(< (- x) (- y))|))
 (68 68 (:REWRITE |(< (+ c/d x) y)|))
 (31 29 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (26 15 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (26 15
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (26 15
     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (19 19
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (15 15
     (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (15 15 (:REWRITE |(equal c (/ x))|))
 (15 15 (:REWRITE |(equal c (- x))|))
 (15 15 (:REWRITE |(equal (/ x) c)|))
 (15 15 (:REWRITE |(equal (/ x) (/ y))|))
 (15 15 (:REWRITE |(equal (- x) c)|))
 (15 15 (:REWRITE |(equal (- x) (- y))|))
 (11 11 (:REWRITE |(equal (+ (- c) x) y)|))
 (10 10
     (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (10 10 (:REWRITE |(< (* x y) 0)|))
 (5 5
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (5 5
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (5 5 (:REWRITE |(< (/ x) 0)|))
 (5 5 (:REWRITE |(< (+ (- c) x) y)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1 (:REWRITE O-INFP->NEQ-0)))
(|(g :cr0 (init_pdts-modify s))|
 (11629 1
        (:DEFINITION INIT_PDTS-MODIFY-OUTER-LOOP-1))
 (11628 1
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (11566 4
        (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (9718 101
       (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (7261
  845
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (6584 4 (:REWRITE DISJOINT-6-ITEMS))
 (3504 224 (:REWRITE |(+ (+ x y) z)|))
 (3436 4 (:REWRITE DISJOINT-5-ITEMS))
 (2377 1743 (:REWRITE DEFAULT-PLUS-2))
 (2086 1743 (:REWRITE DEFAULT-PLUS-1))
 (933 933 (:TYPE-PRESCRIPTION SUBRANGEP))
 (932 732 (:REWRITE NTH-ADD1))
 (828 35 (:REWRITE |(n32p x)|))
 (819 144 (:REWRITE |(+ c (+ d x))|))
 (717 717
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (717 717 (:REWRITE NORMALIZE-ADDENDS))
 (507 24
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (342 22 (:REWRITE |(+ y (+ x z))|))
 (308 183 (:REWRITE |(+ 0 x)|))
 (290 290 (:REWRITE |(subrangep x x)|))
 (200 200 (:TYPE-PRESCRIPTION RANGE))
 (200 200 (:REWRITE NTH-0-CONS))
 (138 138
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (138 138 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (138 138 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (138 138
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (101
  101
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (101
  101
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (44 24 (:REWRITE DEFAULT-LESS-THAN-1))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (38
   38
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (38
  38
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (25 24 (:REWRITE DEFAULT-LESS-THAN-2))
 (25 13
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (25 13 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (24 24 (:REWRITE THE-FLOOR-BELOW))
 (24 24 (:REWRITE THE-FLOOR-ABOVE))
 (24 24
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (24 24
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (16 13
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (15 13 (:REWRITE SIMPLIFY-SUMS-<))
 (13 13 (:REWRITE INTEGERP-<-CONSTANT))
 (13 13 (:REWRITE CONSTANT-<-INTEGERP))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< c (- x))|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< (/ x) (/ y))|))
 (13 13 (:REWRITE |(< (- x) c)|))
 (13 13 (:REWRITE |(< (- x) (- y))|))
 (12 12 (:REWRITE |(< (+ c/d x) y)|))
 (11 1 (:REWRITE DISJOINT-7-ITEMS))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(|(g :eip (init_pdts-modify s))|
 (11629 1
        (:DEFINITION INIT_PDTS-MODIFY-OUTER-LOOP-1))
 (11628 1
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (11566 4
        (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (9718 101
       (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (7261
  845
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (6584 4 (:REWRITE DISJOINT-6-ITEMS))
 (3504 224 (:REWRITE |(+ (+ x y) z)|))
 (3436 4 (:REWRITE DISJOINT-5-ITEMS))
 (2377 1743 (:REWRITE DEFAULT-PLUS-2))
 (2086 1743 (:REWRITE DEFAULT-PLUS-1))
 (933 933 (:TYPE-PRESCRIPTION SUBRANGEP))
 (932 732 (:REWRITE NTH-ADD1))
 (828 35 (:REWRITE |(n32p x)|))
 (819 144 (:REWRITE |(+ c (+ d x))|))
 (717 717
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (717 717 (:REWRITE NORMALIZE-ADDENDS))
 (507 24
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (342 22 (:REWRITE |(+ y (+ x z))|))
 (308 183 (:REWRITE |(+ 0 x)|))
 (290 290 (:REWRITE |(subrangep x x)|))
 (200 200 (:TYPE-PRESCRIPTION RANGE))
 (200 200 (:REWRITE NTH-0-CONS))
 (139 139
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (139 139 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (139 139 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (139 139
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (101
  101
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (101
  101
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (44 24 (:REWRITE DEFAULT-LESS-THAN-1))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (38
   38
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (38
  38
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (25 24 (:REWRITE DEFAULT-LESS-THAN-2))
 (25 13
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (25 13 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (24 24 (:REWRITE THE-FLOOR-BELOW))
 (24 24 (:REWRITE THE-FLOOR-ABOVE))
 (24 24
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (24 24
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (16 13
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (15 13 (:REWRITE SIMPLIFY-SUMS-<))
 (13 13 (:REWRITE INTEGERP-<-CONSTANT))
 (13 13 (:REWRITE CONSTANT-<-INTEGERP))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< c (- x))|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< (/ x) (/ y))|))
 (13 13 (:REWRITE |(< (- x) c)|))
 (13 13 (:REWRITE |(< (- x) (- y))|))
 (12 12 (:REWRITE |(< (+ c/d x) y)|))
 (11 1 (:REWRITE DISJOINT-7-ITEMS))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2
    (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(|(g :ebp (init_pdts-modify s))|
 (11629 1
        (:DEFINITION INIT_PDTS-MODIFY-OUTER-LOOP-1))
 (11628 1
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (11566 4
        (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (9718 101
       (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (7261
  845
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (6584 4 (:REWRITE DISJOINT-6-ITEMS))
 (3504 224 (:REWRITE |(+ (+ x y) z)|))
 (3436 4 (:REWRITE DISJOINT-5-ITEMS))
 (2377 1743 (:REWRITE DEFAULT-PLUS-2))
 (2086 1743 (:REWRITE DEFAULT-PLUS-1))
 (933 933 (:TYPE-PRESCRIPTION SUBRANGEP))
 (932 732 (:REWRITE NTH-ADD1))
 (828 35 (:REWRITE |(n32p x)|))
 (819 144 (:REWRITE |(+ c (+ d x))|))
 (717 717
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (717 717 (:REWRITE NORMALIZE-ADDENDS))
 (507 24
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (342 22 (:REWRITE |(+ y (+ x z))|))
 (308 183 (:REWRITE |(+ 0 x)|))
 (290 290 (:REWRITE |(subrangep x x)|))
 (200 200 (:TYPE-PRESCRIPTION RANGE))
 (200 200 (:REWRITE NTH-0-CONS))
 (138 138
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (138 138 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (138 138 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (138 138
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (101
  101
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (101
  101
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (44 24 (:REWRITE DEFAULT-LESS-THAN-1))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (38
   38
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (38
  38
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (25 24 (:REWRITE DEFAULT-LESS-THAN-2))
 (25 13
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (25 13 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (24 24 (:REWRITE THE-FLOOR-BELOW))
 (24 24 (:REWRITE THE-FLOOR-ABOVE))
 (24 24
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (24 24
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (16 13
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (15 13 (:REWRITE SIMPLIFY-SUMS-<))
 (13 13 (:REWRITE INTEGERP-<-CONSTANT))
 (13 13 (:REWRITE CONSTANT-<-INTEGERP))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< c (- x))|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< (/ x) (/ y))|))
 (13 13 (:REWRITE |(< (- x) c)|))
 (13 13 (:REWRITE |(< (- x) (- y))|))
 (12 12 (:REWRITE |(< (+ c/d x) y)|))
 (11 1 (:REWRITE DISJOINT-7-ITEMS))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2
    (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(|(g :esp (init_pdts-modify s))|
 (11629 1
        (:DEFINITION INIT_PDTS-MODIFY-OUTER-LOOP-1))
 (11628 1
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (11566 4
        (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (9718 101
       (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (7261
  845
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (6584 4 (:REWRITE DISJOINT-6-ITEMS))
 (3504 224 (:REWRITE |(+ (+ x y) z)|))
 (3436 4 (:REWRITE DISJOINT-5-ITEMS))
 (2378 1744 (:REWRITE DEFAULT-PLUS-2))
 (2087 1744 (:REWRITE DEFAULT-PLUS-1))
 (933 933 (:TYPE-PRESCRIPTION SUBRANGEP))
 (932 732 (:REWRITE NTH-ADD1))
 (828 35 (:REWRITE |(n32p x)|))
 (819 144 (:REWRITE |(+ c (+ d x))|))
 (718 718
      (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (718 718 (:REWRITE NORMALIZE-ADDENDS))
 (507 24
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (342 22 (:REWRITE |(+ y (+ x z))|))
 (308 183 (:REWRITE |(+ 0 x)|))
 (290 290 (:REWRITE |(subrangep x x)|))
 (200 200 (:TYPE-PRESCRIPTION RANGE))
 (200 200 (:REWRITE NTH-0-CONS))
 (138 138
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (138 138 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (138 138 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (138 138
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (101
  101
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (101
  101
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (44 24 (:REWRITE DEFAULT-LESS-THAN-1))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-POSITIVE-BASE))
 (38
   38
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (38
  38
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONNEGATIVE-BASE))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (38 38
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE))
 (25 24 (:REWRITE DEFAULT-LESS-THAN-2))
 (25 13
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (25 13 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (24 24 (:REWRITE THE-FLOOR-BELOW))
 (24 24 (:REWRITE THE-FLOOR-ABOVE))
 (24 24
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (24 24
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (16 13
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (15 13 (:REWRITE SIMPLIFY-SUMS-<))
 (13 13 (:REWRITE INTEGERP-<-CONSTANT))
 (13 13 (:REWRITE CONSTANT-<-INTEGERP))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< c (- x))|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (13 13
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (13 13 (:REWRITE |(< (/ x) (/ y))|))
 (13 13 (:REWRITE |(< (- x) c)|))
 (13 13 (:REWRITE |(< (- x) (- y))|))
 (12 12 (:REWRITE |(< (+ c/d x) y)|))
 (11 1 (:REWRITE DISJOINT-7-ITEMS))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2
    (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|)))
(|(r32 addr (init_pdts-modify s))|
 (11629 1
        (:DEFINITION INIT_PDTS-MODIFY-OUTER-LOOP-1))
 (11628 1
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (7067 5281 (:REWRITE DEFAULT-PLUS-2))
 (6260 5281 (:REWRITE DEFAULT-PLUS-1))
 (2131 2131
       (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (2131 2131 (:REWRITE NORMALIZE-ADDENDS))
 (546 26
      (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (379 379
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (379 379 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (379 379 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (379 379
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (259
  259
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (259
  259
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (194
   194
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (194
  194
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (194 194
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (194
     194
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (194 194
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (194 194
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (101 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (99 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (66 66
     (:REWRITE |(g field (w32 addr val st))|))
 (46 26 (:REWRITE DEFAULT-LESS-THAN-1))
 (27 26 (:REWRITE DEFAULT-LESS-THAN-2))
 (26 26 (:REWRITE THE-FLOOR-BELOW))
 (26 26 (:REWRITE THE-FLOOR-ABOVE))
 (26 26
     (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (26 26
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (26 14
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (26 14 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (17 14
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (16 14 (:REWRITE SIMPLIFY-SUMS-<))
 (14 14 (:REWRITE INTEGERP-<-CONSTANT))
 (14 14 (:REWRITE CONSTANT-<-INTEGERP))
 (14 14
     (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (14 14
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (14 14
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (14 14
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (14 14
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (14 14 (:REWRITE |(< c (- x))|))
 (14 14
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (14 14
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (14 14
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (14 14
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (14 14 (:REWRITE |(< (/ x) (/ y))|))
 (14 14 (:REWRITE |(< (- x) c)|))
 (14 14 (:REWRITE |(< (- x) (- y))|))
 (13 13 (:REWRITE |(< (+ c/d x) y)|))
 (11 1 (:REWRITE DISJOINT-7-ITEMS))
 (6 3 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (6 3
    (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (6 3
    (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (5 5 (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (3 3
    (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (3 3
    (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (3 3 (:REWRITE |(equal c (/ x))|))
 (3 3 (:REWRITE |(equal c (- x))|))
 (3 3 (:REWRITE |(equal (/ x) c)|))
 (3 3 (:REWRITE |(equal (/ x) (/ y))|))
 (3 3 (:REWRITE |(equal (- x) c)|))
 (3 3 (:REWRITE |(equal (- x) (- y))|))
 (3 3 (:REWRITE |(equal (+ (- c) x) y)|))
 (2 2 (:REWRITE |(< (* x y) 0)|))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (1 1
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (1 1 (:REWRITE REDUCE-INTEGERP-+))
 (1 1 (:REWRITE O-INFP->NEQ-0))
 (1 1 (:REWRITE INTEGERP-MINUS-X))
 (1 1 (:REWRITE |(< (/ x) 0)|))
 (1 1 (:REWRITE |(< (+ (- c) x) y)|))
 (1 1 (:META META-INTEGERP-CORRECT)))
(|(r32 addr (init_pdts-modify s)) --- written to 1|
 (81406 7
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (54359 39478 (:REWRITE DEFAULT-PLUS-2))
 (48116 39478 (:REWRITE DEFAULT-PLUS-1))
 (16023 15927 (:REWRITE NORMALIZE-ADDENDS))
 (15919 15919
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (2575
  2005
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (2544 2544
       (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (2544 2544 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (2544 2544 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (2544 2544
       (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (2437
  2005
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (2246 120
       (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (1183
   1183
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (1183
  1183
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (1183
      1183
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (1183
     1183
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (1183 1183
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (1183 1183
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (736 68 (:REWRITE SIMPLIFY-SUMS-<))
 (404 12 (:REWRITE |(n32-to-i32 x) --- 2|))
 (400 126
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (396 12 (:REWRITE |(n32-to-i32 x) --- 1|))
 (391 391
      (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (391 391
      (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (264 264
      (:REWRITE |(g field (w32 addr val st))|))
 (210 126 (:REWRITE DEFAULT-LESS-THAN-1))
 (153 153 (:REWRITE FOLD-CONSTS-IN-+))
 (138 126 (:REWRITE DEFAULT-LESS-THAN-2))
 (128 68
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (128 68 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (126 126 (:REWRITE THE-FLOOR-BELOW))
 (126 126 (:REWRITE THE-FLOOR-ABOVE))
 (126 74 (:REWRITE CONSTANT-<-INTEGERP))
 (124 72 (:REWRITE INTEGERP-<-CONSTANT))
 (120 120
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (82 70
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (74 74
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (74 74
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (74 74
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (74 74
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (74 74 (:REWRITE |(< c (- x))|))
 (74 74
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (74 74
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (74 74
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (74 74
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (74 74 (:REWRITE |(< (/ x) (/ y))|))
 (74 74 (:REWRITE |(< (- x) c)|))
 (74 74 (:REWRITE |(< (- x) (- y))|))
 (54 54 (:REWRITE |(< (+ c/d x) y)|))
 (48 4 (:REWRITE |(* y (* x z))|))
 (45 29 (:REWRITE DEFAULT-TIMES-2))
 (44 4 (:REWRITE DISJOINT-7-ITEMS))
 (36 12 (:DEFINITION FIX))
 (35 13 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (35 13
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (35 13
     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (29 29 (:REWRITE DEFAULT-TIMES-1))
 (24 8 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (19 19
     (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (16 8 (:REWRITE BUBBLE-DOWN-+-MATCH-1))
 (15 15 (:REWRITE |(< (* x y) 0)|))
 (13 13
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (13 13
     (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (13 13
     (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (13 13 (:REWRITE |(equal c (/ x))|))
 (13 13 (:REWRITE |(equal c (- x))|))
 (13 13 (:REWRITE |(equal (/ x) c)|))
 (13 13 (:REWRITE |(equal (/ x) (/ y))|))
 (13 13 (:REWRITE |(equal (- x) c)|))
 (13 13 (:REWRITE |(equal (- x) (- y))|))
 (12 12 (:REWRITE |(equal (+ (- c) x) y)|))
 (12 12
     (:REWRITE |(G field (INIT_PDTS-MODIFY-INNER-LOOP-1 i j s))|))
 (10 10 (:REWRITE |(* (- x) y)|))
 (10 2 (:REWRITE |(* c (* d x))|))
 (9 9 (:REWRITE |(< (/ x) 0)|))
 (8 8
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (8 8
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (8 8 (:REWRITE DEFAULT-LOGIOR-2))
 (8 8 (:REWRITE DEFAULT-LOGIOR-1))
 (8 8 (:REWRITE |(< (+ (- c) x) y)|))
 (8 8 (:REWRITE |(+ x (- x))|))
 (6 6 (:TYPE-PRESCRIPTION ABS))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (4 4 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (4 4
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (4 4 (:REWRITE REDUCE-INTEGERP-+))
 (4 4 (:REWRITE O-INFP->NEQ-0))
 (4 4 (:REWRITE INTEGERP-MINUS-X))
 (4 4 (:REWRITE |(* a (/ a) b)|))
 (4 4 (:META META-INTEGERP-CORRECT))
 (2 2 (:REWRITE |(< y (+ (- c) x))|))
 (2 2 (:REWRITE |(< x (/ y)) with (< y 0)|))
 (2 2 (:REWRITE |(< x (/ y)) with (< 0 y)|))
 (2 2 (:REWRITE |(< x (+ c/d y))|)))
(|(r32 addr (init_pdts-modify s)) --- written to 2|
 (81406 7
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (55689 40052 (:REWRITE DEFAULT-PLUS-2))
 (49098 40052 (:REWRITE DEFAULT-PLUS-1))
 (16232 16136 (:REWRITE NORMALIZE-ADDENDS))
 (16128 16128
        (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (2716 122
       (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (2659
  2005
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (2585
  2005
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (2544 2544
       (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (2544 2544 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (2544 2544 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (2544 2544
       (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (1183
   1183
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (1183
  1183
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (1183
      1183
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (1183
     1183
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (1183 1183
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (1183 1183
       (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (766 68 (:REWRITE SIMPLIFY-SUMS-<))
 (424 128
      (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (404 12 (:REWRITE |(n32-to-i32 x) --- 2|))
 (396 12 (:REWRITE |(n32-to-i32 x) --- 1|))
 (366 366 (:REWRITE FOLD-CONSTS-IN-+))
 (264 264
      (:REWRITE |(g field (w32 addr val st))|))
 (216 128 (:REWRITE DEFAULT-LESS-THAN-1))
 (144 128 (:REWRITE DEFAULT-LESS-THAN-2))
 (132 68
      (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (132 68 (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (128 128 (:REWRITE THE-FLOOR-BELOW))
 (128 128 (:REWRITE THE-FLOOR-ABOVE))
 (126 74 (:REWRITE CONSTANT-<-INTEGERP))
 (124 72 (:REWRITE INTEGERP-<-CONSTANT))
 (122 122
      (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (82 70
     (:REWRITE REMOVE-STRICT-INEQUALITIES))
 (80 6 (:REWRITE |(* y (* x z))|))
 (74 74
     (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (74 74
     (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (74 74
     (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (74 74
     (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (74 74 (:REWRITE |(< c (- x))|))
 (74 74
     (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (74 74
     (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (74 74
     (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (74 74
     (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (74 74 (:REWRITE |(< (/ x) (/ y))|))
 (74 74 (:REWRITE |(< (- x) c)|))
 (74 74 (:REWRITE |(< (- x) (- y))|))
 (56 56 (:REWRITE |(< (+ c/d x) y)|))
 (49 25 (:REWRITE DEFAULT-TIMES-2))
 (44 4 (:REWRITE DISJOINT-7-ITEMS))
 (36 12 (:DEFINITION FIX))
 (30 13
     (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (30 13
     (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (25 25 (:REWRITE DEFAULT-TIMES-1))
 (25 13 (:REWRITE SIMPLIFY-SUMS-EQUAL))
 (24 8 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (16 8 (:REWRITE BUBBLE-DOWN-+-MATCH-1))
 (15 15 (:REWRITE |(< (* x y) 0)|))
 (13 13
     (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (13 13
     (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (13 13
     (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (13 13
     (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (13 13 (:REWRITE |(equal c (/ x))|))
 (13 13 (:REWRITE |(equal c (- x))|))
 (13 13 (:REWRITE |(equal (/ x) c)|))
 (13 13 (:REWRITE |(equal (/ x) (/ y))|))
 (13 13 (:REWRITE |(equal (- x) c)|))
 (13 13 (:REWRITE |(equal (- x) (- y))|))
 (12 12 (:REWRITE |(equal (+ (- c) x) y)|))
 (12 12
     (:REWRITE |(G field (INIT_PDTS-MODIFY-INNER-LOOP-1 i j s))|))
 (12 12 (:REWRITE |(* (- x) y)|))
 (10 5 (:REWRITE O-INFP->NEQ-0))
 (10 2 (:REWRITE |(* c (* d x))|))
 (9 9 (:REWRITE |(< (/ x) 0)|))
 (8 8
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-REMAINDER))
 (8 8
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-<-0-RATIONAL-COMMON))
 (8 8 (:REWRITE |(< (+ (- c) x) y)|))
 (8 8 (:REWRITE |(+ x (- x))|))
 (6 6 (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (6 6 (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (6 6 (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (6 6 (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (6 6 (:TYPE-PRESCRIPTION ABS))
 (5 5
    (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (4 4 (:REWRITE REDUCE-INTEGERP-+))
 (4 4 (:REWRITE INTEGERP-MINUS-X))
 (4 4 (:REWRITE |(< x (+ c/d y))|))
 (4 4 (:REWRITE |(* a (/ a) b)|))
 (4 4 (:META META-INTEGERP-CORRECT))
 (2 2 (:REWRITE |(< y (+ (- c) x))|))
 (2 2 (:REWRITE |(< x (/ y)) with (< y 0)|))
 (2 2
    (:REWRITE |(< x (/ y)) with (< 0 y)|)))
(INIT_PDTS-ASSERTION)
($$$INSUB)
($$$PRESUB)
($$$MODIFYSUB)
($$$NO-MAIN-CUTPOINT-IN-SUB)
($$$IN-SUB-IMPLIES-IN-MAIN)
($$$PRESUB-IMPLIES-INSUB)
($$$STEPS-TO-EXITPOINT-SUB-TAIL)
(|$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1-defpun-test|)
(|$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1-defpun-base|)
(|$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1-step|)
(|$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1-defpun-stn|)
(|$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1-defpun-fn|
     (1 1 (:REWRITE DEFAULT-<-2))
     (1 1 (:REWRITE DEFAULT-<-1)))
(|$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1|
 (1
   1
   (:TYPE-PRESCRIPTION |$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1-defpun-stn|)))
(|$$$STEPS-TO-EXITPOINT-SUB-TAIL-arity-1-DEF|)
($$$STEPS-TO-EXITPOINT-SUB-TAIL)
($$$STEPS-TO-EXITPOINT-SUB-TAIL-DEF (4 4 (:REWRITE DEFAULT-CAR))
                                    (2 2 (:REWRITE DEFAULT-CDR)))
($$$STEPS-TO-EXITPOINT-SUB-TAIL$DEF)
($$$STEPS-TO-EXITPOINT-SUB (8 2 (:TYPE-PRESCRIPTION RETURN-LAST))
                           (2 2
                              (:TYPE-PRESCRIPTION THROW-NONEXEC-ERROR)))
($$$NEXT-EXITPOINT-SUB)
($$$EXISTS-EXITPOINT-SUB)
($$$EXISTS-EXITPOINT-SUB-SUFF)
($$$CORRECTNESS-OF-SUB)
($$$NEXT-CUTPOINT-MAIN)
(|$$$NEXT-CUTPOINT-MAIN-arity-1-defpun-test|)
(|$$$NEXT-CUTPOINT-MAIN-arity-1-defpun-base|)
(|$$$NEXT-CUTPOINT-MAIN-arity-1-step|)
(|$$$NEXT-CUTPOINT-MAIN-arity-1-defpun-stn|)
(|$$$NEXT-CUTPOINT-MAIN-arity-1-defpun-fn| (4 4 (:REWRITE DEFAULT-<-2))
                                           (4 4 (:REWRITE DEFAULT-<-1))
                                           (1 1 (:REWRITE ZP-OPEN))
                                           (1 1 (:REWRITE DEFAULT-+-2))
                                           (1 1 (:REWRITE DEFAULT-+-1)))
(|$$$NEXT-CUTPOINT-MAIN-arity-1|
     (1 1
        (:TYPE-PRESCRIPTION |$$$NEXT-CUTPOINT-MAIN-arity-1-defpun-stn|)))
(|$$$NEXT-CUTPOINT-MAIN-arity-1-DEF|)
($$$NEXT-CUTPOINT-MAIN)
($$$NEXT-CUTPOINT-MAIN-DEF)
($$$NEXT-CUTPOINT-MAIN$DEF)
($$$DEFP-SYMSIM-THEOREM)
($$$PRE-IMPLIES-ASSERTION
 (8297 1
       (:DEFINITION INIT_PDTS-MODIFY-OUTER-LOOP-1))
 (8296 1
       (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (8252 4
       (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (4704 4 (:REWRITE DISJOINT-6-ITEMS))
 (4611
  971
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (2540 4 (:REWRITE DISJOINT-5-ITEMS))
 (1506 1124 (:REWRITE DEFAULT-+-2))
 (1355 1124 (:REWRITE DEFAULT-+-1))
 (883 245 (:REWRITE FOLD-CONSTS-IN-+))
 (157 157
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (157 157 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (157 157 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (157 157
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (122
  122
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (122
  122
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (30 16 (:REWRITE DEFAULT-<-1))
 (19 16 (:REWRITE DEFAULT-<-2))
 (11 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (11 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (2 2
    (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (1 1 (:REWRITE O-INFP->NEQ-0)))
($$$ASSERTION-MAIN-IMPLIES-POST
 (18535 63
        (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (8587 220
       (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (8251 129
       (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (7208 4158 (:REWRITE DEFAULT-+-2))
 (5755 4158 (:REWRITE DEFAULT-+-1))
 (5464
  980
  (:REWRITE
   |(subrangep (range base1 offset1 length1) (range base2 offset2 length2))|))
 (4704 4 (:REWRITE DISJOINT-6-ITEMS))
 (2540 4 (:REWRITE DISJOINT-5-ITEMS))
 (1956 12
       (:REWRITE |(r32 addr (init_pdts-modify-inner-loop-1 i j s))|))
 (1240 1240
       (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (1240 1240 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (1240 1240 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (1240 1240
       (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (1168 12 (:DEFINITION BINARY-LOGIOR))
 (1074 1074 (:TYPE-PRESCRIPTION SUBRANGEP))
 (1010 786 (:REWRITE NTH-ADD1))
 (866 12 (:DEFINITION BINARY-LOGAND))
 (783 404 (:REWRITE DEFAULT-<-1))
 (676 12 (:DEFINITION FLOOR))
 (566 11
      (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- not paging|))
 (503 404 (:REWRITE DEFAULT-<-2))
 (487 22
      (:REWRITE |(good-32-address-p addr st)|))
 (451 14
      (:REWRITE
           |(good-32-address-p addr (init_pdts-modify-inner-loop-1 i j s))|))
 (368 23
      (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (339 339 (:REWRITE |(subrangep x x)|))
 (338 86 (:REWRITE |(n32-to-i32 x) --- 2|))
 (290 24 (:DEFINITION LOGNOT))
 (290 11
      (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- paging|))
 (235 199 (:REWRITE DEFAULT-*-2))
 (226 16 (:REWRITE DISJOINT-7-ITEMS))
 (224 224 (:TYPE-PRESCRIPTION RANGE))
 (224 224 (:REWRITE NTH-0-CONS))
 (211 199 (:REWRITE DEFAULT-*-1))
 (190
  130
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (172
  130
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (170
   4
   (:REWRITE |(good-32-address-p addr (init_pdts-modify-outer-loop-1 i s))|))
 (158 158
      (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (149 71 (:REWRITE O-INFP->NEQ-0))
 (131 1 (:REWRITE DISJOINT-3-ITEMS))
 (114 114
      (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (96 96 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 (96 72 (:REWRITE DEFAULT-UNARY-MINUS))
 (69 23 (:DEFINITION NFIX))
 (66 54
     (:REWRITE |(paging-p (w32 addr val st))|))
 (59 59
     (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (59 47 (:DEFINITION IFIX))
 (49 12
     (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (38 1
     (:REWRITE |(memoryp (g :mem (init_pdts-modify-inner-loop-1 i j s)))|))
 (33 1
     (:REWRITE |(y86-p (init_pdts-modify-inner-loop-1 i j s))|))
 (32 8 (:REWRITE ZP-OPEN))
 (22 11 (:REWRITE ZIP-OPEN))
 (20 10
     (:REWRITE |(paging-p (init_pdts-modify-outer-loop-1 i s))|))
 (15 8
     (:REWRITE |(paging-p (init_pdts-modify-inner-loop-1 i j s))|))
 (12 12 (:REWRITE DEFAULT-NUMERATOR))
 (12 12 (:REWRITE DEFAULT-DENOMINATOR))
 (12 4
     (:REWRITE |(va-to-pa addr (init_pdts-modify-inner-loop-1 i j s))|))
 (12 4
     (:REWRITE |(memoryp (g :mem (init_pdts-modify-outer-loop-1 i s)))|))
 (7 7
    (:REWRITE |(G field (INIT_PDTS-MODIFY-INNER-LOOP-1 i j s))|))
 (2 2 (:REWRITE |(va-to-pa addr st)|)))
($$$ASSERTION-IMPLIES-CUTPOINT
 (3220 14
       (:DEFINITION INIT_PDTS-MODIFY-INNER-LOOP-1))
 (2075 979 (:REWRITE DEFAULT-+-2))
 (1820 7
       (:DEFINITION INIT_PDTS-MODIFY-OUTER-LOOP-1))
 (1393 979 (:REWRITE DEFAULT-+-1))
 (1205 38 (:REWRITE |(n32p x)|))
 (990 10 (:DEFINITION BINARY-LOGIOR))
 (738 10 (:DEFINITION BINARY-LOGAND))
 (578 10 (:DEFINITION FLOOR))
 (320 20
      (:DEFINITION NONNEGATIVE-INTEGER-QUOTIENT))
 (288 120 (:REWRITE DEFAULT-<-1))
 (263 6
      (:REWRITE
           |(good-32-address-p addr (init_pdts-modify-inner-loop-1 i j s))|))
 (259 259
      (:REWRITE SEC_NOT_PRESENT-LOADED-THM-32))
 (259 259 (:REWRITE INIT_PDTS-LOADED-THM-32))
 (259 259 (:REWRITE INIT_PDPT-LOADED-THM-32))
 (259 259
      (:REWRITE CREATE_NESTED_PT-LOADED-THM-32))
 (252 3
      (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- not paging|))
 (242 20 (:DEFINITION LOGNOT))
 (235 6
      (:REWRITE |(good-32-address-p addr st)|))
 (201 167 (:REWRITE DEFAULT-*-2))
 (184 56
      (:LINEAR |(n32p (r32 addr (g :mem st)))|))
 (179 167 (:REWRITE DEFAULT-*-1))
 (170
   4
   (:REWRITE |(good-32-address-p addr (init_pdts-modify-outer-loop-1 i s))|))
 (165 120 (:REWRITE DEFAULT-<-2))
 (114 114
      (:REWRITE RATIONALP-IMPLIES-ACL2-NUMBERP))
 (87 30 (:REWRITE O-INFP->NEQ-0))
 (81 61 (:REWRITE DEFAULT-UNARY-MINUS))
 (80 80 (:TYPE-PRESCRIPTION BINARY-LOGAND))
 (72 48
     (:REWRITE |(r32 addr (init_pdts-modify-outer-loop-1 i s))|))
 (60 20 (:DEFINITION NFIX))
 (50 50
     (:TYPE-PRESCRIPTION NONNEGATIVE-INTEGER-QUOTIENT))
 (50 40 (:DEFINITION IFIX))
 (41 10
     (:REWRITE DISTRIBUTIVITY-OF-MINUS-OVER-+))
 (32 32 (:TYPE-PRESCRIPTION Y86-P))
 (30 5 (:REWRITE DISJOINT-7-ITEMS))
 (28 28
     (:REWRITE |(G field (INIT_PDTS-MODIFY-outer-LOOP-1 i s))|))
 (24 6 (:REWRITE ZP-OPEN))
 (23 3
     (:REWRITE |(w32 addr1 val1 (w32 addr2 val2 st)) --- paging|))
 (20 10 (:REWRITE ZIP-OPEN))
 (12 12
     (:TYPE-PRESCRIPTION GOOD-32-ADDRESS-P))
 (12 4
     (:REWRITE |(memoryp (g :mem (init_pdts-modify-outer-loop-1 i s)))|))
 (11 3 (:REWRITE |(n32-to-i32 x) --- 2|))
 (11 3 (:REWRITE |(n32-to-i32 x) --- 1|))
 (10 10 (:REWRITE DEFAULT-NUMERATOR))
 (10 10 (:REWRITE DEFAULT-DENOMINATOR))
 (8 4
    (:REWRITE |(paging-p (init_pdts-modify-outer-loop-1 i s))|))
 (6 6 (:TYPE-PRESCRIPTION N32P))
 (5 5
    (:REWRITE |(disjointp (list x y)) --- disjoint super-ranges|))
 (5
  5
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 2|))
 (5
  5
  (:REWRITE
   |(disjointp (list (range base1 offset1 length1) (range base2 offset2 length2))) --- 1|))
 (4 4
    (:TYPE-PRESCRIPTION RATIONALP-EXPT-TYPE-PRESCRIPTION))
 (4 4
    (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE)))
($$$EXISTS-NEXT-CUTPOINT)
($$$EXISTS-NEXT-CUTPOINT-SUFF)
(SIMULATION-DEFAULT-HINT (5 5 (:TYPE-PRESCRIPTION LAST)))
(SIMULATE-MAIN
 (537243 22335
         (:REWRITE REDUCE-ADDITIVE-CONSTANT-<))
 (294890 229484 (:REWRITE DEFAULT-PLUS-1))
 (123834 123834
         (:REWRITE NORMALIZE-TERMS-SUCH-AS-A/A+B-+-B/A+B))
 (111580 22316 (:TYPE-PRESCRIPTION MOD-ZERO . 2))
 (111580 22316 (:TYPE-PRESCRIPTION MOD-ZERO . 1))
 (111580 22316
         (:TYPE-PRESCRIPTION MOD-POSITIVE . 2))
 (111580 22316
         (:TYPE-PRESCRIPTION MOD-NEGATIVE . 2))
 (111062 111062
         (:TYPE-PRESCRIPTION NOT-INTEGERP-3B))
 (111062 111062
         (:TYPE-PRESCRIPTION NOT-INTEGERP-2B))
 (111062 111062
         (:TYPE-PRESCRIPTION NOT-INTEGERP-1B))
 (99118 7183 (:REWRITE INIT_PDPT-LOADED-THM-08))
 (99118 7183
        (:REWRITE CREATE_NESTED_PT-LOADED-THM-08))
 (44482 12609
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-EQUAL))
 (36380 12609
        (:REWRITE PREFER-POSITIVE-ADDENDS-EQUAL))
 (32880 13712
        (:REWRITE PREFER-POSITIVE-ADDENDS-<))
 (32149 13712
        (:REWRITE SIMPLIFY-PRODUCTS-GATHER-EXPONENTS-<))
 (28482 22345 (:REWRITE DEFAULT-LESS-THAN-2))
 (22774 22344
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-<))
 (22345 22345 (:REWRITE THE-FLOOR-BELOW))
 (22345 22345 (:REWRITE THE-FLOOR-ABOVE))
 (22335 22335
        (:REWRITE REDUCE-RATIONAL-MULTIPLICATIVE-CONSTANT-<))
 (22316 22316 (:TYPE-PRESCRIPTION MOD-ZERO . 3))
 (22316 22316
        (:TYPE-PRESCRIPTION MOD-POSITIVE . 1))
 (22316 22316
        (:TYPE-PRESCRIPTION MOD-NONPOSITIVE))
 (22316 22316
        (:TYPE-PRESCRIPTION MOD-NEGATIVE . 1))
 (22316 22316
        (:TYPE-PRESCRIPTION INTEGERP-MOD-2))
 (20128 12901
        (:REWRITE REDUCE-ADDITIVE-CONSTANT-EQUAL))
 (19103 280 (:REWRITE MOD-X-Y-=-X-Y . 1))
 (18480 1365 (:REWRITE |(* x (+ y z))|))
 (16458
   16458
   (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-ODD-EXPONENT))
 (16458
  16458
  (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NONPOSITIVE-BASE-EVEN-EXPONENT))
 (16458
      16458
      (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-ODD-EXPONENT))
 (16458
     16458
     (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-NEGATIVE-BASE-EVEN-EXPONENT))
 (16458 16458
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-B))
 (16458 16458
        (:TYPE-PRESCRIPTION EXPT-TYPE-PRESCRIPTION-INTEGERP-BASE-A))
 (16122 8097 (:TYPE-PRESCRIPTION BUBBLE-DOWN))
 (15977 3512 (:REWRITE O-INFP->NEQ-0))
 (15958 9479 (:REWRITE DEFAULT-TIMES-2))
 (14040 13713
        (:REWRITE |(< (/ x) c) positive c --- present in goal|))
 (13713 13713 (:REWRITE INTEGERP-<-CONSTANT))
 (13713 13713 (:REWRITE CONSTANT-<-INTEGERP))
 (13713 13713
        (:REWRITE |(< c (/ x)) positive c --- present in goal|))
 (13713 13713
        (:REWRITE |(< c (/ x)) positive c --- obj t or nil|))
 (13713 13713
        (:REWRITE |(< c (/ x)) negative c --- present in goal|))
 (13713 13713
        (:REWRITE |(< c (/ x)) negative c --- obj t or nil|))
 (13713 13713 (:REWRITE |(< c (- x))|))
 (13713 13713
        (:REWRITE |(< (/ x) c) positive c --- obj t or nil|))
 (13713 13713
        (:REWRITE |(< (/ x) c) negative c --- present in goal|))
 (13713 13713
        (:REWRITE |(< (/ x) c) negative c --- obj t or nil|))
 (13713 13713 (:REWRITE |(< (/ x) (/ y))|))
 (13713 13713 (:REWRITE |(< (- x) c)|))
 (13713 13713 (:REWRITE |(< (- x) (- y))|))
 (13224 6542
        (:REWRITE SEC_NOT_PRESENT-LOADED-THM-08))
 (13107 280 (:REWRITE MOD-ZERO . 1))
 (12901 12901
        (:REWRITE REDUCE-MULTIPLICATIVE-CONSTANT-EQUAL))
 (12789 312 (:LINEAR MOD-BOUNDS-3))
 (12672 3240 (:REWRITE ACL2-NUMBERP-X))
 (12609 12609
        (:REWRITE EQUAL-OF-PREDICATES-REWRITE))
 (12609 12609 (:REWRITE |(equal c (/ x))|))
 (12609 12609 (:REWRITE |(equal c (- x))|))
 (12609 12609 (:REWRITE |(equal (/ x) c)|))
 (12609 12609 (:REWRITE |(equal (/ x) (/ y))|))
 (12609 12609 (:REWRITE |(equal (- x) c)|))
 (12609 12609 (:REWRITE |(equal (- x) (- y))|))
 (12381 477 (:REWRITE DEFAULT-MOD-RATIO))
 (12198 328 (:REWRITE MOD-ZERO . 3))
 (11315 11315 (:REWRITE |(< (+ c/d x) y)|))
 (11194 1019 (:REWRITE DISJOINT-7-ITEMS))
 (10569 9479 (:REWRITE DEFAULT-TIMES-1))
 (8053 8053
       (:REWRITE NORMALIZE-FACTORS-GATHER-EXPONENTS))
 (7937 6444
       (:REWRITE REMOVE-WEAK-INEQUALITIES))
 (6502 3627
       (:TYPE-PRESCRIPTION NOT-INTEGERP-4A))
 (4716 1179 (:REWRITE RATIONALP-X))
 (3668 3668 (:REWRITE FOLD-CONSTS-IN-+))
 (3654 624 (:LINEAR MOD-BOUNDS-2))
 (3627 3627
       (:TYPE-PRESCRIPTION NOT-INTEGERP-3A))
 (3627 3627
       (:TYPE-PRESCRIPTION NOT-INTEGERP-2A))
 (3627 3627
       (:TYPE-PRESCRIPTION NOT-INTEGERP-1A))
 (3512 3512
       (:REWRITE SIMPLIFY-TERMS-SUCH-AS-AX+BX-=-0))
 (3253 3253 (:REWRITE |(< x (+ c/d y))|))
 (2693 2693 (:REWRITE |(< (+ (- c) x) y)|))
 (2667 477 (:REWRITE MOD-X-Y-=-X-Y . 3))
 (2486 328 (:REWRITE MOD-X-Y-=-X . 4))
 (2204 328 (:REWRITE MOD-ZERO . 4))
 (2204 328 (:REWRITE MOD-X-Y-=-X+Y . 2))
 (2126 316 (:REWRITE MOD-X-Y-=-X . 2))
 (2126 316
       (:REWRITE |(mod (+ x (mod a b)) y)|))
 (2126 316
       (:REWRITE |(mod (+ x (- (mod a b))) y)|))
 (2073 2073 (:REWRITE REDUCE-INTEGERP-+))
 (2073 2073 (:REWRITE INTEGERP-MINUS-X))
 (2073 2073 (:META META-INTEGERP-CORRECT))
 (2032 2032 (:REWRITE |(subrangep x x)|))
 (1935 1935 (:REWRITE |(< y (+ (- c) x))|))
 (1922 328 (:REWRITE MOD-X-Y-=-X+Y . 3))
 (1886 280 (:REWRITE MOD-ZERO . 2))
 (1886 280 (:REWRITE MOD-X-Y-=-X+Y . 1))
 (1853 316
       (:REWRITE MOD-CANCEL-*-REWRITING-GOAL-LITERAL))
 (1853 316
       (:REWRITE |(mod (+ x y) z) where (<= z 0)| . 1))
 (1853 316
       (:REWRITE |(mod (* x (/ y)) z) rewriting-goal-literal|))
 (1739 316 (:REWRITE MOD-CANCEL-*-CONST))
 (1738 869 (:REWRITE DEFAULT-MINUS))
 (1259 1250 (:REWRITE DEFAULT-LOGIOR-2))
 (1250 1250 (:REWRITE DEFAULT-LOGIOR-1))
 (1179 1179 (:REWRITE REDUCE-RATIONALP-+))
 (1179 1179 (:REWRITE REDUCE-RATIONALP-*))
 (1179 1179 (:REWRITE RATIONALP-MINUS-X))
 (1179 1179 (:META META-RATIONALP-CORRECT))
 (1074 1074
       (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 2))
 (1074 1074
       (:TYPE-PRESCRIPTION |(< (logior x y) 0)| . 1))
 (888 888
      (:REWRITE INTEGERP-+-REDUCE-CONSTANT))
 (759 477 (:REWRITE DEFAULT-MOD-1))
 (523 280
      (:REWRITE |(equal (mod (+ x y) z) x)|))
 (490 56 (:LINEAR LOGIOR-BOUNDS-POS . 1))
 (477 477 (:REWRITE DEFAULT-MOD-2))
 (316 316
      (:REWRITE MOD-CANCEL-*-NOT-REWRITING-GOAL-LITERAL))
 (316 316 (:REWRITE |(mod x (- y))| . 3))
 (316 316 (:REWRITE |(mod x (- y))| . 2))
 (316 316 (:REWRITE |(mod x (- y))| . 1))
 (316 316
      (:REWRITE |(mod x (* y (/ z))) rewriting-goal-literal|))
 (316 316
      (:REWRITE |(mod x (* y (/ z))) not rewriting-goal-literal|))
 (316 316 (:REWRITE |(mod (- x) y)| . 3))
 (316 316 (:REWRITE |(mod (- x) y)| . 2))
 (316 316 (:REWRITE |(mod (- x) y)| . 1))
 (316 316
      (:REWRITE |(mod (+ x y) z) where (<= z 0)| . 3))
 (316 316
      (:REWRITE |(mod (+ x y) z) where (<= z 0)| . 2))
 (316 316
      (:REWRITE |(mod (* x (/ y)) z) not rewriting-goal-literal|))
 (309 306 (:REWRITE DEFAULT-LOGAND-2))
 (309 306 (:REWRITE DEFAULT-LOGAND-1))
 (168 18 (:REWRITE DEFAULT-FLOOR-RATIO))
 (120 9 (:REWRITE |(* y (* x z))|))
 (79 79 (:REWRITE |(< (* x y) 0)|))
 (59 59 (:LINEAR LOGIOR-BOUNDS-NEG . 2))
 (32 18 (:REWRITE DEFAULT-FLOOR-1))
 (29 29
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-REMAINDER))
 (29 29
     (:REWRITE SIMPLIFY-TERMS-SUCH-AS-0-<-AX+BX-RATIONAL-COMMON))
 (29 29 (:REWRITE |(< 0 (/ x))|))
 (29 29 (:REWRITE |(< 0 (* x y))|))
 (18 18 (:REWRITE DEFAULT-FLOOR-2))
 (16 9 (:REWRITE |(* a (/ a) b)|))
 (9 9 (:TYPE-PRESCRIPTION ABS))
 (1 1 (:TYPE-PRESCRIPTION N32-TO-I32)))
(ASSERTION-INVARIANT-DEFAULT-HINT-1)
(ASSERTION-INVARIANT-DEFAULT-HINT)
