;; Copyright (C) 2017, Regents of the University of Texas
;; Written by Cuong Chau
;; License: A 3-clause BSD license.  See the LICENSE file distributed with
;; ACL2.

;; Cuong Chau <ckcuong@cs.utexas.edu>
;; April 2018

(in-package "ADE")

(include-book "comp-gcd-cond")
(include-book "gcd-body")

(local (include-book "gcd-alg"))
(local (include-book "arithmetic-3/top" :dir :system))

(local (in-theory (disable nth)))

;; ======================================================================

;;; Table of Contents:
;;;
;;; 1. DE Module Generator of COMP-GCD
;;; 2. Specify the Final State of COMP-GCD After An N-Step Execution
;;; 3. Single-Step-Update Property
;;; 4. Relationship Between the Input and Output Sequences

;; ======================================================================

;; 1. DE Module Generator of COMP-GCD
;;
;; Construct a DE module generator that computes the Greatest Common Divisor
;; (COMP-GCD) of two natural numbers.  Prove the value and state lemmas for
;; this module generator.  We follow the link-joint model in building this
;; generator.

(defconst *comp-gcd$go-num* (+ *merge$go-num*
                               *comp-gcd-cond$go-num*
                               *gcd-body$go-num*))
(defconst *comp-gcd$st-len* 9)

(defun comp-gcd$data-ins-len (data-width)
  (declare (xargs :guard (natp data-width)))
  (+ 2 (* 2 (mbe :logic (nfix data-width)
                 :exec  data-width))))

(defun comp-gcd$ins-len (data-width)
  (declare (xargs :guard (natp data-width)))
  (+ (comp-gcd$data-ins-len data-width)
     *comp-gcd$go-num*))

;; DE module generator of COMP-GCD

(module-generator
 comp-gcd* (data-width)
 (si 'comp-gcd data-width)
 (list* 'full-in 'empty-out- (append (sis 'data-in 0 (* 2 data-width))
                                     (sis 'go 0 *comp-gcd$go-num*)))
 (list* 'in-act 'out-act
        (sis 'data-out 0 data-width))
 '(ls s l0 d0 l1 d1 l2 d2 br)
 (list
  ;; LINKS
  ;; S
  '(ls (s-status) link-cntl (branch-act merge-act))
  '(s (s-out s-out~) latch (branch-act done-))

  ;; L0
  '(l0 (l0-status) link-cntl (merge-act cond-in-act))
  (list 'd0
        (sis 'd0-out 0 (* 2 data-width))
        (si 'latch-n (* 2 data-width))
        (cons 'merge-act (sis 'd0-in 0 (* 2 data-width))))

  ;; L1
  '(l1 (l1-status) link-cntl (branch-act1 op-act))
  (list 'd1
        (sis 'd1-out 0 (* 2 data-width))
        (si 'latch-n (* 2 data-width))
        (cons 'branch-act1 (sis 'd1-in 0 (* 2 data-width))))

  ;; L2
  '(l2 (l2-status) link-cntl (op-act merge-act1))
  (list 'd2
        (sis 'd2-out 0 (* 2 data-width))
        (si 'latch-n (* 2 data-width))
        (cons 'op-act (sis 'd2-in 0 (* 2 data-width))))

  ;; JOINTS
  ;; Merge-in
  '(me-ready-in0 (me-full-in0) b-and (full-in s-status))
  '(me-ready-in1 (me-full-in1) b-and (l2-status s-status))
  (list 'me
        (list* 'merge-act 'in-act 'merge-act1
               (sis 'd0-in 0 (* 2 data-width)))
        (si 'merge (* 2 data-width))
        (list* 'me-full-in0 'me-full-in1 'l0-status 's-out
               (append (sis 'data-in 0 (* 2 data-width))
                       (sis 'd2-out 0 (* 2 data-width))
                       (sis 'go 0 *merge$go-num*))))

  ;; Branch-out
  '(br-ready-out0 (br-empty-out0-) b-or (empty-out- s-status))
  '(br-ready-out1 (br-empty-out1-) b-or (l1-status s-status))
  (list 'br
        (list* 'cond-in-act 'branch-act 'out-act 'branch-act1 'done-
               (append (sis 'data-out 0 data-width)
                       (sis 'd1-in 0 (* 2 data-width))))
        (si 'comp-gcd-cond data-width)
        (list* 'l0-status 'br-empty-out0- 'br-empty-out1-
               (append (sis 'd0-out 0 (* 2 data-width))
                       (sis 'go
                            *merge$go-num*
                            *comp-gcd-cond$go-num*))))

  ;; Op
  (list 'op
        (list* 'op-act 'op-act0 'op-act1
               (sis 'd2-in 0 (* 2 data-width)))
        (si 'gcd-body data-width)
        (list* 'l1-status 'l2-status
               (append (sis 'd1-out 0 (* 2 data-width))
                       (sis 'go
                            (+ *merge$go-num*
                               *comp-gcd-cond$go-num*)
                            *gcd-body$go-num*)))))

 :guard (natp data-width))

(make-event
 `(progn
    ,@(state-accessors-gen 'comp-gcd '(ls s l0 d0 l1 d1 l2 d2 br) 0)))

;; DE netlist generator.  A generated netlist will contain an instance of
;; COMP-GCD.

(defun comp-gcd$netlist (data-width)
  (declare (xargs :guard (and (natp data-width)
                              (<= 2 data-width))))
  (cons (comp-gcd* data-width)
        (union$ (comp-gcd-cond$netlist data-width)
                (gcd-body$netlist data-width)
                (latch-n$netlist (* 2 data-width))
                :test 'equal)))

;; Recognizer for COMP-GCD

(defund comp-gcd& (netlist data-width)
  (declare (xargs :guard (and (alistp netlist)
                              (natp data-width)
                              (<= 2 data-width))))
  (and (equal (assoc (si 'comp-gcd data-width) netlist)
              (comp-gcd* data-width))
       (b* ((netlist (delete-to-eq (si 'comp-gcd data-width) netlist)))
         (and (comp-gcd-cond& netlist data-width)
              (gcd-body& netlist data-width)
              (merge& netlist (* 2 data-width))
              (latch-n& netlist (* 2 data-width))))))

;; Sanity check

(local
 (defthmd check-comp-gcd$netlist-64
   (and (net-syntax-okp (comp-gcd$netlist 64))
        (net-arity-okp (comp-gcd$netlist 64))
        (comp-gcd& (comp-gcd$netlist 64) 64))))

;; Constraints on the state of COMP-GCD

(defund comp-gcd$st-format (st data-width)
  (b* ((d0 (get-field *comp-gcd$d0* st))
       (d1 (get-field *comp-gcd$d1* st))
       (d2 (get-field *comp-gcd$d2* st))
       (br (get-field *comp-gcd$br* st)))
    (and (len-1-true-listp d0)
         (equal (len d0) (* 2 data-width))

         (len-1-true-listp d1)
         (equal (len d1) (* 2 data-width))

         (len-1-true-listp d2)
         (equal (len d2) (* 2 data-width))

         (comp-gcd-cond$st-format br data-width))))

(defthm comp-gcd$st-format=>data-width-constraint
  (implies (comp-gcd$st-format st data-width)
           (and (natp data-width)
                (<= 3 data-width)))
  :hints (("Goal"
           :in-theory (enable comp-gcd$st-format)))
  :rule-classes :forward-chaining)

(defund comp-gcd$valid-st (st data-width)
  (b* ((ls (get-field *comp-gcd$ls* st))
       (s  (get-field *comp-gcd$s* st))
       (l0 (get-field *comp-gcd$l0* st))
       (d0 (get-field *comp-gcd$d0* st))
       (l1 (get-field *comp-gcd$l1* st))
       (d1 (get-field *comp-gcd$d1* st))
       (l2 (get-field *comp-gcd$l2* st))
       (d2 (get-field *comp-gcd$d2* st))
       (br (get-field *comp-gcd$br* st)))
    (and (comp-gcd$st-format st data-width)

         (validp ls)
         (or (emptyp ls)
             (booleanp (car s)))

         (validp l0)
         (or (emptyp l0)
             (bvp (strip-cars d0)))

         (validp l1)
         (or (emptyp l1)
             (bvp (strip-cars d1)))

         (validp l2)
         (or (emptyp l2)
             (bvp (strip-cars d2)))

         (comp-gcd-cond$valid-st br data-width))))

(defthmd comp-gcd$valid-st=>data-width-constraint
  (implies (comp-gcd$valid-st st data-width)
           (and (natp data-width)
                (<= 3 data-width)))
  :hints (("Goal"
           :in-theory (enable comp-gcd$valid-st)))
  :rule-classes :forward-chaining)

;; Extract the input and output signals from COMP-GCD

(progn
  ;; Extract the input data

  (defun comp-gcd$data-in (inputs data-width)
    (declare (xargs :guard (and (true-listp inputs)
                                (natp data-width))))
    (take (* 2 (mbe :logic (nfix data-width)
                    :exec  data-width))
          (nthcdr 2 inputs)))

  (defthm len-comp-gcd$data-in
    (equal (len (comp-gcd$data-in inputs data-width))
           (* 2 (nfix data-width))))

  (in-theory (disable comp-gcd$data-in))

  ;; Extract the inputs for the merge-in joint

  (defund comp-gcd$me-inputs (inputs st data-width)
    (b* ((full-in (nth 0 inputs))
         (data-in (comp-gcd$data-in inputs data-width))
         (go-signals (nthcdr (comp-gcd$data-ins-len data-width) inputs))

         (me-go-signals (take *merge$go-num* go-signals))

         (ls (get-field *comp-gcd$ls* st))
         (s  (get-field *comp-gcd$s* st))
         (l0 (get-field *comp-gcd$l0* st))
         (l2 (get-field *comp-gcd$l2* st))
         (d2 (get-field *comp-gcd$d2* st))

         (me-full-in0 (f-and full-in (car ls)))
         (me-full-in1 (f-and (car l2) (car ls))))

      (list* me-full-in0 me-full-in1 (car l0) (car s)
             (append data-in
                     (v-threefix (strip-cars d2))
                     me-go-signals))))

  ;; Extract the inputs for the branch-out joint

  (defund comp-gcd$br-inputs (inputs st data-width)
    (b* ((empty-out- (nth 1 inputs))
         (go-signals (nthcdr (comp-gcd$data-ins-len data-width) inputs))

         (br-go-signals (take *comp-gcd-cond$go-num*
                              (nthcdr *merge$go-num* go-signals)))

         (ls (get-field *comp-gcd$ls* st))
         (l0 (get-field *comp-gcd$l0* st))
         (d0 (get-field *comp-gcd$d0* st))
         (l1 (get-field *comp-gcd$l1* st))

         (br-empty-out0- (f-or empty-out- (car ls)))
         (br-empty-out1- (f-or (car l1) (car ls))))

      (list* (f-buf (car l0)) br-empty-out0- br-empty-out1-
             (append (v-threefix (strip-cars d0))
                     br-go-signals))))

  ;; Extract the inputs for the "op" joint

  (defund comp-gcd$op-inputs (inputs st data-width)
    (b* ((go-signals (nthcdr (comp-gcd$data-ins-len data-width) inputs))

         (op-go-signals (take *gcd-body$go-num*
                              (nthcdr (+ *merge$go-num*
                                         *comp-gcd-cond$go-num*)
                                      go-signals)))

         (l1 (get-field *comp-gcd$l1* st))
         (d1 (get-field *comp-gcd$d1* st))
         (l2 (get-field *comp-gcd$l2* st)))

      (list* (f-buf (car l1)) (f-buf (car l2))
             (append (v-threefix (strip-cars d1))
                     op-go-signals))))

  ;; Extract the "in-act" signal

  (defund comp-gcd$in-act (inputs st data-width)
    (merge$act0 (comp-gcd$me-inputs inputs st data-width)
                (* 2 data-width)))

  ;; Extract the "out-act" signal

  (defund comp-gcd$out-act (inputs st data-width)
    (comp-gcd-cond$out-act0 (comp-gcd$br-inputs inputs st data-width)
                            (get-field *comp-gcd$br* st)
                            data-width))

  ;; Extract the output data

  (defund comp-gcd$data-out (inputs st data-width)
    (comp-gcd-cond$data-out0 (comp-gcd$br-inputs inputs st data-width)
                             (get-field *comp-gcd$br* st)
                             data-width))

  (defthm len-comp-gcd$data-out-1
    (implies (comp-gcd$st-format st data-width)
             (equal (len (comp-gcd$data-out inputs st data-width))
                    data-width))
    :hints (("Goal" :in-theory (enable comp-gcd$st-format
                                       comp-gcd$data-out))))

  (defthm len-comp-gcd$data-out-2
    (implies (comp-gcd$valid-st st data-width)
             (equal (len (comp-gcd$data-out inputs st data-width))
                    data-width))
    :hints (("Goal" :in-theory (enable comp-gcd$valid-st))))

  (defthm bvp-comp-gcd$data-out
    (implies (and (comp-gcd$valid-st st data-width)
                  (comp-gcd$out-act inputs st data-width))
             (bvp (comp-gcd$data-out inputs st data-width)))
    :hints (("Goal" :in-theory (enable comp-gcd$valid-st
                                       comp-gcd$out-act
                                       comp-gcd$data-out))))
  )

(not-primp-lemma comp-gcd) ;; Prove that COMP-GCD is not a DE primitive.

;; The value lemma for COMP-GCD

(defthmd comp-gcd$value
  (b* ((inputs (list* full-in empty-out- (append data-in go-signals))))
    (implies (and (comp-gcd& netlist data-width)
                  (true-listp data-in)
                  (equal (len data-in) (* 2 data-width))
                  (true-listp go-signals)
                  (equal (len go-signals) *comp-gcd$go-num*)
                  (comp-gcd$st-format st data-width))
             (equal (se (si 'comp-gcd data-width) inputs st netlist)
                    (list* (comp-gcd$in-act inputs st data-width)
                           (comp-gcd$out-act inputs st data-width)
                           (comp-gcd$data-out inputs st data-width)))))
  :hints (("Goal"
           :do-not-induct t
           :do-not '(preprocess)
           :expand (se (si 'comp-gcd data-width)
                       (list* full-in empty-out-
                              (append data-in go-signals))
                       st
                       netlist)
           :in-theory (e/d (de-rules
                            nthcdr-of-pos-const-idx
                            comp-gcd-cond$st-format=>data-width-constraint
                            not-primp-comp-gcd
                            comp-gcd&
                            comp-gcd*$destructure
                            comp-gcd$data-in
                            merge$act0
                            merge$value
                            comp-gcd-cond$value
                            gcd-body$value
                            latch-n$value
                            comp-gcd$st-format
                            comp-gcd$in-act
                            comp-gcd$out-act
                            comp-gcd$data-out
                            comp-gcd$br-inputs
                            comp-gcd$me-inputs)
                           ((comp-gcd*)
                            nfix
                            append
                            de-module-disabled-rules)))))

;; This function specifies the next state of COMP-GCD.

(defun comp-gcd$step (inputs st data-width)
  (b* ((data-in (comp-gcd$data-in inputs data-width))

       (ls (get-field *comp-gcd$ls* st))
       (s  (get-field *comp-gcd$s* st))
       (l0 (get-field *comp-gcd$l0* st))
       (d0 (get-field *comp-gcd$d0* st))
       (l1 (get-field *comp-gcd$l1* st))
       (d1 (get-field *comp-gcd$d1* st))
       (l2 (get-field *comp-gcd$l2* st))
       (d2 (get-field *comp-gcd$d2* st))
       (br (get-field *comp-gcd$br* st))

       (me-inputs (comp-gcd$me-inputs inputs st data-width))
       (br-inputs (comp-gcd$br-inputs inputs st data-width))
       (op-inputs (comp-gcd$op-inputs inputs st data-width))

       (d1-in (comp-gcd-cond$data-out1 br-inputs br data-width))
       (d2-in (gcd-body$data-out op-inputs data-width))

       (done- (comp-gcd-cond$flag br-inputs br data-width))
       (merge-act1 (merge$act1 me-inputs (* 2 data-width)))
       (merge-act (merge$act me-inputs (* 2 data-width)))
       (cond-in-act (comp-gcd-cond$in-act br-inputs br data-width))
       (branch-act1 (comp-gcd-cond$out-act1 br-inputs br data-width))
       (branch-act (comp-gcd-cond$out-act br-inputs br data-width))
       (op-act (gcd-body$act op-inputs data-width)))
    (list
     ;; S
     (list (f-sr branch-act merge-act (car ls)))
     (list (f-if branch-act done- (car s)))

     ;; L0
     (list (f-sr merge-act cond-in-act (car l0)))
     (pairlis$ (fv-if merge-act
                      (fv-if (car s) (strip-cars d2) data-in)
                      (strip-cars d0))
               nil)

     ;; L1
     (list (f-sr branch-act1 op-act (car l1)))
     (pairlis$ (fv-if branch-act1 d1-in (strip-cars d1))
               nil)

     ;; L2
     (list (f-sr op-act merge-act1 (car l2)))
     (pairlis$ (fv-if op-act d2-in (strip-cars d2))
               nil)

     ;; COMP-GCD-COND
     (comp-gcd-cond$step br-inputs br data-width))))

(defthm len-of-comp-gcd$step
  (equal (len (comp-gcd$step inputs st data-width))
         *comp-gcd$st-len*))

;; The state lemma for COMP-GCD

(defthmd comp-gcd$state
  (b* ((inputs (list* full-in empty-out- (append data-in go-signals))))
    (implies (and (comp-gcd& netlist data-width)
                  (true-listp data-in)
                  (equal (len data-in) (* 2 data-width))
                  (true-listp go-signals)
                  (equal (len go-signals) *comp-gcd$go-num*)
                  (comp-gcd$st-format st data-width))
             (equal (de (si 'comp-gcd data-width) inputs st netlist)
                    (comp-gcd$step inputs st data-width))))
  :hints (("Goal"
           :do-not-induct t
           :do-not '(preprocess)
           :expand (de (si 'comp-gcd data-width)
                       (list* full-in empty-out-
                              (append data-in go-signals))
                       st
                       netlist)
           :in-theory (e/d (de-rules
                            nthcdr-of-pos-const-idx
                            comp-gcd-cond$st-format=>data-width-constraint
                            not-primp-comp-gcd
                            comp-gcd&
                            comp-gcd*$destructure
                            merge$act
                            merge$act0
                            merge$act1
                            merge$value
                            comp-gcd$st-format
                            comp-gcd$data-in
                            comp-gcd$br-inputs
                            comp-gcd$me-inputs
                            comp-gcd$op-inputs
                            comp-gcd-cond$value comp-gcd-cond$state
                            gcd-body$value
                            latch-n$value latch-n$state)
                           ((comp-gcd*)
                            nfix
                            append
                            de-module-disabled-rules)))))

(in-theory (disable comp-gcd$step))

;; ======================================================================

;; 2. Specify the Final State of COMP-GCD After An N-Step Execution

;; COMP-GCD simulator

(progn
  (defun comp-gcd$map-to-links (st)
    (b* ((ls (get-field *comp-gcd$ls* st))
         (s  (get-field *comp-gcd$s* st))
         (l0 (get-field *comp-gcd$l0* st))
         (d0 (get-field *comp-gcd$d0* st))
         (l1 (get-field *comp-gcd$l1* st))
         (d1 (get-field *comp-gcd$d1* st))
         (l2 (get-field *comp-gcd$l2* st))
         (d2 (get-field *comp-gcd$d2* st))
         (br (get-field *comp-gcd$br* st)))
      (append (map-to-links (list (list 's ls (list s))
                                  (list 'l0 l0 d0)
                                  (list 'l1 l1 d1)
                                  (list 'l2 l2 d2)))
              (list (cons 'br (comp-gcd-cond$map-to-links br))))))

  (defun comp-gcd$map-to-links-list (x)
    (if (atom x)
        nil
      (cons (comp-gcd$map-to-links (car x))
            (comp-gcd$map-to-links-list (cdr x)))))

  (defund comp-gcd$sim (data-width n state)
    (declare (xargs :guard (and (natp data-width)
                                (natp n))
                    :verify-guards nil
                    :stobjs state))
    (b* ((num-signals (comp-gcd$ins-len data-width))
         ((mv inputs-lst state)
          (signal-vals-gen num-signals n state nil))
         ;;(- (cw "~x0~%" inputs-lst))
         (full '(t))
         (empty '(nil))
         (invalid-data (make-list (* 2 data-width) :initial-element '(x)))
         (br-invalid-data (make-list data-width :initial-element '(x)))
         (la0 empty)
         (a0 br-invalid-data)
         (lb0 empty)
         (b0 br-invalid-data)
         (la1 empty)
         (a1 br-invalid-data)
         (lb1 empty)
         (b1 br-invalid-data)
         (q2 (list empty br-invalid-data
                   empty br-invalid-data))
         (q3 (list empty br-invalid-data
                   empty br-invalid-data
                   empty br-invalid-data))
         (br (list la0 a0 lb0 b0 la1 a1 lb1 b1 q2 q3))
         (st (list full '(nil)
                   empty invalid-data
                   empty invalid-data
                   empty invalid-data
                   br)))
      (mv (pretty-list
           (remove-dup-neighbors
            (comp-gcd$map-to-links-list
             (de-sim-list (si 'comp-gcd data-width)
                          inputs-lst
                          st
                          (comp-gcd$netlist data-width))))
           0)
          state)))
  )

;; Conditions on the inputs

(defund comp-gcd$input-format (inputs data-width)
  (declare (xargs :guard (and (true-listp inputs)
                              (natp data-width))))
  (b* ((full-in    (nth 0 inputs))
       (empty-out- (nth 1 inputs))
       (data-in    (comp-gcd$data-in inputs data-width))
       (go-signals (nthcdr (comp-gcd$data-ins-len data-width) inputs)))
    (and
     (booleanp full-in)
     (booleanp empty-out-)
     (or (not full-in) (bvp data-in))
     (true-listp go-signals)
     (= (len go-signals) *comp-gcd$go-num*)
     (equal inputs
            (list* full-in empty-out- (append data-in go-signals))))))

(local
 (defthm comp-gcd$input-format=>br$input-format
   (implies (and (comp-gcd$input-format inputs data-width)
                 (comp-gcd$valid-st st data-width))
            (comp-gcd-cond$input-format
             (comp-gcd$br-inputs inputs st data-width)
             data-width))
   :hints (("Goal"
            :in-theory (e/d (comp-gcd-cond$valid-st=>data-width-constraint
                             comp-gcd$input-format
                             comp-gcd-cond$input-format
                             comp-gcd-cond$data-in
                             comp-gcd$valid-st
                             comp-gcd$st-format
                             comp-gcd$br-inputs)
                            (nthcdr
                             len
                             take-of-too-many))))))

(simulate-lemma comp-gcd)

;; ======================================================================

;; 3. Single-Step-Update Property

;; Specify the functionality of COMP-GCD, i.e., computing the greatest common
;; divisor of two natural numbers (see comp-gcd$op).  Prove the correctness of
;; comp-gcd$op.

(encapsulate
  ()

  (local
   (defthm v-<-correct-instance
     (implies (and (natp data-width)
                   (equal (len x) (* 2 data-width))
                   (bvp x)
                   (v-< nil t
                        (rev (take data-width x))
                        (rev (nthcdr data-width x))))
              (< (v-to-nat (take data-width x))
                 (v-to-nat (nthcdr data-width x))))
     :hints (("Goal"
              :use (:instance v-<-correct-1
                              (a (take data-width x))
                              (b (nthcdr data-width x)))
              :in-theory (disable v-<-correct-1)))
     :rule-classes :linear))

  (local
   (defthm v-to-nat-of-v-zp
     (equal (v-zp x)
            (equal (v-to-nat x) 0))
     :hints (("Goal" :in-theory (enable v-zp v-nzp v-to-nat)))))

  (local
   (defun my-count (x)
     (nfix (+ (v-to-nat (take (/ (len x) 2) x))
              (v-to-nat (nthcdr (/ (len x) 2) x))))))

  (local
   (defund comp-gcd$op (x)
     (declare
      (xargs :hints (("Goal"
                      :in-theory (e/d ()
                                      (v-not-take
                                       v-not-nthcdr))))
             :measure (my-count x)))
     (b* ((data-width (/ (len x) 2))
          (a (take data-width x))
          (b (nthcdr data-width x))
          (a-b (take data-width
                     (v-adder t a (v-not b))))
          (b-a (take data-width
                     (v-adder t b (v-not a))))
          (a<b (v-< nil t (rev a) (rev b))))
       (cond
        ((or (atom x)
             (zp data-width)
             (not (bvp x)))
         x)
        ((v-zp a) b)
        ((v-zp b) a)
        ((equal a b) a)
        (t (comp-gcd$op
            (v-if a<b
                  (append a b-a)
                  (append a-b b))))))))

  (defund comp-gcd$op (x)
    (declare (xargs :measure (:? x)))
    (b* ((data-width (/ (len x) 2))
         (a (take data-width x))
         (b (nthcdr data-width x))
         (a-b (take data-width
                    (v-adder t a (v-not b))))
         (b-a (take data-width
                    (v-adder t b (v-not a))))
         (a<b (v-< nil t (rev a) (rev b))))
      (cond
       ((or (atom x)
            (zp data-width)
            (not (bvp x)))
        x)
       ((v-zp a) b)
       ((v-zp b) a)
       ((equal a b) a)
       (t (comp-gcd$op
           (v-if a<b
                 (append a b-a)
                 (append a-b b)))))))

  (local
   (defthm comp-gcd$op-lemma-aux
     (implies (and (bv2p a b)
                   (not (v-< nil t (rev a) (rev b)))
                   (equal (v-to-nat a) 0))
              (equal a b))
     :hints (("Goal" :use (v-to-nat-equality
                           v-<-correct-2)))
     :rule-classes nil))

  (defthm comp-gcd$op-lemma
    (b* ((a (take data-width x))
         (b (nthcdr data-width x))
         (a-b (take data-width
                    (v-adder t a (v-not b))))
         (b-a (take data-width
                    (v-adder t b (v-not a))))
         (a<b (v-< nil t (rev a) (rev b))))
      (implies (and (natp data-width)
                    (equal data-width (/ (len x) 2))
                    (bvp x))
               (equal (comp-gcd$op (v-if a<b
                                         (append a b-a)
                                         (append a-b b)))
                      (comp-gcd$op x))))
    :hints (("Goal"
             :induct (comp-gcd$op x)
             :in-theory (e/d (comp-gcd$op)
                             (v-to-nat-equality
                              v-not-take
                              v-not-nthcdr)))
            ("Subgoal *1/3"
             :use (:instance
                   v-to-nat-equality
                   (a (take data-width
                            (v-adder t (take data-width x)
                                     (v-not (nthcdr data-width x)))))
                   (b (take data-width x))))
            ("Subgoal *1/2"
             :use ((:instance
                    v-to-nat-equality
                    (a (take data-width
                             (v-adder t (nthcdr data-width x)
                                      (v-not (take data-width x)))))
                    (b (nthcdr data-width x)))
                   (:instance
                    comp-gcd$op-lemma-aux
                    (a (take data-width x))
                    (b (nthcdr data-width x)))))))

  ;; Prove that comp-gcd$op correctly computes the greatest common divisor

  (local
   (defthm v-to-nat-of-COMP-GCD$OP-is-GCD-ALG
     (implies (and (equal data-width (/ (len x) 2))
                   (bvp x))
              (equal (v-to-nat (comp-gcd$op x))
                     (gcd-alg (v-to-nat (take data-width x))
                              (v-to-nat (nthcdr data-width x)))))
     :hints (("Goal" :in-theory (e/d (comp-gcd$op)
                                     (v-not-take
                                      v-not-nthcdr))))))
  )

;; The operation of COMP-GCD over a data sequence

(defun comp-gcd$op-seq (seq)
  (if (atom seq)
      nil
    (cons (comp-gcd$op (car seq))
          (comp-gcd$op-seq (cdr seq)))))

(defthm len-of-comp-gcd$op-seq
  (equal (len (comp-gcd$op-seq x))
         (len x)))

(defthm comp-gcd$op-seq-of-append
  (equal (comp-gcd$op-seq (append x y))
         (append (comp-gcd$op-seq x) (comp-gcd$op-seq y))))

;; The extraction function for COMP-GCD that extracts the future output
;; sequence from the current state.

(defund comp-gcd$extract (st)
  (b* ((l0 (get-field *comp-gcd$l0* st))
       (d0 (get-field *comp-gcd$d0* st))
       (l1 (get-field *comp-gcd$l1* st))
       (d1 (get-field *comp-gcd$d1* st))
       (l2 (get-field *comp-gcd$l2* st))
       (d2 (get-field *comp-gcd$d2* st))
       (br (get-field *comp-gcd$br* st)))
    (comp-gcd$op-seq
     (append (extract-valid-data (list l1 d1 l2 d2 l0 d0))
             (comp-gcd-cond$extract br)))))

(defthm comp-gcd$extract-not-empty
  (implies (and (comp-gcd$out-act inputs st data-width)
                (comp-gcd$valid-st st data-width))
           (< 0 (len (comp-gcd$extract st))))
  :hints (("Goal"
           :in-theory (e/d (comp-gcd$valid-st
                            comp-gcd$extract
                            comp-gcd$out-act)
                           (nfix))))
  :rule-classes :linear)

;; Specify and prove a state invariant

(progn
  (defund comp-gcd$inv (st)
    (b* ((ls (get-field *comp-gcd$ls* st))
         (s  (get-field *comp-gcd$s* st))
         (br (get-field *comp-gcd$br* st)))
      (and (comp-gcd-cond$inv br)
           (if (and (fullp ls) (not (car s)))
               (= (len (comp-gcd$extract st))
                  0)
             (= (len (comp-gcd$extract st))
                1)))))

  (local
   (defthm booleanp-comp-gcd-cond$in-act
     (implies (and (or (equal (nth *comp-gcd$l0* st) '(t))
                       (equal (nth *comp-gcd$l0* st) '(nil)))
                   (comp-gcd-cond$valid-st (nth *comp-gcd$br* st)
                                           data-width))
              (booleanp (comp-gcd-cond$in-act
                         (comp-gcd$br-inputs inputs st data-width)
                         (nth *comp-gcd$br* st)
                         data-width)))
     :hints (("Goal" :in-theory (e/d (get-field
                                      comp-gcd$br-inputs
                                      comp-gcd-cond$valid-st
                                      comp-gcd-cond$st-format
                                      comp-gcd-cond$in-act)
                                     ())))
     :rule-classes :type-prescription))

  (local
   (defthm comp-gcd-cond$in-act-nil
     (implies (equal (nth *comp-gcd$l0* st) '(nil))
              (not (comp-gcd-cond$in-act
                    (comp-gcd$br-inputs inputs st data-width)
                    (nth *comp-gcd$br* st)
                    data-width)))
     :hints (("Goal" :in-theory (e/d (get-field
                                      comp-gcd$br-inputs
                                      comp-gcd-cond$valid-st
                                      comp-gcd-cond$in-act)
                                     ())))))

  (local
   (defthm booleanp-comp-gcd-cond$out-act0
     (implies (and (booleanp (nth 1 inputs))
                   (or (equal (nth *comp-gcd$ls* st) '(t))
                       (equal (nth *comp-gcd$ls* st) '(nil)))
                   (or (equal (nth *comp-gcd$l1* st) '(t))
                       (equal (nth *comp-gcd$l1* st) '(nil)))
                   (comp-gcd-cond$valid-st (nth *comp-gcd$br* st)
                                           data-width))
              (booleanp (comp-gcd-cond$out-act0
                         (comp-gcd$br-inputs inputs st data-width)
                         (nth *comp-gcd$br* st)
                         data-width)))
     :hints (("Goal" :in-theory (e/d (get-field
                                      branch$act0
                                      gcd-cond$br-inputs
                                      gcd-cond$data-in
                                      gcd-cond$flag
                                      gcd-cond$act0
                                      comp-gcd$br-inputs
                                      comp-gcd-cond$valid-st
                                      comp-gcd-cond$st-format
                                      comp-gcd-cond$br-inputs
                                      comp-gcd-cond$out-act0)
                                     (b-nor3))))
     :rule-classes :type-prescription))

  (local
   (defthm booleanp-comp-gcd-cond$out-act1
     (implies (and (booleanp (nth 1 inputs))
                   (or (equal (nth *comp-gcd$ls* st) '(t))
                       (equal (nth *comp-gcd$ls* st) '(nil)))
                   (or (equal (nth *comp-gcd$l1* st) '(t))
                       (equal (nth *comp-gcd$l1* st) '(nil)))
                   (comp-gcd-cond$valid-st (nth *comp-gcd$br* st)
                                           data-width))
              (booleanp (comp-gcd-cond$out-act1
                         (comp-gcd$br-inputs inputs st data-width)
                         (nth *comp-gcd$br* st)
                         data-width)))
     :hints (("Goal" :in-theory (e/d (get-field
                                      branch$act1
                                      gcd-cond$br-inputs
                                      gcd-cond$data-in
                                      gcd-cond$flag
                                      gcd-cond$act1
                                      comp-gcd$br-inputs
                                      comp-gcd-cond$valid-st
                                      comp-gcd-cond$st-format
                                      comp-gcd-cond$br-inputs
                                      comp-gcd-cond$out-act1)
                                     (b-nor3))))
     :rule-classes :type-prescription))

  (local
   (defthm comp-gcd-cond$out-act0-nil
     (implies (equal (nth *comp-gcd$ls* st) '(t))
              (not (comp-gcd-cond$out-act0
                    (comp-gcd$br-inputs inputs st data-width)
                    (nth *comp-gcd$br* st)
                    data-width)))
     :hints (("Goal" :in-theory (e/d (get-field
                                      branch$act0
                                      gcd-cond$br-inputs
                                      gcd-cond$act0
                                      comp-gcd$br-inputs
                                      comp-gcd-cond$br-inputs
                                      comp-gcd-cond$out-act0)
                                     (b-nor3))))))

  (local
   (defthm comp-gcd-cond$out-act1-nil
     (implies (or (equal (nth *comp-gcd$ls* st) '(t))
                  (equal (nth *comp-gcd$l1* st) '(t)))
              (not (comp-gcd-cond$out-act1
                    (comp-gcd$br-inputs inputs st data-width)
                    (nth *comp-gcd$br* st)
                    data-width)))
     :hints (("Goal" :in-theory (e/d (get-field
                                      branch$act1
                                      gcd-cond$br-inputs
                                      gcd-cond$act1
                                      comp-gcd$br-inputs
                                      comp-gcd-cond$br-inputs
                                      comp-gcd-cond$out-act1)
                                     (b-nor3))))))

  (local
   (defthm comp-gcd-cond$flag-nil
     (implies (and (comp-gcd-cond$valid-st (nth *comp-gcd$br* st)
                                           data-width)
                   (comp-gcd-cond$out-act0
                    (comp-gcd$br-inputs inputs st data-width)
                    (nth *comp-gcd$br* st)
                    data-width))
              (not (comp-gcd-cond$flag
                    (comp-gcd$br-inputs inputs st data-width)
                    (nth *comp-gcd$br* st)
                    data-width)))
     :hints (("Goal" :in-theory (e/d (get-field
                                      branch$act0
                                      gcd-cond$br-inputs
                                      gcd-cond$data-in
                                      gcd-cond$flag
                                      gcd-cond$act0
                                      comp-gcd$br-inputs
                                      comp-gcd-cond$valid-st
                                      comp-gcd-cond$st-format
                                      comp-gcd-cond$br-inputs
                                      comp-gcd-cond$out-act0
                                      comp-gcd-cond$flag)
                                     (b-nor3))))))

  (local
   (defthm comp-gcd-cond$flag-t
     (implies (and (comp-gcd-cond$valid-st (nth *comp-gcd$br* st)
                                           data-width)
                   (comp-gcd-cond$out-act1
                    (comp-gcd$br-inputs inputs st data-width)
                    (nth *comp-gcd$br* st)
                    data-width))
              (equal (comp-gcd-cond$flag
                      (comp-gcd$br-inputs inputs st data-width)
                      (nth *comp-gcd$br* st)
                      data-width)
                     t))
     :hints (("Goal" :in-theory (e/d (get-field
                                      branch$act1
                                      gcd-cond$br-inputs
                                      gcd-cond$data-in
                                      gcd-cond$flag
                                      gcd-cond$act1
                                      comp-gcd$br-inputs
                                      comp-gcd-cond$valid-st
                                      comp-gcd-cond$st-format
                                      comp-gcd-cond$br-inputs
                                      comp-gcd-cond$out-act1
                                      comp-gcd-cond$flag)
                                     (b-nor3))))))

  (local
   (defthm booleanp-comp-gcd$op-act
     (b* ((op-inputs (comp-gcd$op-inputs inputs st data-width))
          (d1 (nth *comp-gcd$d1* st)))
       (implies (or (equal (nth *comp-gcd$l1* st) '(nil))
                    (and (equal (nth *comp-gcd$l1* st) '(t))
                         (equal (nth *comp-gcd$l2* st) '(nil))
                         (equal (len d1) (* 2 data-width))
                         (bvp (strip-cars d1))))
                (booleanp (gcd-body$act op-inputs data-width))))
     :hints (("Goal" :in-theory (enable get-field
                                        merge$act0
                                        merge$act1
                                        gcd-body$data-in
                                        gcd-body$me-inputs
                                        gcd-body$act
                                        gcd-body$act0
                                        gcd-body$act1
                                        gcd-body$a<b
                                        comp-gcd$op-inputs)))
     :rule-classes :type-prescription))

  (local
   (defthm comp-gcd$op-act-nil
     (b* ((op-inputs (comp-gcd$op-inputs inputs st data-width)))
       (implies (or (equal (nth *comp-gcd$l1* st) '(nil))
                    (equal (nth *comp-gcd$l2* st) '(t)))
                (not (gcd-body$act op-inputs data-width))))
     :hints (("Goal" :in-theory (enable get-field
                                        merge$act0
                                        merge$act1
                                        gcd-body$me-inputs
                                        gcd-body$act
                                        gcd-body$act0
                                        gcd-body$act1
                                        comp-gcd$op-inputs)))))

  (local
   (defthm bvp-comp-gcd$op-data-out
     (b* ((op-inputs (comp-gcd$op-inputs inputs st data-width))
          (d1 (nth *comp-gcd$d1* st)))
       (implies (and (equal (len d1) (* 2 data-width))
                     (bvp (strip-cars d1)))
                (bvp (gcd-body$data-out op-inputs data-width))))
     :hints (("Goal" :in-theory (enable get-field
                                        gcd-body$data-in
                                        comp-gcd$op-inputs)))))

  (local
   (defthm comp-gcd$inv-preserved-aux-1
     (implies (and (comp-gcd-cond$valid-st st data-width)
                   (comp-gcd-cond$out-act0 inputs st data-width))
              (not (comp-gcd-cond$out-act1 inputs st data-width)))
     :hints (("Goal" :in-theory (e/d (branch$act0
                                      branch$act1
                                      gcd-cond$data-in
                                      gcd-cond$br-inputs
                                      gcd-cond$flag
                                      gcd-cond$act0
                                      gcd-cond$act1
                                      comp-gcd-cond$valid-st
                                      comp-gcd-cond$st-format
                                      comp-gcd-cond$br-inputs
                                      comp-gcd-cond$out-act0
                                      comp-gcd-cond$out-act1)
                                     (b-nor3))))))

  (local
   (defthm comp-gcd$inv-preserved-aux-2
     (implies (and (comp-gcd-cond$valid-st st data-width)
                   (comp-gcd-cond$out-act1 inputs st data-width))
              (not (comp-gcd-cond$out-act0 inputs st data-width)))
     :hints (("Goal" :in-theory (e/d (branch$act0
                                      branch$act1
                                      gcd-cond$data-in
                                      gcd-cond$br-inputs
                                      gcd-cond$flag
                                      gcd-cond$act0
                                      gcd-cond$act1
                                      comp-gcd-cond$valid-st
                                      comp-gcd-cond$br-inputs
                                      comp-gcd-cond$out-act0
                                      comp-gcd-cond$out-act1)
                                     (b-nor3))))))

  (local
   (defthm comp-gcd$inv-preserved-aux-3
     (implies (and (comp-gcd-cond$valid-st st data-width)
                   (equal (len (comp-gcd-cond$extract st))
                          0))
              (and (not (comp-gcd-cond$out-act0 inputs st data-width))
                   (not (comp-gcd-cond$out-act1 inputs st data-width))))
     :hints (("Goal" :in-theory (e/d (branch$act0
                                      branch$act1
                                      gcd-cond$br-inputs
                                      gcd-cond$act0
                                      gcd-cond$act1
                                      comp-gcd-cond$br-inputs
                                      comp-gcd-cond$valid-st
                                      comp-gcd-cond$out-act0
                                      comp-gcd-cond$out-act1
                                      comp-gcd-cond$extract)
                                     (b-not
                                      b-or
                                      b-nor3))))))

  (defthm comp-gcd$inv-preserved
    (implies (and (comp-gcd$input-format inputs data-width)
                  (comp-gcd$valid-st st data-width)
                  (comp-gcd$inv st))
             (comp-gcd$inv (comp-gcd$step inputs st data-width)))
    :hints (("Goal"
             :in-theory (e/d (get-field
                              comp-gcd-cond$valid-st=>data-width-constraint
                              comp-gcd-cond$extracted-step
                              comp-gcd$input-format
                              comp-gcd$valid-st
                              comp-gcd$st-format
                              comp-gcd$inv
                              comp-gcd$step
                              comp-gcd$extract
                              comp-gcd$me-inputs
                              comp-gcd-cond$out-act
                              merge$act
                              merge$act0
                              merge$act1
                              f-sr)
                             (if*
                              v-if-works
                              b-nor3
                              b-not
                              nfix
                              nthcdr)))))
  )

;; The extracted next-state function for COMP-GCD.  Note that this function
;; avoids exploring the internal computation of COMP-GCD.

(defund comp-gcd$extracted-step (inputs st data-width)
  (b* ((data (comp-gcd$op (comp-gcd$data-in inputs data-width)))
       (extracted-st (comp-gcd$extract st))
       (n (1- (len extracted-st))))
    (cond
     ((equal (comp-gcd$out-act inputs st data-width) t)
      (cond
       ((equal (comp-gcd$in-act inputs st data-width) t)
        (cons data (take n extracted-st)))
       (t (take n extracted-st))))
     (t (cond
         ((equal (comp-gcd$in-act inputs st data-width) t)
          (cons data extracted-st))
         (t extracted-st))))))

(local
 (defthm len-0-is-atom
   (equal (equal (len x) 0)
          (atom x))))

;; The single-step-update property

(encapsulate
  ()

  (local
   (defthm comp-gcd$extracted-step-correct-aux-1
     (implies (and (<= (len (comp-gcd-cond$extract st))
                       1)
                   (comp-gcd-cond$valid-st st data-width)
                   (comp-gcd-cond$inv st)
                   (comp-gcd-cond$out-act1 inputs st data-width))
              (equal (comp-gcd-cond$extract st)
                     (list (comp-gcd-cond$data-out1 inputs st data-width))))
     :hints (("Goal"
              :in-theory (e/d (branch$act1
                               gcd-cond$data-in
                               gcd-cond$br-inputs
                               gcd-cond$act1
                               gcd-cond$data-out1
                               comp-gcd-cond$op
                               comp-gcd-cond$valid-st
                               comp-gcd-cond$st-format
                               comp-gcd-cond$inv
                               comp-gcd-cond$extract
                               comp-gcd-cond$br-inputs
                               comp-gcd-cond$out-act1
                               comp-gcd-cond$data-out1)
                              (b-nor3
                               b-not
                               acl2::car-of-append))))))

  (local
   (defthm fv-if=v-if
     (implies (and (booleanp c)
                   (bvp a)
                   (bvp b)
                   (equal (len a) (len b)))
              (equal (fv-if c a b) (v-if c a b)))))

  (local
   (defthm comp-gcd$extracted-step-correct-aux-2
     (b* ((op-inputs (comp-gcd$op-inputs inputs st data-width))
          (d1 (nth *comp-gcd$d1* st)))
       (implies (and (natp data-width)
                     (equal (len d1) (* 2 data-width))
                     (bvp (strip-cars d1)))
                (equal
                 (comp-gcd$op (gcd-body$data-out op-inputs data-width))
                 (comp-gcd$op (strip-cars d1)))))
     :hints (("Goal"
              :do-not-induct t
              :in-theory (e/d (get-field
                               gcd-body$data-in
                               gcd-body$a<b
                               gcd-body$data-out
                               gcd-body$data-out0
                               gcd-body$data-out1
                               comp-gcd$op-inputs)
                              (v-if-works
                               v-not-take
                               v-not-nthcdr))))))

  (local
   (defthm comp-gcd$extracted-step-correct-aux-3
     (b* ((br-inputs (comp-gcd$br-inputs inputs st data-width))
          (d0 (nth *comp-gcd$d0* st)))
       (implies
        (and (natp data-width)
             (equal (len d0) (* 2 data-width))
             (bvp (strip-cars d0)))
        (equal (comp-gcd-cond$op
                (cons
                 (take data-width
                       (comp-gcd-cond$data-in br-inputs data-width))
                 (nthcdr data-width
                         (comp-gcd-cond$data-in br-inputs data-width))))
               (strip-cars d0))))
     :hints (("Goal" :in-theory (enable get-field
                                        comp-gcd-cond$op
                                        comp-gcd-cond$data-in
                                        comp-gcd$br-inputs)))))

  (defthm comp-gcd$extracted-step-correct
    (b* ((next-st (comp-gcd$step inputs st data-width)))
      (implies (and (comp-gcd$input-format inputs data-width)
                    (comp-gcd$valid-st st data-width)
                    (comp-gcd$inv st))
               (equal (comp-gcd$extract next-st)
                      (comp-gcd$extracted-step inputs st data-width))))
    :hints (("Goal"
             :in-theory (e/d (get-field
                              comp-gcd-cond$valid-st=>data-width-constraint
                              comp-gcd-cond$extracted-step
                              comp-gcd$extracted-step
                              comp-gcd$input-format
                              comp-gcd$valid-st
                              comp-gcd$st-format
                              comp-gcd$inv
                              comp-gcd$step
                              comp-gcd$in-act
                              comp-gcd$out-act
                              comp-gcd$data-out
                              comp-gcd$me-inputs
                              comp-gcd$extract
                              comp-gcd-cond$out-act
                              merge$act
                              merge$act0
                              merge$act1
                              f-sr)
                             (if*
                              b-if
                              b-not
                              take-of-too-many
                              acl2::simplify-products-gather-exponents-<
                              acl2::prefer-positive-addends-<
                              acl2::prefer-positive-addends-equal
                              acl2::|(< (if a b c) x)|
                              nfix)))))
  )

;; ======================================================================

;; 4. Relationship Between the Input and Output Sequences

;; Extract the accepted input sequence

(defun comp-gcd$in-seq (inputs-lst st data-width n)
  (declare (xargs :measure (acl2-count n)))
  (if (zp n)
      nil
    (b* ((inputs (car inputs-lst)))
      (if (equal (comp-gcd$in-act inputs st data-width) t)
          (append (comp-gcd$in-seq (cdr inputs-lst)
                                   (comp-gcd$step inputs st data-width)
                                   data-width
                                   (1- n))
                  (list (comp-gcd$data-in inputs data-width)))
        (comp-gcd$in-seq (cdr inputs-lst)
                         (comp-gcd$step inputs st data-width)
                         data-width
                         (1- n))))))

;; Extract the valid output sequence

(defun comp-gcd$out-seq (inputs-lst st data-width n)
  (declare (xargs :measure (acl2-count n)))
  (if (zp n)
      nil
    (b* ((inputs (car inputs-lst)))
      (if (equal (comp-gcd$out-act inputs st data-width) t)
          (append (comp-gcd$out-seq (cdr inputs-lst)
                                    (comp-gcd$step inputs st data-width)
                                    data-width
                                    (1- n))
                  (list (comp-gcd$data-out inputs st data-width)))
        (comp-gcd$out-seq (cdr inputs-lst)
                          (comp-gcd$step inputs st data-width)
                          data-width
                          (1- n))))))

;; Input-output sequence simulator

(progn
  (defun v-to-nat-split-lst (seq data-width)
    (declare (xargs :guard (and (true-list-listp seq)
                                (natp data-width))))
    (if (atom seq)
        nil
      (cons (list (v-to-nat (take data-width (car seq)))
                  (v-to-nat (nthcdr data-width (car seq))))
            (v-to-nat-split-lst (cdr seq) data-width))))

  (defund comp-gcd$in-out-seq-sim (data-width n state)
    (declare (xargs :guard (and (natp data-width)
                                (natp n))
                    :verify-guards nil
                    :stobjs state))
    (b* ((num-signals (comp-gcd$ins-len data-width))
         ((mv inputs-lst state)
          (signal-vals-gen num-signals n state nil))
         (full '(t))
         (empty '(nil))
         (invalid-data (make-list (* 2 data-width) :initial-element '(x)))
         (st (list full '(nil)
                   empty invalid-data
                   empty invalid-data
                   empty invalid-data)))
      (mv
       (append
        (list (cons 'in-seq
                    (v-to-nat-split-lst
                     (comp-gcd$in-seq inputs-lst st data-width n)
                     data-width)))
        (list (cons 'out-seq
                    (v-to-nat-lst
                     (comp-gcd$out-seq inputs-lst st data-width n)))))
       state)))
  )

;; Prove that comp-gcd$valid-st is an invariant.

(defthm comp-gcd$valid-st-preserved
  (implies (and (comp-gcd$input-format inputs data-width)
                (comp-gcd$valid-st st data-width))
           (comp-gcd$valid-st (comp-gcd$step inputs st data-width)
                              data-width))
  :hints (("Goal"
           :use (:instance comp-gcd-cond$valid-st-preserved
                           (inputs (comp-gcd$br-inputs inputs st data-width))
                           (st (get-field *comp-gcd$br* st)))
           :in-theory (e/d (get-field
                            comp-gcd-cond$valid-st=>data-width-constraint
                            comp-gcd$input-format
                            comp-gcd$valid-st
                            comp-gcd$st-format
                            comp-gcd$step
                            comp-gcd$me-inputs
                            comp-gcd-cond$out-act
                            merge$act
                            merge$act0
                            merge$act1
                            f-sr)
                           (if*
                            nthcdr
                            b-if
                            b-nor3
                            comp-gcd-cond$valid-st-preserved
                            acl2::true-listp-append)))))

(encapsulate
  ()

  (local
   (defthm comp-gcd$extract-lemma-aux-1
     (implies (and (<= (len (comp-gcd-cond$extract st))
                       1)
                   (comp-gcd-cond$valid-st st data-width)
                   (comp-gcd-cond$inv st)
                   (comp-gcd-cond$out-act0 inputs st data-width))
              (equal (comp-gcd-cond$extract st)
                     (list (comp-gcd-cond$data-out1 inputs st data-width))))
     :hints (("Goal"
              :in-theory (e/d (branch$act0
                               gcd-cond$data-in
                               gcd-cond$br-inputs
                               gcd-cond$act0
                               gcd-cond$data-out1
                               comp-gcd-cond$op
                               comp-gcd-cond$valid-st
                               comp-gcd-cond$st-format
                               comp-gcd-cond$inv
                               comp-gcd-cond$extract
                               comp-gcd-cond$br-inputs
                               comp-gcd-cond$out-act0
                               comp-gcd-cond$data-out1)
                              (b-nor3
                               b-not
                               acl2::car-of-append))))))

  (local
   (defthm comp-gcd$extract-lemma-aux-2
     (implies (and (comp-gcd-cond$valid-st st data-width)
                   (comp-gcd-cond$out-act0 inputs st data-width))
              (equal (comp-gcd$op
                      (comp-gcd-cond$data-out1 inputs st data-width))
                     (comp-gcd-cond$data-out0 inputs st data-width)))
     :hints (("Goal" :in-theory (enable branch$act0
                                        gcd-cond$data-in
                                        gcd-cond$br-inputs
                                        gcd-cond$act0
                                        gcd-cond$flag
                                        gcd-cond$data-out0
                                        gcd-cond$data-out1
                                        comp-gcd-cond$valid-st
                                        comp-gcd-cond$st-format
                                        comp-gcd-cond$br-inputs
                                        comp-gcd-cond$out-act0
                                        comp-gcd-cond$data-out0
                                        comp-gcd-cond$data-out1
                                        comp-gcd$op)))))

  (defthm comp-gcd$extract-lemma
    (implies (and (comp-gcd$valid-st st data-width)
                  (comp-gcd$inv st)
                  (equal n (1- (len (comp-gcd$extract st))))
                  (comp-gcd$out-act inputs st data-width))
             (equal (append
                     (take n (comp-gcd$extract st))
                     (list (comp-gcd$data-out inputs st data-width)))
                    (comp-gcd$extract st)))
    :hints (("Goal"
             :do-not-induct t
             :in-theory (e/d (comp-gcd$valid-st
                              comp-gcd$st-format
                              comp-gcd$inv
                              comp-gcd$extract
                              comp-gcd$br-inputs
                              comp-gcd$out-act
                              comp-gcd$data-out)
                             (v-if-works)))))
  )

(in-out-stream-lemma comp-gcd :op t :inv t)

