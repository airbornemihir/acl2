; C Library
;
; Copyright (C) 2020 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "C")

(include-book "abstract-syntax")
(include-book "integers")
(include-book "function-environments")

(include-book "kestrel/fty/defomap" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ atc-dynamic-semantics
  :parents (atc)
  :short "A dynamic semantics of C for ATC."
  :long
  (xdoc::topstring
   (xdoc::p
    "In order to support the generation of proofs for
     the C code generated by ATC,
     we need a dynamic (i.e. execution) semantics
     of (the needed portion of) C.
     The dynamic semantics serves to prove that
     the generated C code is funtionally equivalent to
     the ACL2 code from which it is generated.
     Here we provide an initial formal dynamic semantics,
     which should support the generation of proofs
     for an initial version of ATC.")
   (xdoc::p
    "This preliminary dynamic semantics may be extended in the future,
     and may be replaced by a more comprehensive model
     that we will be developing as part of the "
    (xdoc::seetopic "language" "language formalization")
    ".")
   (xdoc::p
    "The dynamic semantics is defined over the C abstract syntax,
     but for now it does not support the execution of many constructs,
     just because ATC does not generate those constructs for now.
     This way, we keep the dynamic semantics simpler.
     Being too restrictive is adequate here:
     if we have a prove of functional equivalence between some ACL2 code
     and some C code according to this restriction dynamic semantics,
     it means that the C code only uses the constructs that we cover,
     which is a subset of valid C.")
   (xdoc::p
    "We formalize a big-step operational interpretive semantics.
     To ensure the termination of the ACL2 mutually recursive functions
     that formalize the execution of expressions, statements, etc.,
     these functions take a limit on the depth of the recursive calls,
     which ends the recursion with an error when it reaches 0,
     which is decremented at each recursive call,
     and which is used as termination measure.
     Thus, a proof of total correctness
     (i.e. the code terminates and produces correct results)
     involves showing the existence of sufficiently large limit values,
     while a proof of partial correctness
     (i.e. the code produces correct results if it terminates)
     is relativized to the limit value not running out.
     The limit is an artifact of the formalization;
     it has no explicit counterpart in the execution state of the C code.
     (Currently the mutually recursive functions terminate without the limit,
     but this will change when we extend our dynamic semantics
     with function calls, loops, etc.)"))
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defflatsum value-result
  :short "Fixtype of values and errors."
  (:ok sint)
  (:err error)
  :pred value-resultp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deflist value-list
  :short "Fixtype of lists of values."
  :elt-type sint
  :true-listp t
  :elementp-of-nil nil
  :pred value-listp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(encapsulate ()
  (local (in-theory (enable sintp)))
  (fty::defresult value-list "lists of values"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defoption value-option
  sint
  :short "Fixtype of optional values."
  :pred value-optionp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(encapsulate ()
  (local (in-theory (enable sintp)))
  (fty::defresult value-option "optional values"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define irr-value-result ()
  :returns (result value-resultp)
  :short "An irrelevant value result, usable as a dummy return value."
  (with-guard-checking :none (ec-call (value-result-fix :irrelevant)))
  ///
  (in-theory (disable (:e irr-value-result))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defomap store
  :short "Fixtype of variable stores."
  :long
  (xdoc::topstring
   (xdoc::p
    "A variable store is a finite map from identifiers to @('int') values
     (for now these are the only values that we model).
     It represents the contents of the variables in scope."))
  :key-type ident
  :val-type sint
  :pred storep)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defresult store "stores")

;;;;;;;;;;;;;;;;;;;;

(defruled storep-when-store-resultp-ok
  (implies (and (store-resultp store)
                (store-result-case store :ok))
           (storep store))
  :enable (store-resultp
           store-result-kind))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defprod frame
  :short "Fixtype of frames."
  :long
  (xdoc::topstring
   (xdoc::p
    "Every time a function is called, a frame is created,
     which contains information about
     the function and its variables' values.")
   (xdoc::p
    "As defined later, the call stack is represented as
     a stack (i.e. list) of frames."))
  ((function ident)
   (store store))
  :pred framep)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::deflist frame-list
  :short "Fixtype of lists of frames."
  :elt-type frame
  :true-listp t
  :elementp-of-nil nil
  :pred frame-listp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(fty::defprod denv
  :short "Fixtype of dynamic environments."
  :long
  (xdoc::topstring
   (xdoc::p
    "A dynamic environment consists of
     a function environment
     and a stack of frames.")
   (xdoc::p
    "The function environment consists of
     information about the functions that may be called by the code.")
   (xdoc::p
    "The stack grows leftward and shrinks rightward,
     i.e. push is @(tsee cons), pop is @(tsee cdr), and top is @(tsee car)."))
  ((functions fun-env)
   (call-stack frame-list))
  :pred denvp)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define denv-nonempty-stack-p ((env denvp))
  :returns (yes/no booleanp)
  :short "Check if a dynamic environment has a non-empty call stack."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is always satisfied when executing statements and expressions,
     because those statements and expressions must be
     in the body of some function that is executing."))
  (consp (denv->call-stack env))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define top-frame ((env denvp))
  :guard (denv-nonempty-stack-p env)
  :returns (frame framep)
  :short "Return the top call frame of a dynamic environment."
  :long
  (xdoc::topstring
   (xdoc::p
    "The additional guard is needed to guarantee
     the existence of any frame, and thus of the top frame."))
  (frame-fix (car (denv->call-stack env)))
  :guard-hints (("Goal" :in-theory (enable denv-nonempty-stack-p)))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define exec-iconst ((ic iconstp))
  :returns (result value-resultp)
  :short "Execute an integer constant."
  :long
  (xdoc::topstring
   (xdoc::p
    "We only support the execution of
     signed integer constants without type suffix.
     The value must be representable as an @('int').
     The base is ignored; the value is already a number.
     We return the value, as an @('int')."))
  (b* ((ic (iconst-fix ic))
       ((iconst ic) ic)
       ((when ic.unsignedp)
        (error (list :exec-iconst-unsigned ic)))
       ((unless (iconst-tysuffix-case ic.type :none))
        (error (list :exec-iconst-long/llong ic)))
       ((unless (acl2::sbyte32p ic.value))
        (error (list :exec-iconst-too-large ic))))
    (sint ic.value))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define exec-const ((c constp))
  :returns (result value-resultp)
  :short "Execute a constant."
  :long
  (xdoc::topstring
   (xdoc::p
    "We only support the execution of integer constants."))
  (const-case c
              :int (exec-iconst c.get)
              :float (error :exec-const-float)
              :enum (error :exec-const-enum)
              :char (error :exec-const-char))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define exec-ident ((id identp) (env denvp))
  :guard (denv-nonempty-stack-p env)
  :returns (result value-resultp)
  :short "Execute a variable."
  :long
  (xdoc::topstring
   (xdoc::p
    "The execution of expressions takes place
     in the context of a dynamic environment.
     We look up the variable's value in the store,
     defensively returning an error if the variable is not in the store,
     which means that the variable is not in scope."))
  (b* ((id (ident-fix id))
       (frame (top-frame env))
       (store (frame->store frame))
       (pair? (omap::in id store))
       ((when (not pair?)) (error (list :exec-ident-not-in-scope id))))
    (cdr pair?))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define exec-unary ((op unopp) (arg value-resultp))
  :returns (result value-resultp)
  :short "Execute a unary expression."
  :long
  (xdoc::topstring
   (xdoc::p
    "The argument is the result of
     recursively executing the operand expression.
     For now we only support some unary operators."))
  (b* ((op (unop-fix op))
       (arg (value-result-fix arg)))
    (value-result-case
     arg
     :err arg.get
     :ok (unop-case
          op
          :plus (sint-plus arg.get)
          :minus (if (sint-minus-okp arg.get)
                     (sint-minus arg.get)
                   (error (list :exec-unary op arg)))
          :bitnot (sint-bitnot arg.get)
          :lognot (sint-lognot arg.get))))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define exec-binary-strict ((op binopp)
                            (arg1 value-resultp)
                            (arg2 value-resultp))
  :guard (member-eq (binop-kind op) (list :mul :div :rem :add :sub :shl :shr
                                          :lt :gt :le :ge :eq :ne
                                          :bitand :bitior :bitxor))
  :returns (result value-resultp)
  :short "Execute a binary expression with
          a strict non-side-effecting operator."
  :long
  (xdoc::topstring
   (xdoc::p
    "The arguments are the results of
     recursively executing the operand expressions,
     both of which must be considered because the operator is non-strict.
     These operators are non-side-effecting,
     so we just return a value as result (if there is no error)."))
  (b* ((op (binop-fix op))
       (arg1 (value-result-fix arg1))
       (arg2 (value-result-fix arg2)))
    (if (value-result-case arg1 :ok)
        (if (value-result-case arg2 :ok)
            (case (binop-kind op)
              (:mul (if (sint-mul-okp arg1 arg2)
                        (sint-mul arg1 arg2)
                      (error (list :exec-binary op arg1 arg2))))
              (:div (if (sint-div-okp arg1 arg2)
                        (sint-div arg1 arg2)
                      (error (list :exec-binary op arg1 arg2))))
              (:rem (if (sint-rem-okp arg1 arg2)
                        (sint-rem arg1 arg2)
                      (error (list :exec-binary op arg1 arg2))))
              (:add (if (sint-add-okp arg1 arg2)
                        (sint-add arg1 arg2)
                      (error (list :exec-binary op arg1 arg2))))
              (:sub (if (sint-sub-okp arg1 arg2)
                        (sint-sub arg1 arg2)
                      (error (list :exec-binary op arg1 arg2))))
              (:shl (if (sint-shl-sint-okp arg1 arg2)
                        (sint-shl-sint arg1 arg2)
                      (error (list :exec-binary op arg1 arg2))))
              (:shr (if (sint-shr-sint-okp arg1 arg2)
                        (sint-shr-sint arg1 arg2)
                      (error (list :exec-binary op arg1 arg2))))
              (:lt (sint-lt arg1 arg2))
              (:gt (sint-gt arg1 arg2))
              (:le (sint-le arg1 arg2))
              (:ge (sint-ge arg1 arg2))
              (:eq (sint-eq arg1 arg2))
              (:ne (sint-ne arg1 arg2))
              (:bitand (sint-bitand arg1 arg2))
              (:bitxor (sint-bitxor arg1 arg2))
              (:bitior (sint-bitior arg1 arg2))
              (t (prog2$ (impossible) (irr-value-result))))
          arg2)
      (if (value-result-case arg2 :ok)
          arg1
        (error (list :exec-binary op arg1 arg2)))))
  :guard-hints (("Goal" :in-theory (enable value-result-kind)))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define exec-binary-logand ((arg1 value-resultp) (arg2 value-resultp))
  :returns (result value-resultp)
  :short "Execute a binary logical conjunction expression."
  :long
  (xdoc::topstring
   (xdoc::p
    "The arguments are the results of
     recursively executing the operand expressions.
     However, since this operator is non-strict,
     we ignore the result of the second operand
     if the result of the first operand is 0,
     and return 0 in this case.
     Otherwise, we look at the result of the second operand,
     and return 0 or 1 depending on whether it is 0 or non-0."))
  (value-result-case
   arg1
   :err arg1.get
   :ok (if (sint-nonzerop arg1.get)
           (value-result-case
            arg2
            :err arg2.get
            :ok (sint01 (sint-nonzerop arg2.get)))
         (sint 0)))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define exec-binary-logor ((arg1 value-resultp) (arg2 value-resultp))
  :returns (result value-resultp)
  :short "Execute a binary logical disjunction expression."
  :long
  (xdoc::topstring
   (xdoc::p
    "The arguments are the results of
     recursively executing the operand expressions.
     However, since this operator is non-strict,
     we ignore the result of the second operand
     if the result of the first operand is non-0,
     and return 1 in this case.
     Otherwise, we look at the result of the second operand,
     and return 0 or 1 depending on whether it is 0 or non-0."))
  (value-result-case
   arg1
   :err arg1.get
   :ok (if (sint-nonzerop arg1.get)
           (sint 1)
         (value-result-case
          arg2
          :err arg2.get
          :ok (sint01 (sint-nonzerop arg2.get)))))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define exec-binary ((op binopp) (arg1 value-resultp) (arg2 value-resultp))
  :returns (result value-resultp)
  :short "Execute a binary expression."
  :long
  (xdoc::topstring
   (xdoc::p
    "The assignment operators are not supported yet."))
  (case (binop-kind op)
    ((:mul :div :rem :add :sub :shl :shr
      :lt :gt :le :ge :eq :ne
      :bitand :bitior :bitxor)
     (exec-binary-strict op arg1 arg2))
    (:logand (exec-binary-logand arg1 arg2))
    (:logor (exec-binary-logor arg1 arg2))
    (t (error (list :exec-binary
                (binop-fix op)
                (value-result-fix arg1)
                (value-result-fix arg2)))))
  :hooks (:fix))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defines exec-fns
  :short "Mutually recursive functions for execution."

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define exec-expr ((e exprp) (env denvp) (limit natp))
    :guard (denv-nonempty-stack-p env)
    :returns (result value-resultp)
    :parents (dynamic-semantics exec-fns)
    :verify-guards :after-returns
    :short "Execute an expression."
    :long
    (xdoc::topstring
     (xdoc::p
      "For now we only support the execution of
       variables, (some) constants, and (some) unary and binary expressions."))
    (b* (((when (zp limit)) (error :limit))
         (e (expr-fix e)))
      (expr-case
       e
       :ident (exec-ident e.get env)
       :const (exec-const e.get)
       :call (error (list :exec-expr e))
       :postinc (error (list :exec-expr e))
       :postdec (error (list :exec-expr e))
       :preinc (error (list :exec-expr e))
       :predec (error (list :exec-expr e))
       :unary (b* ((arg (exec-expr e.arg env (1- limit))))
                (exec-unary e.op arg))
       :cast (error (list :exec-expr e))
       :binary (b* ((arg1 (exec-expr e.arg1 env (1- limit)))
                    (arg2 (exec-expr e.arg2 env (1- limit))))
                 (exec-binary e.op arg1 arg2))
       :cond (b* ((test (exec-expr e.test env (1- limit))))
               (value-result-case test
                                  :ok (if (sint-nonzerop test.get)
                                          (exec-expr e.then env (1- limit))
                                        (exec-expr e.else env (1- limit)))
                                  :err test.get))))
    :measure (nfix limit))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define exec-stmt ((s stmtp) (env denvp) (limit natp))
    :guard (denv-nonempty-stack-p env)
    :returns (result value-option-resultp)
    :parents (dynamic-semantics exec-fns)
    :short "Execute a statement."
    :long
    (xdoc::topstring
     (xdoc::p
      "For now we only support the execution of @('return') statements.
       If there is no expression, no value is returned.
       If there is an expression, its value is returned.
       We also support the execution of compound statments
       that consists of supported statements."))
    (b* (((when (zp limit)) (error :limit))
         (s (stmt-fix s)))
      (stmt-case
       s
       :labeled (error (list :exec-stmt s))
       :compound (exec-block-item-list s.items env (1- limit))
       :expr (error (list :exec-stmt s))
       :null (error (list :exec-stmt s))
       :if (b* ((test (exec-expr s.test env (1- limit))))
             (value-result-case test
                                :ok (if (sint-nonzerop test.get)
                                        (exec-stmt s.then env (1- limit))
                                      nil)
                                :err test.get))
       :ifelse (b* ((test (exec-expr s.test env (1- limit))))
                 (value-result-case test
                                    :ok (if (sint-nonzerop test.get)
                                            (exec-stmt s.then env (1- limit))
                                          (exec-stmt s.else env (1- limit)))
                                    :err test.get))
       :switch (error (list :exec-stmt s))
       :while (error (list :exec-stmt s))
       :dowhile (error (list :exec-stmt s))
       :for (error (list :exec-stmt s))
       :goto (error (list :exec-stmt s))
       :continue (error (list :exec-stmt s))
       :break (error (list :exec-stmt s))
       :return (if (exprp s.value)
                   (b* ((eres (exec-expr s.value env (1- limit))))
                     (value-result-case
                      eres
                      :err eres.get
                      :ok eres.get))
                 nil)))
    :measure (nfix limit))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define exec-block-item ((item block-itemp) (env denvp) (limit natp))
    :guard (denv-nonempty-stack-p env)
    :returns (result value-option-resultp)
    :parents (dynamic-semantics exec-fns)
    :short "Execute a block item."
    (b* (((when (zp limit)) (error :limit)))
      (block-item-case item
                       :decl (error (list :exec-block-item item.get))
                       :stmt (exec-stmt item.get env (1- limit))))
    :measure (nfix limit))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (define exec-block-item-list ((items block-item-listp)
                                (env denvp)
                                (limit natp))
    :guard (denv-nonempty-stack-p env)
    :returns (result value-option-resultp)
    :parents (dynamic-semantics exec-fns)
    :short "Execute a list of block items."
    (b* (((when (zp limit)) (error :limit))
         ((when (endp items)) nil)
         (val? (exec-block-item (car items) env (1- limit)))
         ((when (value-option-result-case val? :err)) val?)
         ((when val?) val?))
      (exec-block-item-list (cdr items) env (1- limit)))
    :measure (nfix limit))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  :verify-guards nil ; done below
  ///
  (verify-guards exec-expr)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (fty::deffixequiv-mutual exec-fns))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define init-store ((formals param-decl-listp) (actuals value-listp))
  :returns (result store-resultp)
  :short "Initialize the store for a function call."
  :long
  (xdoc::topstring
   (xdoc::p
    "We go through formal parameters and actual arguments,
     pairing them up into the store.
     We return an error if they do not match in number,
     or if there are repeated parameters."))
  (b* ((formals (param-decl-list-fix formals))
       (actuals (value-list-fix actuals))
       ((when (endp formals))
        (if (endp actuals)
            nil
          (error (list :init-store :extra-actuals actuals))))
       ((when (endp actuals))
        (error (list :init-store :extra-formals formals)))
       (store (init-store (cdr formals) (cdr actuals))))
    (store-result-case
     store
     :err store.get
     :ok (b* ((formal (car formals))
              (actual (car actuals))
              (name (param-decl->name formal)))
           (if (omap::in name store)
               (error (list :init-store :duplicate-param name))
             (omap::update name actual store)))))
  :hooks (:fix)
  :measure (len formals)
  :prepwork ((local (in-theory (enable storep-when-store-resultp-ok))))
  :verify-guards nil ; done below
  ///
  (verify-guards init-store))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define init-fun-env ((tunit transunitp))
  :returns (result fun-env-resultp)
  :short "Initialize the function environment for a translation unit."
  :long
  (xdoc::topstring
   (xdoc::p
    "We go though the external declarations that form the translation unit
     and we build the function environment for the function definitions,
     starting from the empty environment.
     If an external declaration that is not a function definition is found,
     we defensively return an error."))
  (init-fun-env-aux (transunit->decls tunit) nil)
  :hooks (:fix)

  :prepwork
  ((define init-fun-env-aux ((decls ext-decl-listp) (fenv fun-envp))
     :returns (result fun-env-resultp)
     :parents nil
     (b* (((when (endp decls)) (fun-env-fix fenv))
          (decl (car decls)))
       (ext-decl-case
        decl
        :decl (error :external-declaration-is-not-a-function)
        :fundef (b* ((fenv (fun-env-extend decl.get fenv)))
                  (fun-env-result-case
                   fenv
                   :err (error fenv.get)
                   :ok (init-fun-env-aux (cdr decls) fenv.get)))))
     :hooks (:fix))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define exec-fun ((fun identp) (args value-listp) (tunit transunitp))
  :returns (result value-resultp)
  :short "Execute a function call."
  :long
  (xdoc::topstring
   (xdoc::p
    "We initialize the function environment from the translation unit.
     We look up the function definition in the environment.
     We build the initial store and we execute the function body.
     We ensure that a value is returned.")
   (xdoc::p
    "For now we just pass a large number as the recursive limit,
     which should suffice for our current programs of interest.
     Eventually, this should be a parameter of this ACL2 function,
     and proofs about programs should take the liimt value into account."))
  (b* ((fenv (init-fun-env tunit)))
    (fun-env-result-case
     fenv
     :err (error fenv.get)
     :ok (b* ((info (fun-env-lookup fun fenv.get))
              ((when (not info))
               (error (list :exec-fun :undefined (ident-fix fun))))
              (store (init-store (fun-info->params info) args)))
    (store-result-case
     store
     :err store.get
     :ok (b* ((frame (make-frame :function fun :store store.get))
              (env (make-denv :functions fenv.get :call-stack (list frame)))
              (val? (exec-stmt (fun-info->body info) env 1000000000))) ; 10^9
           (value-option-result-case
            val?
            :err val?.get
            :ok (if (sintp val?)
                    val?
                  (error (list :exec-fun :no-value-returned)))))))))
  :guard-hints (("Goal" :in-theory (enable denv-nonempty-stack-p)))
  :hooks (:fix))
