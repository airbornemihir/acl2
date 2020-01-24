; FGL - A Symbolic Simulation Framework for ACL2
; Copyright (C) 2019 Centaur Technology
;
; Contact:
;   Centaur Technology Formal Verification Group
;   7600-C N. Capital of Texas Highway, Suite 300, Austin, TX 78731, USA.
;   http://www.centtech.com/
;
; License: (An MIT/X11-style license)
;
;   Permission is hereby granted, free of charge, to any person obtaining a
;   copy of this software and associated documentation files (the "Software"),
;   to deal in the Software without restriction, including without limitation
;   the rights to use, copy, modify, merge, publish, distribute, sublicense,
;   and/or sell copies of the Software, and to permit persons to whom the
;   Software is furnished to do so, subject to the following conditions:
;
;   The above copyright notice and this permission notice shall be included in
;   all copies or substantial portions of the Software.
;
;   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;   FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;   DEALINGS IN THE SOFTWARE.
;
; Original author: Sol Swords <sswords@centtech.com>

(in-package "FGL")

(include-book "tools/templates" :dir :system)
(include-book "primitives-stub")
(include-book "def-fgl-rewrite")
(include-book "centaur/meta/def-formula-checks" :dir :system)
(set-state-ok t)

(defthm fgl-primitive-constraint-base-monotonic-in-formula-check
  (implies (and (bind-free '((formula-check . formula-check)) (formula-check))
                (fgl-primitive-constraint-base
                 ans origfn args interp-st state formula-check
                 mode env n contexts st))
           (fgl-primitive-constraint-base
            ans origfn args interp-st state nil
            mode env n contexts st))
  :hints (("goal" :do-not '(preprocess)
           :in-theory (disable fgl-primitive-constraint-necc
                               equal-of-booleans-rewrite
                               nth member-equal pseudo-termp))))

(defcong iff equal 
  (fgl-primitive-constraint-base
   ans origfn args interp-st state formula-check
   mode env n contexts st)
  6
  :hints (("goal" :do-not '(preprocess)
           :in-theory (disable fgl-primitive-constraint-necc
                               equal-of-booleans-rewrite
                               nth member-equal pseudo-termp))))

(defthm fgl-meta-constraint-base-monotonic-in-formula-check
  (implies (and (bind-free '((formula-check . formula-check)) (formula-check))
                (fgl-meta-constraint-base
                 ans origfn args interp-st state formula-check
                 mode env n contexts st))
           (fgl-meta-constraint-base
            ans origfn args interp-st state nil
            mode env n contexts st))
  :hints (("goal" :do-not '(preprocess)
           :in-theory (disable fgl-meta-constraint-necc
                               equal-of-booleans-rewrite
                               nth member-equal pseudo-termp))))

(defcong iff equal 
  (fgl-meta-constraint-base
   ans origfn args interp-st state formula-check
   mode env n contexts st)
  6
  :hints (("goal" :do-not '(preprocess)
           :in-theory (disable fgl-meta-constraint-necc
                               equal-of-booleans-rewrite
                               nth member-equal pseudo-termp))))

(defthm fgl-binder-constraint-base-monotonic-in-formula-check
  (implies (and (bind-free '((formula-check . formula-check)) (formula-check))
                (fgl-binder-constraint-base
                 ans origfn args interp-st state formula-check
                 mode env n contexts st rhs-val eval-alist))
           (fgl-binder-constraint-base
            ans origfn args interp-st state nil
            mode env n contexts st rhs-val eval-alist))
  :hints (("goal" :do-not '(preprocess)
           :in-theory (disable fgl-binder-constraint-necc
                               equal-of-booleans-rewrite
                               nth member-equal pseudo-termp))))

(defcong iff equal 
  (fgl-binder-constraint-base
   ans origfn args interp-st state formula-check
   mode env n contexts st rhs-val eval-alist)
  6
  :hints (("goal" :do-not '(preprocess)
           :in-theory (disable fgl-binder-constraint-necc
                               equal-of-booleans-rewrite
                               nth member-equal pseudo-termp))))

(defthm fgl-primitive-constraint-monotonic-in-formula-check
  (implies (fgl-primitive-constraint
            ans origfn args interp-st state formula-check)
           (fgl-primitive-constraint
            ans origfn args interp-st state nil))
  :hints(("Goal" :in-theory (disable fgl-primitive-constraint-base
                                     fgl-primitive-constraint)
          :expand ((fgl-primitive-constraint
                    ans origfn args interp-st state nil)))))

(defcong iff equal (fgl-primitive-constraint
                    result origfn args interp-st sta formula-check) 6
                    :hints(("Goal" :in-theory (disable fgl-primitive-constraint-base
                                                       fgl-primitive-constraint
                                                       fgl-primitive-constraint-necc
                                                       iff))
                           (and stable-under-simplificationp
                                (let* ((lit (assoc 'fgl-primitive-constraint clause))
                                       (other-fc (if (eq (nth 6 lit) 'formula-check) 'formula-check-equiv 'formula-check))
                                       (lit-witness (cons 'fgl-primitive-constraint-witness (cdr lit)))
                                       (hint
                                        `(:expand ,lit
                                          :use ((:instance fgl-primitive-constraint-necc
                                                 (formula-check ,other-fc)
                                                 (mode     (mv-nth 0 ,lit-witness))
                                                 (env      (mv-nth 1 ,lit-witness))
                                                 (n        (mv-nth 2 ,lit-witness))
                                                 (contexts (mv-nth 3 ,lit-witness))
                                                 (st       (mv-nth 4 ,lit-witness)))))))
                                  ;; (prog2$ (cw "hint: ~x0~%" hint)
                                          hint))))

(defthm fgl-meta-constraint-monotonic-in-formula-check
  (implies (fgl-meta-constraint
            ans origfn args interp-st state formula-check)
           (fgl-meta-constraint
            ans origfn args interp-st state nil))
  :hints(("Goal" :in-theory (disable fgl-meta-constraint-base
                                     fgl-meta-constraint)
          :expand ((fgl-meta-constraint
                    ans origfn args interp-st state nil)))))

(defcong iff equal (fgl-meta-constraint
                    result origfn args interp-st sta formula-check) 6
                    :hints(("Goal" :in-theory (disable fgl-meta-constraint-base
                                                       fgl-meta-constraint
                                                       fgl-meta-constraint-necc
                                                       iff))
                           (and stable-under-simplificationp
                                (let* ((lit (assoc 'fgl-meta-constraint clause))
                                       (other-fc (if (eq (nth 6 lit) 'formula-check) 'formula-check-equiv 'formula-check))
                                       (lit-witness (cons 'fgl-meta-constraint-witness (cdr lit)))
                                       (hint
                                        `(:expand ,lit
                                          :use ((:instance fgl-meta-constraint-necc
                                                 (formula-check ,other-fc)
                                                 (mode     (mv-nth 0 ,lit-witness))
                                                 (env      (mv-nth 1 ,lit-witness))
                                                 (n        (mv-nth 2 ,lit-witness))
                                                 (contexts (mv-nth 3 ,lit-witness))
                                                 (st       (mv-nth 4 ,lit-witness)))))))
                                  ;;(prog2$ (cw "hint: ~x0~%" hint)
                                          hint))))

(defthm fgl-binder-constraint-monotonic-in-formula-check
  (implies (fgl-binder-constraint
            ans origfn args interp-st state formula-check)
           (fgl-binder-constraint
            ans origfn args interp-st state nil))
  :hints(("Goal" :in-theory (disable fgl-binder-constraint-base
                                     fgl-binder-constraint)
          :expand ((fgl-binder-constraint
                    ans origfn args interp-st state nil)))))

(defcong iff equal (fgl-binder-constraint
                    result origfn args interp-st sta formula-check) 6
                    :hints(("Goal" :in-theory (disable fgl-binder-constraint-base
                                                       fgl-binder-constraint
                                                       fgl-binder-constraint-necc
                                                       iff))
                           (and stable-under-simplificationp
                                (let* ((lit (assoc 'fgl-binder-constraint clause))
                                       (other-fc (if (eq (nth 6 lit) 'formula-check) 'formula-check-equiv 'formula-check))
                                       (lit-witness (cons 'fgl-binder-constraint-witness (cdr lit)))
                                       (hint
                                        `(:expand ,lit
                                          :use ((:instance fgl-binder-constraint-necc
                                                 (formula-check ,other-fc)
                                                 (mode       (mv-nth 0 ,lit-witness))
                                                 (env        (mv-nth 1 ,lit-witness))
                                                 (n          (mv-nth 2 ,lit-witness))
                                                 (contexts   (mv-nth 3 ,lit-witness))
                                                 (st         (mv-nth 4 ,lit-witness))
                                                 (rhs-val    (mv-nth 5 ,lit-witness))
                                                 (eval-alist (mv-nth 6 ,lit-witness)))))))
                                  ;;(prog2$ (cw "hint: ~x0~%" hint)
                                  hint))))


(local (in-theory (disable w)))
(defcong world-equiv equal (meta-extract-formula name st) 2
  :hints(("Goal" :in-theory (enable world-equiv meta-extract-formula))))

(defthmd w-state-equal-forward
  (implies (equal (w st) (w state))
           (world-equiv st state))
  :hints(("Goal" :in-theory (enable world-equiv)))
  :rule-classes :forward-chaining)

(defmacro def-formula-checks (name fns)
  `(encapsulate nil
     (local (in-theory (disable w)))
     (cmr::def-formula-checks ,name ,fns :evl fgl-ev :evl-base-fns *fgl-ev-base-fns*
       :switch-hyps t)
     (table fgl-formula-checks ',name
            (cdr (assoc ',name (table-alist 'cmr::formula-checkers world))))
     (defcong world-equiv equal (,name st) 1
       :hints(("Goal" :in-theory (enable ,name))))
     (def-updater-independence-thm
       ,(intern-in-package-of-symbol
         (concatenate 'string (symbol-name name)
                      "-SIMPLIFY-STATE")
         name)
       (implies (equal (w new) (w old))
                (equal (,name new) (,name old)))
       :hints(("Goal" :in-theory (enable w-state-equal-forward))))))


;; (defcong world-equiv equal (meta-extract-global-fact+ obj st sta) 3
;;   :hints(("Goal" :in-theory (enable world-equiv meta-extract-global-fact+))))

;; (def-updater-independence-thm meta-extract-global-fact+-simplify-state
;;   (implies (equal (w new) (w old))
;;            (equal (meta-extract-global-fact+ obj st new)
;;                   (meta-extract-global-fact+ obj st old)))
;;   :hints(("Goal" :in-theory (enable w-state-equal-forward))))



(defun def-fgl-meta-base (name body formula-check-fn prepwork)
  (declare (Xargs :mode :program))
  (acl2::template-subst
   '(define <metafn> ((origfn pseudo-fnsym-p)
                      (args fgl-objectlist-p)
                      (interp-st interp-st-bfrs-ok)
                      state)
      :guard (interp-st-bfr-listp (fgl-objectlist-bfrlist args))
      :returns (mv successp
                   rhs
                   bindings
                   new-interp-st
                   new-state)
      :prepwork (<prepwork>
                 (local (in-theory (disable w))))
      :hooks (:fix)
      <body>
      ///
      ;; <thms>

      ;; (defret eval-of-<metafn>
      ;;   (implies (and successp
      ;;                 (equal contexts (interp-st->equiv-contexts interp-st))
      ;;                 (fgl-ev-meta-extract-global-facts :state st)
      ;;                 <formula-check>
      ;;                 (equal (w st) (w state))
      ;;                 (interp-st-bfrs-ok interp-st)
      ;;                 (interp-st-bfr-listp (fgl-objectlist-bfrlist args))
      ;;                 (logicman-pathcond-eval (fgl-env->bfr-vals env)
      ;;                                         (interp-st->constraint interp-st)
      ;;                                         (interp-st->logicman interp-st))
      ;;                 (logicman-pathcond-eval (fgl-env->bfr-vals env)
      ;;                                         (interp-st->pathcond interp-st)
      ;;                                         (interp-st->logicman interp-st))
      ;;                 (pseudo-fnsym-p origfn))
      ;;            (fgl-ev-context-equiv-forall-extensions
      ;;             contexts
      ;;             (fgl-ev (cons origfn (kwote-lst (fgl-objectlist-eval args env (interp-st->logicman interp-st)))) nil)
      ;;             rhs
      ;;             (fgl-object-bindings-eval bindings env (interp-st->logicman new-interp-st)))))
      
      (defret fgl-meta-constraint-of-<fn>-lemma
        (fgl-meta-constraint <call>
                             origfn args interp-st state
                             <formula-check-arg>)
        :hints (("goal" :in-theory '(fgl-meta-constraint))
                (and stable-under-simplificationp
                     '(:clause-processor
                       (acl2::simple-generalize-cp
                        clause
                        '(((mv-nth '0 (fgl-meta-constraint-witness
                                       <call> fn args interp-st state <formula-check-arg>)) . mode)
                          ((mv-nth '1 (fgl-meta-constraint-witness
                                       <call> fn args interp-st state <formula-check-arg>)) . env)
                          ((mv-nth '2 (fgl-meta-constraint-witness
                                       <call> fn args interp-st state <formula-check-arg>)) . n)
                          ((mv-nth '3 (fgl-meta-constraint-witness
                                       <call> fn args interp-st state <formula-check-arg>)) . contexts)
                          ((mv-nth '4 (fgl-meta-constraint-witness
                                       <call> fn args interp-st state <formula-check-arg>)) . st)))
                       ;;        :in-theory '(fgl-meta-constraint-base)))
                       ;; (and stable-under-simplificationp
                       ;;      '(
                       :in-theory (e/d (w-state-equal-forward)
                                       (fgl-meta-constraint-necc))))))

      (defret fgl-meta-constraint-of-<fn>
        (implies (case-split (implies formula-check <formula-check-arg>))
                 (fgl-meta-constraint <call>
                                      origfn args interp-st state
                                      formula-check))
        :hints (("goal" :use fgl-meta-constraint-of-<fn>-lemma
                 :in-theory (disable fgl-meta-constraint <fn> fgl-meta-constraint-of-<fn>-lemma)
                 :cases (formula-check))))

      (table fgl-metafns '<metafn> t))
   :splice-alist `((<thms> . ,*fgl-meta-rule-thms*)
                   (<formula-check> . 
                                    ,(and formula-check-fn
                                          `((,formula-check-fn st))))
                   (<prepwork> . ,prepwork))
   :atom-alist `((<metafn> . ,name)
                 (<body> . ,body)
                 (<formula-check-arg> . ,(if formula-check-fn
                                             `(,formula-check-fn state)
                                           t)))
   :str-alist `(("<METAFN>" . ,(symbol-name name)))))

(defun def-fgl-meta-fn (name fn formals body formula-check-fn prepwork)
  (declare (Xargs :mode :program))
  `(progn
     ,(def-fgl-meta-base name
        `(if (and (eq (pseudo-fnsym-fix origfn) ',fn)
                  (eql (len args) ,(len formals)))
             (b* (((list . ,formals) (fgl-objectlist-fix args)))
               ,body)
           (mv nil nil nil interp-st state))
        formula-check-fn prepwork)
     (add-fgl-meta ,fn ,name)))


(defmacro def-fgl-meta (name body &key (formula-check) (prepwork) (origfn) (formals ':none))
  (if origfn
      (if (eq formals :none)
          `(make-event
            (b* ((formals (getpropc ',origfn 'formals nil (w state))))
              (def-fgl-meta-fn ',name ',origfn formals ',body ',formula-check ',prepwork)))
        (def-fgl-meta-fn name origfn formals body formula-check prepwork))
    (def-fgl-meta-base name body formula-check prepwork)))

(defun def-fgl-primitive-fn (fn formals body name-override formula-check-fn updates-state prepwork)
  (declare (Xargs :mode :program))
  (b* ((primfn (or name-override
                   (intern-in-package-of-symbol
                    (concatenate 'string "FGL-" (symbol-name fn) "-PRIMITIVE")
                    'fgl-package))))
    (acl2::template-subst
     '(define <primfn> ((origfn pseudo-fnsym-p)
                        (args fgl-objectlist-p)
                        (interp-st interp-st-bfrs-ok)
                        state)
        :guard (interp-st-bfr-listp (fgl-objectlist-bfrlist args))
        :returns (mv successp
                     ans
                     new-interp-st
                     new-state)
        :prepwork (<prepwork>
                   (local (in-theory (disable w))))
        :hooks (:fix)
        (if (and (eq (pseudo-fnsym-fix origfn) '<fn>)
                 (eql (len args) <arity>))
            (b* (((list <formals>) (fgl-objectlist-fix args)))
              (:@ (not :updates-state)
               (b* (((mv successp ans interp-st) <body>))
                 (mv successp ans interp-st state)))
              (:@ :updates-state <body>))
          (mv nil nil interp-st state))
        ///
        ;; <thms>

        ;; (defret eval-of-<fn>-primitive
        ;;   (implies (and successp
        ;;                 (equal contexts (interp-st->equiv-contexts interp-st))
        ;;                 (fgl-ev-meta-extract-global-facts :state st)
        ;;                 <formula-check>
        ;;                 (equal (w st) (w state))
        ;;                 (interp-st-bfrs-ok interp-st)
        ;;                 (interp-st-bfr-listp (fgl-objectlist-bfrlist args))
        ;;                 (logicman-pathcond-eval (fgl-env->bfr-vals env)
        ;;                                         (interp-st->constraint interp-st)
        ;;                                         (interp-st->logicman interp-st))
        ;;                 (logicman-pathcond-eval (fgl-env->bfr-vals env)
        ;;                                         (interp-st->pathcond interp-st)
        ;;                                         (interp-st->logicman interp-st)))
        ;;            (equal (fgl-ev-context-fix contexts
        ;;                                       (fgl-object-eval ans env (interp-st->logicman new-interp-st)))
        ;;                   (fgl-ev-context-fix contexts
        ;;                                       (fgl-object-eval (g-apply origfn args) env (interp-st->logicman interp-st))))))
        (defret fgl-primitive-constraint-of-<fn>-lemma
          (fgl-primitive-constraint <call>
                                 origfn args interp-st state
                                 <formula-check-arg>)
          :hints (("goal" :in-theory '(fgl-primitive-constraint))
                  (and stable-under-simplificationp
                       '(:clause-processor
                         (acl2::simple-generalize-cp
                          clause
                          '(((mv-nth '0 (fgl-primitive-constraint-witness
                                         <call> fn args interp-st state <formula-check-arg>)) . mode)
                            ((mv-nth '1 (fgl-primitive-constraint-witness
                                         <call> fn args interp-st state <formula-check-arg>)) . env)
                            ((mv-nth '2 (fgl-primitive-constraint-witness
                                         <call> fn args interp-st state <formula-check-arg>)) . n)
                            ((mv-nth '3 (fgl-primitive-constraint-witness
                                         <call> fn args interp-st state <formula-check-arg>)) . contexts)
                            ((mv-nth '4 (fgl-primitive-constraint-witness
                                         <call> fn args interp-st state <formula-check-arg>)) . st)))
                         ;;        :in-theory '(fgl-primitive-constraint-base)))
                         ;; (and stable-under-simplificationp
                         ;;      '(
                         :in-theory (e/d (w-state-equal-forward)
                                         (fgl-primitive-constraint-necc))))))

      (defret fgl-primitive-constraint-of-<fn>
        (implies (case-split (implies formula-check <formula-check-arg>))
                 (fgl-primitive-constraint <call>
                                           origfn args interp-st state
                                           formula-check))
        :hints (("goal" :use fgl-primitive-constraint-of-<fn>-lemma
                 :in-theory (disable fgl-primitive-constraint <fn> fgl-primitive-constraint-of-<fn>-lemma)
                 :cases (formula-check))))

        (table fgl-primitives '<primfn> '<fn>)
        (add-fgl-primitive <fn> <primfn>)
        )
     :splice-alist `((<formals> . ,formals)
                     (<thms> . ,*fgl-primitive-rule-thms*)
                     (<formula-check> . 
                                      ,(and formula-check-fn
                                            `((,formula-check-fn st))))
                     (<prepwork> . ,prepwork))
     :atom-alist `((<primfn> . ,primfn)
                   (<fn> . ,fn)
                   (<arity> . ,(len formals))
                   (<body> . ,body)
                   (<formula-check-arg> . ,(if formula-check-fn
                                               `(,formula-check-fn state)
                                             t)))
     :str-alist `(("<FN>" . ,(symbol-name fn)))
     :features (and updates-state '(:updates-state)))))

(defun def-fgl-primitive-as-metafn (fn formals body name-override formula-check-fn updates-state prepwork)
  (declare (Xargs :mode :program))
  (b* ((primfn (or name-override
                   (intern-in-package-of-symbol
                    (concatenate 'string "FGL-" (symbol-name fn) "-PRIMITIVE")
                    'fgl-package))))
    (acl2::template-subst
     '(def-fgl-meta <primfn>
        (b* ((:@ (not :updates-state)
              ((mv successp ans interp-st) <body>))
             (:@ :updates-state
              ((mv successp ans interp-st state) <body>)))
          (mv successp 'x `((x . ,ans)) interp-st state))
        :origfn <fn> :formals <formals>
        :prepwork (<prepwork>
                   (local (in-theory (disable w))))
        <formula-check>)
     :splice-alist `((<formals> . ,formals)
                     (<formula-check> . 
                                      ,(and formula-check-fn
                                            `(:formula-check ,formula-check-fn)))
                     (<prepwork> . ,prepwork))
     :atom-alist `((<primfn> . ,primfn)
                   (<fn> . ,fn)
                   (<arity> . ,(len formals))
                   (<body> . ,body))
     :str-alist `(("<FN>" . ,(symbol-name fn)))
     :features (and updates-state '(:updates-state))
     :pkg-sym primfn)))


(defmacro def-fgl-primitive (fn formals body &key (fnname) (formula-check) (prepwork) (updates-state))
  `(make-event
    (def-fgl-primitive-fn ',fn ',formals ',body ',fnname ',formula-check ',updates-state ',prepwork)))


(defun def-fgl-binder-meta-base (name body formula-check-fn prepwork)
  (declare (Xargs :mode :program))
  (acl2::template-subst
   '(define <metafn> ((fn pseudo-fnsym-p)
                      (args fgl-objectlist-p)
                      (interp-st interp-st-bfrs-ok)
                      state)
      :guard (interp-st-bfr-listp (fgl-objectlist-bfrlist args))
      :returns (mv successp
                   rhs
                   bindings
                   rhs-contexts
                   new-interp-st
                   new-state)
      :prepwork (<prepwork>
                 (local (in-theory (disable w))))
      :hooks (:fix)
      <body>
      ///
      ;; <thms>

      ;; (defret eval-of-<metafn>
      ;;   (implies (and successp
      ;;                 (equal contexts (interp-st->equiv-contexts interp-st))
      ;;                 (fgl-ev-meta-extract-global-facts :state st)
      ;;                 <formula-check>
      ;;                 (equal (w st) (w state))
      ;;                 (interp-st-bfrs-ok interp-st)
      ;;                 (interp-st-bfr-listp (fgl-objectlist-bfrlist args))
      ;;                 (logicman-pathcond-eval (fgl-env->bfr-vals env)
      ;;                                         (interp-st->constraint interp-st)
      ;;                                         (interp-st->logicman interp-st))
      ;;                 (logicman-pathcond-eval (fgl-env->bfr-vals env)
      ;;                                         (interp-st->pathcond interp-st)
      ;;                                         (interp-st->logicman interp-st))
      ;;                 (fgl-ev-context-equiv-forall-extensions
      ;;                  rhs-contexts
      ;;                  rhs-val
      ;;                  rhs eval-alist)
      ;;                 (eval-alist-extension-p eval-alist (fgl-object-bindings-eval bindings env (interp-st->logicman new-interp-st)))
      ;;                 (pseudo-fnsym-p fn))
      ;;            (equal (fgl-ev-context-fix contexts (fgl-ev (cons fn
      ;;                                                              (cons (pseudo-term-quote rhs-val)
      ;;                                                                    (kwote-lst
      ;;                                                                     (fgl-objectlist-eval
      ;;                                                                      args env
      ;;                                                                      (interp-st->logicman interp-st)))))
      ;;                                                        nil))
      ;;                   (fgl-ev-context-fix contexts rhs-val))))
      (defret fgl-binder-constraint-of-<fn>-lemma
        (fgl-binder-constraint <call>
                               fn args interp-st state
                               <formula-check-arg>)
        :hints (("goal" :in-theory '(fgl-binder-constraint))
                (and stable-under-simplificationp
                     '(:clause-processor
                       (acl2::simple-generalize-cp
                        clause
                        '(((mv-nth '0 (fgl-binder-constraint-witness
                                       <call> fn args interp-st state <formula-check-arg>)) . mode)
                          ((mv-nth '1 (fgl-binder-constraint-witness
                                       <call> fn args interp-st state <formula-check-arg>)) . env)
                          ((mv-nth '2 (fgl-binder-constraint-witness
                                       <call> fn args interp-st state <formula-check-arg>)) . n)
                          ((mv-nth '3 (fgl-binder-constraint-witness
                                       <call> fn args interp-st state <formula-check-arg>)) . contexts)
                          ((mv-nth '4 (fgl-binder-constraint-witness
                                       <call> fn args interp-st state <formula-check-arg>)) . st)
                          ((mv-nth '5 (fgl-binder-constraint-witness
                                       <call> fn args interp-st state <formula-check-arg>)) . rhs-val)
                          ((mv-nth '6 (fgl-binder-constraint-witness
                                       <call> fn args interp-st state <formula-check-arg>)) . eval-alist)))
                ;;        :in-theory '(fgl-binder-constraint-base)))
                ;; (and stable-under-simplificationp
                ;;      '(
                       :in-theory (e/d (w-state-equal-forward)
                                       (fgl-binder-constraint-necc))))))

      (defret fgl-binder-constraint-of-<fn>
        (implies (case-split (implies formula-check <formula-check-arg>))
                 (fgl-binder-constraint <call>
                                        fn args interp-st state
                                        formula-check))
        :hints (("goal" :use fgl-binder-constraint-of-<fn>-lemma
                 :in-theory (disable fgl-binder-constraint <fn> fgl-binder-constraint-of-<fn>-lemma)
                 :cases (formula-check))))

      (table fgl-binderfns '<metafn> t))
   :splice-alist `((<thms> . ,*fgl-binder-rule-thms*)
                   (<formula-check> . 
                                    ,(and formula-check-fn
                                          `((,formula-check-fn st))))
                 (<prepwork> . ,prepwork))
   :atom-alist `((<metafn> . ,name)
                 (<body> . ,body)
                 (<formula-check-arg> . ,(if formula-check-fn
                                             `(,formula-check-fn state)
                                           t)))
   :str-alist `(("<METAFN>" . ,(symbol-name name)))))

(defun def-fgl-binder-meta-fn (name fn formals body formula-check-fn prepwork)
  (declare (xargs :mode :program))
  `(progn
     ,(def-fgl-binder-meta-base name
        `(if (and (eq (pseudo-fnsym-fix fn) ',fn)
                  (eql (len args) ,(len formals)))
             (b* (((list . ,formals) (fgl-objectlist-fix args)))
               ,body)
           (mv nil nil nil nil interp-st state))
        formula-check-fn prepwork)
     (add-fgl-binder-meta ,fn ,name)))

(defmacro def-fgl-binder-meta (name body &key (formula-check) (prepwork) (origfn) (formals ':none))
  (if origfn
      (if (eq formals :none)
          `(make-event
            (b* ((formals (cdr (getpropc ',origfn 'formals nil (w state)))))
              (def-fgl-binder-meta-fn ',name ',origfn formals ',body ',formula-check ',prepwork)))
        (def-fgl-binder-meta-fn name origfn formals body formula-check prepwork))
    (def-fgl-binder-meta-base name body formula-check prepwork)))







(defun member-atoms (x tree)
  (if (Atom tree)
      (equal tree x)
    (or (member-atoms x (car tree))
        (member-atoms x (cdr tree)))))




(defun fgl-primitive-fncall-entries (table last)
  (Declare (Xargs :mode :program))
  (if (atom table)
      `((otherwise ,last))
    (b* ((fn (caar table)))
      (cons (acl2::template-subst
             '(<fn> (<fn> origfn args interp-st state))
             :atom-alist `((<fn> . ,fn)))
            (fgl-primitive-fncall-entries (cdr table) last)))))

(defun formula-check-thms (name table)
  (if (atom table)
      nil
    (b* ((check-name (caar table))
         (thmname (intern-in-package-of-symbol
                   (concatenate 'string (symbol-name check-name) "-WHEN-" (symbol-name name))
                   name)))
      (cons `(defthm ,thmname
               (implies (,name st)
                        (,check-name st))
               :hints (("Goal" :in-theory '(,name ,check-name))))
            (formula-check-thms name (cdr table))))))


(defun install-fgl-metafns-fn (prefix state)
  (declare (xargs :mode :program :stobjs state))
  (b* ((wrld (w state))
       (name-formula-checks (intern-in-package-of-symbol
                             (concatenate 'string (symbol-name prefix) "-FORMULA-CHECKS")
                             prefix))
       (formula-checks-table (table-alist 'fgl-formula-checks wrld))
       (formula-check-fns (set::mergesort (append-alist-vals formula-checks-table)))
       (formula-check-thms (formula-check-thms name-formula-checks formula-checks-table))
       )
    (acl2::template-subst
     '(encapsulate nil
        ;; (def-fgl-object-eval <prefix> nil :union-previous t)
        ;; BOZO we don't need to prove all the usual ev-of-fn theorems about this...
        ;; (def-formula-checks <prefix>-formula-checks <formula-check-fns>)
        (cmr::def-formula-checker <prefix>-formula-checks <formula-check-fns>)
        (defcong world-equiv equal (<prefix>-formula-checks st) 1
          :hints(("Goal" :in-theory (enable <prefix>-formula-checks))))
        (local (cmr::def-formula-checker-lemmas <prefix>-formula-checks <formula-check-fns>))
        (local (progn . <formula-check-thms>))

        (local (in-theory (disable fgl-primitive-constraint
                                   fgl-primitive-constraint-necc
                                   fgl-meta-constraint
                                   fgl-meta-constraint-necc
                                   fgl-binder-constraint
                                   fgl-binder-constraint-necc)))
        ;; (make-event
        ;;  (cons 'progn
        ;;        (instantiate-fgl-primitive-correctness-thms-fn
        ;;         (table-alist 'fgl-primitives (w state)))))

        (define <prefix>-primitive-fncall ((primfn pseudo-fnsym-p)
                                           (origfn pseudo-fnsym-p)
                                           (args fgl-objectlist-p)
                                           (interp-st interp-st-bfrs-ok)
                                           state)
          :guard (interp-st-bfr-listp (fgl-objectlist-bfrlist args))
          :returns (mv successp ans new-interp-st new-state)
          :ignore-ok t
          :prepwork ((local (in-theory (disable w))))
          (case (pseudo-fnsym-fix primfn)
            . <prim-entries>) ;;,(fgl-primitive-fncall-entries (table-alist 'fgl-primitives wrld)))
          ///
          ;; <prim-thms>
          ;; (defret eval-of-<fn>
          ;;   (implies (and successp
          ;;                 (equal contexts (interp-st->equiv-contexts interp-st))
          ;;                 (fgl-ev-meta-extract-global-facts :state st)
          ;;                 ;; (,name-formula-checks st)
          ;;                 (<prefix>-formula-checks st)
          ;;                 (equal (w st) (w state))
          ;;                 (interp-st-bfrs-ok interp-st)
          ;;                 (interp-st-bfr-listp (fgl-objectlist-bfrlist args))
          ;;                 (logicman-pathcond-eval (fgl-env->bfr-vals env)
          ;;                                         (interp-st->constraint interp-st)
          ;;                                         (interp-st->logicman interp-st))
          ;;                 (logicman-pathcond-eval (fgl-env->bfr-vals env)
          ;;                                         (interp-st->pathcond interp-st)
          ;;                                         (interp-st->logicman interp-st)))
          ;;            (equal (fgl-ev-context-fix contexts
          ;;                                       (fgl-object-eval ans env (interp-st->logicman new-interp-st)))
          ;;                   (fgl-ev-context-fix contexts
          ;;                                       (fgl-object-eval (g-apply origfn args) env (interp-st->logicman interp-st))))))
          (defret fgl-primitive-constraint-of-<fn>
            (fgl-primitive-constraint <call>
                                      origfn args interp-st state
                                      (<prefix>-formula-checks state)))

          (fty::deffixequiv <prefix>-primitive-fncall))

        (define <prefix>-meta-fncall ((metafn pseudo-fnsym-p)
                                      (origfn pseudo-fnsym-p)
                                      (args fgl-objectlist-p)
                                      (interp-st interp-st-bfrs-ok)
                                      state)
          :guard (interp-st-bfr-listp (fgl-objectlist-bfrlist args))
          :returns (mv successp rhs bindings new-interp-st new-state)
          :ignore-ok t
          :prepwork ((local (in-theory (disable w))))
          (case (pseudo-fnsym-fix metafn)
            . <meta-entries>) ;;,(fgl-primitive-fncall-entries (table-alist 'fgl-primitives wrld)))
          ///
          ;; <meta-thms>
          ;; (defret eval-of-<fn>
          ;;   (implies (and successp
          ;;                 (equal contexts (interp-st->equiv-contexts interp-st))
          ;;                 (fgl-ev-meta-extract-global-facts :state st)
          ;;                 ;; (,name-formula-checks st)
          ;;                 (<prefix>-formula-checks st)
          ;;                 (equal (w st) (w state))
          ;;                 (interp-st-bfrs-ok interp-st)
          ;;                 (interp-st-bfr-listp (fgl-objectlist-bfrlist args))
          ;;                 (logicman-pathcond-eval (fgl-env->bfr-vals env)
          ;;                                         (interp-st->constraint interp-st)
          ;;                                         (interp-st->logicman interp-st))
          ;;                 (logicman-pathcond-eval (fgl-env->bfr-vals env)
          ;;                                         (interp-st->pathcond interp-st)
          ;;                                         (interp-st->logicman interp-st))
          ;;                 (pseudo-fnsym-p origfn))
          ;;            (fgl-ev-context-equiv-forall-extensions
          ;;             contexts
          ;;             (fgl-ev (cons origfn (kwote-lst (fgl-objectlist-eval args env (interp-st->logicman interp-st)))) nil)
          ;;             rhs
          ;;             (fgl-object-bindings-eval bindings env (interp-st->logicman new-interp-st)))))
          (defret fgl-meta-constraint-of-<fn>
            (fgl-meta-constraint <call>
                                      origfn args interp-st state
                                      (<prefix>-formula-checks state)))
          (fty::deffixequiv <prefix>-meta-fncall))

        (define <prefix>-binder-fncall ((bindfn pseudo-fnsym-p)
                                        (origfn pseudo-fnsym-p)
                                        (args fgl-objectlist-p)
                                        (interp-st interp-st-bfrs-ok)
                                        state)
          :guard (interp-st-bfr-listp (fgl-objectlist-bfrlist args))
          :returns (mv successp rhs bindings rhs-contexts new-interp-st new-state)
          :ignore-ok t
          :prepwork ((local (in-theory (disable w))))
          (case (pseudo-fnsym-fix bindfn)
            . <bind-entries>) ;;,(fgl-primitive-fncall-entries (table-alist 'fgl-primitives wrld)))
          ///
          ;; <bind-thms>
          ;; (defret eval-of-<fn>
          ;;   (implies (and successp
          ;;                 (equal contexts (interp-st->equiv-contexts interp-st))
          ;;                 (fgl-ev-meta-extract-global-facts :state st)
          ;;                 ;; (,name-formula-checks st)
          ;;                 (<prefix>-formula-checks st)
          ;;                 (equal (w st) (w state))
          ;;                 (interp-st-bfrs-ok interp-st)
          ;;                 (interp-st-bfr-listp (fgl-objectlist-bfrlist args))
          ;;                 (logicman-pathcond-eval (fgl-env->bfr-vals env)
          ;;                                         (interp-st->constraint interp-st)
          ;;                                         (interp-st->logicman interp-st))
          ;;                 (logicman-pathcond-eval (fgl-env->bfr-vals env)
          ;;                                         (interp-st->pathcond interp-st)
          ;;                                         (interp-st->logicman interp-st))
          ;;                 (fgl-ev-context-equiv-forall-extensions
          ;;                  rhs-contexts
          ;;                  rhs-val
          ;;                  rhs eval-alist)
          ;;                 (eval-alist-extension-p eval-alist (fgl-object-bindings-eval bindings env (interp-st->logicman new-interp-st)))
          ;;                 (pseudo-fnsym-p origfn))
          ;;            (equal (fgl-ev-context-fix contexts (fgl-ev (cons origfn
          ;;                                                              (cons (pseudo-term-quote rhs-val)
          ;;                                                                    (kwote-lst
          ;;                                                                     (fgl-objectlist-eval
          ;;                                                                      args env
          ;;                                                                      (interp-st->logicman interp-st)))))
          ;;                                                  nil))
          ;;                   (fgl-ev-context-fix contexts rhs-val))))
          (defret fgl-binder-constraint-of-<fn>
            (fgl-binder-constraint <call>
                                      origfn args interp-st state
                                      (<prefix>-formula-checks state)))

          (fty::deffixequiv <prefix>-binder-fncall))

        ;; bozo, dumb theorem needed to prove fixequiv hook
        (local (defthm pseudo-fnsym-fix-equal-forward
                 (implies (equal (pseudo-fnsym-fix x) (pseudo-fnsym-fix y))
                          (pseudo-fnsym-equiv x y))
                 :rule-classes :forward-chaining))

        (defattach
          ;; BOZO add all these back in as well as substitutions for -concretize functions
          ;; if we support adding new evaluators.
          ;; (fgl-ev <prefix>-ev)
          ;; (fgl-ev-list <prefix>-ev-list)
          ;; (fgl-apply <prefix>-apply :attach nil)
          ;; (fgl-object-eval-fn <prefix>-object-eval-fn :attach nil)
          ;; (fgl-objectlist-eval-fn <prefix>-objectlist-eval-fn :attach nil)
          ;; (fgl-object-alist-eval-fn <prefix>-object-alist-eval-fn :attach nil)
          ;; (fgl-ev-falsify <prefix>-ev-falsify :attach nil)
          ;; (fgl-ev-meta-extract-global-badguy <prefix>-ev-meta-extract-global-badguy :attach nil)
          (fgl-primitive-fncall-stub <prefix>-primitive-fncall)
          (fgl-meta-fncall-stub <prefix>-meta-fncall)
          (fgl-binder-fncall-stub <prefix>-binder-fncall)
          (fgl-formula-checks-stub <prefix>-formula-checks)
          :hints(("Goal"
                  :do-not '(preprocess simplify)
                  :in-theory (disable w fgl-ev-context-equiv-forall-extensions)
                  :clause-processor dumb-clausify-cp)
                 '(:do-not nil)
                 ;; (let ((term (car (last clause))))
                 ;;   (case-match term
                 ;;     (('equal (fn . &) . &)
                 ;;      `(:clause-processor (beta-reduce-by-hint-cp clause ',fn state)
                 ;;        :do-not nil))
                 ;;     (& (cond ;; ((member-atoms '<prefix>-primitive-fncall term)
                 ;;              ;;  '(:do-not nil))
                 ;;              (t '(:do-not nil))))))
                 )))
     :str-alist `(("<PREFIX>" ,(symbol-name prefix) . ,prefix))
     :atom-alist `(;; (<all-formulas> . ,all-formulas)
                   ;; (<formula-check-thms> . ,formula-check-thms)
                   (<prim-entries> . ,(fgl-primitive-fncall-entries (table-alist 'fgl-primitives wrld) '(mv nil nil interp-st state)))
                   (<meta-entries> . ,(fgl-primitive-fncall-entries (table-alist 'fgl-metafns wrld) '(mv nil nil nil interp-st state)))
                   (<bind-entries> . ,(fgl-primitive-fncall-entries (table-alist 'fgl-binderfns wrld)
                                                                    '(mv nil nil nil nil interp-st state)))
                   ;; (<all-formulas> . ,all-formulas)
                   (<formula-check-thms> . ,formula-check-thms)
                   (<formula-check-fns> . ,formula-check-fns))
     :splice-alist `((<prim-thms> . ,*fgl-primitive-rule-thms*)
                     (<meta-thms> . ,*fgl-meta-rule-thms*)
                     (<bind-thms> . ,*fgl-binder-rule-thms*)))
    
    ))

(defmacro install-fgl-metafns (name)
  `(make-event
    (install-fgl-metafns-fn ',name state)))



