
(in-package "GL")

(set-inhibit-warnings "theory")

(include-book "g-if")
(include-book "g-primitives-help")
(include-book "symbolic-arithmetic-fns")
(include-book "eval-g-base")
;(include-book "tools/with-arith5-help" :dir :system)
(local (include-book "symbolic-arithmetic"))
(local (include-book "eval-g-base-help"))
(local (include-book "hyp-fix-logic"))


(defun g-ash-of-numbers (i c)
  (declare (xargs :guard (and (gobjectp i)
                              (general-numberp i)
                              (gobjectp c)
                              (general-numberp c))))
  (b* (((mv irn ird iin iid)
        (general-number-components i))
       ((mv crn crd cin cid)
        (general-number-components c))
       ((mv iintp iintp-known)
        (if (equal ird '(t))
            (mv (bfr-or (=-ss iin nil) (=-uu iid nil)) t)
          (mv nil nil)))
       ((mv cintp cintp-known)
        (if (equal crd '(t))
            (mv (bfr-or (=-ss cin nil) (=-uu cid nil)) t)
          (mv nil nil))))
    (if (and cintp-known iintp-known)
        (mk-g-number
         (ash-ss 1 (bfr-ite-bss-fn iintp irn nil)
                 (bfr-ite-bss-fn cintp crn nil)))
      (g-apply 'ash (list i c)))))

(in-theory (disable (g-ash-of-numbers)))



(local
 (progn
   (defthmd not-integerp-bfr-listp
     (implies (bfr-listp x)
              (not (integerp x)))
     :hints(("Goal" :in-theory (enable bfr-listp))))


   (defthm not-integerp-ash-ss
     (implies (and (bfr-listp shamt)
                   (bfr-listp n))
              (not (integerp (ash-ss place n shamt))))
     :hints(("Goal" :in-theory (enable not-integerp-bfr-listp))))


   (defthm ash-complex-1
     (implies (not (equal (imagpart n) 0))
              (equal (ash n shamt) (ash 0 shamt)))
     :hints(("Goal" :in-theory (enable ash))))

   (defthm ash-complex-2
     (implies (not (equal (imagpart shamt) 0))
              (equal (ash n shamt) (ash n 0)))
     :hints(("Goal" :in-theory (enable ash))))

   (defthm gobjectp-g-ash-of-numbers
     (implies (and (gobjectp x)
                   (general-numberp x)
                   (gobjectp y)
                   (general-numberp y))
              (gobjectp (g-ash-of-numbers x y)))
     :hints(("Goal" :in-theory (disable general-numberp
                                        general-number-components))))

   (include-book "arithmetic/top-with-meta" :dir :system)

   (defthm g-ash-of-numbers-correct
     (implies (and (gobjectp x)
                   (general-numberp x)
                   (gobjectp y)
                   (general-numberp y))
              (equal (eval-g-base (g-ash-of-numbers x y) env)
                     (ash (eval-g-base x env)
                          (eval-g-base y env))))
     :hints (("goal" :in-theory (e/d* ((:ruleset general-object-possibilities))
                                      (general-numberp
                                       general-number-components))
              :do-not-induct t)))))

(in-theory (disable g-ash-of-numbers))


(def-g-binary-op ash
  (b* ((i-num (if (general-numberp i) i 0))
       (c-num (if (general-numberp c) c 0)))
    (g-ash-of-numbers i-num c-num)))


(def-gobjectp-thm ash
  :hints `(("goal" :in-theory (e/d* (general-concretep-atom)
                                    ((:definition ,gfn)
                                     (force)
                                     general-concretep-def
                                     hyp-fix
                                     gobj-fix-when-not-gobjectp
                                     gobj-fix-when-gobjectp
                                     (:rules-of-class :type-prescription :here)
                                     (:ruleset gl-wrong-tag-rewrites)))
            :induct (,gfn i c hyp clk)
            :do-not-induct t
            :expand ((,gfn i c hyp clk)))))

(verify-g-guards
 ash
 :hints `(("Goal" :in-theory (disable ,gfn
                                      bfr-p-of-boolean))))




(local (defthm ash-when-not-numberp
         (and (implies (not (acl2-numberp x))
                       (equal (ash x y) (ash 0 y)))
              (implies (not (acl2-numberp y))
                       (equal (ash x y) (ash x 0))))
         :hints(("Goal" :in-theory (enable ash)))))

(def-g-correct-thm ash eval-g-base
  :hints
  `(("goal" :in-theory (e/d* (general-concretep-atom
                              (:ruleset general-object-possibilities))
                             ((:definition ,gfn)
                              tag-when-g-boolean-p
                              tag-when-g-apply-p
                              tag-when-g-concrete-p
                              tag-when-g-var-p
                              general-numberp-eval-to-numberp
                              general-boolean-value-correct
                              bool-cond-itep-eval
                              general-consp-car-correct-for-eval-g-base
                              general-consp-cdr-correct-for-eval-g-base
                              boolean-listp
                              components-to-number-alt-def
                              member-equal bfr-p-of-boolean
                              general-number-components-ev
                              general-concretep-def
                              v2n-is-v2i-when-sign-nil
                              general-concretep-def
                              rationalp-implies-acl2-numberp
                              (:rules-of-class :type-prescription :here))
                             ((:type-prescription bfr-eval)))
     :induct (,gfn i c hyp clk)
     :do-not-induct t
     :expand ((,gfn i c hyp clk)))
    (and stable-under-simplificationp
         (flag::expand-calls-computed-hint
          clause '(eval-g-base)))))
