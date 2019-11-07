; System Utilities -- World Queries
;
; Copyright (C) 2018 Kestrel Institute (http://www.kestrel.edu)
; Copyright (C) 2018 Regents of the University of Texas
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Authors:
;   Alessandro Coglio (coglio@kestrel.edu)
;   Eric Smith (eric.smith@kestrel.edu)
;   Matt Kaufmann (kaufmann@cs.utexas.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "xdoc/constructors" :dir :system)
(include-book "std/util/deflist" :dir :system)
(include-book "std/util/defrule" :dir :system)
(include-book "system/kestrel" :dir :system)
(include-book "system/pseudo-good-worldp" :dir :system)
(include-book "term-function-recognizers")

(include-book "kestrel/std/system/arity-plus" :dir :system)
(include-book "kestrel/std/system/definedp" :dir :system)
(include-book "kestrel/std/system/definedp-plus" :dir :system)
(include-book "kestrel/std/system/formals-plus" :dir :system)
(include-book "kestrel/std/system/function-name-listp" :dir :system)
(include-book "kestrel/std/system/function-namep" :dir :system)
(include-book "kestrel/std/system/function-symbol-listp" :dir :system)
(include-book "kestrel/std/system/guard-verified-p" :dir :system)
(include-book "kestrel/std/system/guard-verified-p-plus" :dir :system)
(include-book "kestrel/std/system/irecursivep" :dir :system)
(include-book "kestrel/std/system/irecursivep-plus" :dir :system)
(include-book "kestrel/std/system/known-packages" :dir :system)
(include-book "kestrel/std/system/known-packages-plus" :dir :system)
(include-book "kestrel/std/system/logic-function-namep" :dir :system)
(include-book "kestrel/std/system/logical-name-listp" :dir :system)
(include-book "kestrel/std/system/macro-args-plus" :dir :system)
(include-book "kestrel/std/system/macro-keyword-args" :dir :system)
(include-book "kestrel/std/system/macro-keyword-args-plus" :dir :system)
(include-book "kestrel/std/system/macro-required-args" :dir :system)
(include-book "kestrel/std/system/macro-required-args-plus" :dir :system)
(include-book "kestrel/std/system/macro-name-listp" :dir :system)
(include-book "kestrel/std/system/macro-namep" :dir :system)
(include-book "kestrel/std/system/macro-symbol-listp" :dir :system)
(include-book "kestrel/std/system/macro-symbolp" :dir :system)
(include-book "kestrel/std/system/measure" :dir :system)
(include-book "kestrel/std/system/measure-plus" :dir :system)
(include-book "kestrel/std/system/measured-subset" :dir :system)
(include-book "kestrel/std/system/measured-subset-plus" :dir :system)
(include-book "kestrel/std/system/no-stobjs-p" :dir :system)
(include-book "kestrel/std/system/no-stobjs-p-plus" :dir :system)
(include-book "kestrel/std/system/non-executablep" :dir :system)
(include-book "kestrel/std/system/non-executablep-plus" :dir :system)
(include-book "kestrel/std/system/number-of-results" :dir :system)
(include-book "kestrel/std/system/number-of-results-plus" :dir :system)
(include-book "kestrel/std/system/primitivep" :dir :system)
(include-book "kestrel/std/system/primitivep-plus" :dir :system)
(include-book "kestrel/std/system/ruler-extenders" :dir :system)
(include-book "kestrel/std/system/ruler-extenders-plus" :dir :system)
(include-book "kestrel/std/system/stobjs-in-plus" :dir :system)
(include-book "kestrel/std/system/stobjs-out-plus" :dir :system)
(include-book "kestrel/std/system/theorem-name-listp" :dir :system)
(include-book "kestrel/std/system/theorem-namep" :dir :system)
(include-book "kestrel/std/system/theorem-symbol-listp" :dir :system)
(include-book "kestrel/std/system/theorem-symbolp" :dir :system)
(include-book "kestrel/std/system/ubody" :dir :system)
(include-book "kestrel/std/system/ubody-plus" :dir :system)
(include-book "kestrel/std/system/uguard" :dir :system)
(include-book "kestrel/std/system/uguard-plus" :dir :system)
(include-book "kestrel/std/system/unwrapped-nonexec-body" :dir :system)
(include-book "kestrel/std/system/unwrapped-nonexec-body-plus" :dir :system)
(include-book "kestrel/std/system/well-founded-relation" :dir :system)
(include-book "kestrel/std/system/well-founded-relation-plus" :dir :system)

(local (include-book "std/typed-lists/symbol-listp" :dir :system))
(local (include-book "arglistp-theorems"))
(local (include-book "world-theorems"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc world-queries
  :parents (system-utilities-non-built-in)
  :short "Utilities to query @(see world)s."
  :long
  "<p>
   These complement the world query utilities
   in the <see topic='@(url system-utilities)'>built-in system utilities</see>.
   </p>
   <p>
   Many of these world query utilities come in two variants:
   a ``fast'' one and a ``logic-friendly'' one.
   The former has relatively weak and no (strong) return type theorems;
   the latter has stronger guards and some run-time checks
   that are believed to never fail
   and that enable the proof of (stronger) return type theorems
   without having to assume stronger properties in the guard
   of the @(see world) arguments.
   The logic-friendly variants are helpful
   to prove properties (including verifying guards)
   of logic-mode code that calls them,
   but the fast variants avoid the performance penalty
   of the always-satisfied run-time checks,
   when proving properties of the code that calls them is not a focus
   (e.g. in program-mode code).
   </p>
   <p>
   The built-in world query utilities
   have the characteristics of the fast variants.
   Below we provide logic-friendly variants of
   some built-in world query utilities.
   </p>
   <p>
   The fast variants provided below are named in a way
   that is ``consistent'' with the built-in world query utilities.
   The logic-friendly world query utilities are named by adding @('+')
   after the name of the corresponding fast world query utilities
   (both built-in and provided below).
   </p>
   <p>
   These utilities are being moved to @(csee std/system).
   </p>")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define thm-formula ((thm symbolp) (wrld plist-worldp))
  :returns (formula "A @(tsee pseudo-termp).")
  :parents (world-queries)
  :short "Formula of a named theorem."
  :long
  "<p>
   This is a specialization of @(tsee formula) to named theorems,
   for which the second argument of @(tsee formula) is immaterial.
   Since @(tsee formula) is in program mode only because of
   the code that handles the cases in which the first argument
   is not the name of a theorem,
   we avoid calling @(tsee formula) and instead replicate
   the code that handles the case in which
   the first argument is the name of a theorem;
   thus, this utility is in logic mode and guard-verified.
   </p>
   <p>
   See @(tsee thm-formula+) for a logic-friendly variant of this utility.
   </p>"
  (getpropc thm 'theorem nil wrld))

(define thm-formula+ ((thm (theorem-namep thm wrld))
                      (wrld plist-worldp))
  :returns (formula pseudo-termp)
  :parents (world-queries)
  :short "Logic-friendly variant of @(tsee thm-formula)."
  :long
  "<p>
   This returns the same result as @(tsee thm-formula),
   but it has a stronger guard
   and includes a run-time check (which should always succeed) on the result
   that allows us to prove the return type theorem
   without strengthening the guard on @('wrld').
   </p>"
  (b* ((result (thm-formula thm wrld)))
    (if (pseudo-termp result)
        result
      (raise "Internal error: ~
              the FORMULA property ~x0 of ~x1 is not a pseudo-term."
             result thm))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define classes ((thm symbolp) (wrld plist-worldp))
  :returns (classes "An @(tsee alistp)
                     from @(tsee keywordp) to @(tsee keyword-value-listp).")
  :parents (world-queries)
  :short "Rule classes of a theorem."
  :long
  "<p>
   These form a value of type @('keyword-to-keyword-value-list-alistp'),
   which is defined in @('[books]/system/pseudo-good-worldp.lisp').
   </p>
   <p>
   See @(tsee classes+) for a logic-friendly variant of this utility.
   </p>"
  (getpropc thm 'classes nil wrld))

(define classes+ ((thm (theorem-namep thm wrld))
                  (wrld plist-worldp))
  :returns (classes keyword-to-keyword-value-list-alistp)
  :parents (world-queries)
  :short "Logic-friendly variant of @(tsee classes)."
  :long
  "<p>
   This returns the same result as @(tsee classes),
   but it has a stronger guard
   and includes a run-time check (which should always succeed) on the result
   that allows us to prove the return type theorem
   without strengthening the guard on @('wrld').
   </p>"
  (b* ((result (classes thm wrld)))
    (if (keyword-to-keyword-value-list-alistp result)
        result
      (raise "Internal error: ~
              the rule classes ~x0 of ~x1 are not an alist
              from keywords to keyword-value lists."
             result thm))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define induction-machine ((fn symbolp) (wrld plist-worldp))
  :returns (result "A @('pseudo-induction-machinep').")
  :parents (world-queries)
  :short "Induction machine of a named logic-mode (singly) recursive function."
  :long
  "<p>
   This is a list of @('tests-and-calls') records
   (see the ACL2 source code for information on these records),
   each of which contains zero or more recursive calls
   along with the tests that lead to them.
   The induction machine is a value of type @('pseudo-induction-machinep'),
   which is defined in @('[books]/system/pseudo-good-worldp.lisp').
   </p>
   <p>
   Note that
   induction is not directly supported for mutually recursive functions.
   </p>
   <p>
   See @(tsee induction-machine+) for a logic-friendly variant of this utility.
   </p>"
  (getpropc fn 'induction-machine nil wrld))

(define induction-machine+ ((fn (and (logic-function-namep fn wrld)
                                     (= 1 (len (irecursivep+ fn wrld)))))
                            (wrld plist-worldp))
  :returns (result (pseudo-induction-machinep fn result))
  :parents (world-queries)
  :short "Logic-friendly variant of @(tsee induction-machine)."
  :long
  "<p>
   This returns the same result as @(tsee induction-machine),
   but it has a stronger guard
   and includes a run-time check (which should always succeed) on the result
   that allows us to prove the return type theorem
   without strengthening the guard on @('wrld').
   </p>"
  (b* ((result (induction-machine fn wrld)))
    (if (pseudo-induction-machinep fn result)
        result
      (raise "Internal error: ~
              the INDUCTION-MACHINE property ~x0 of ~x1 ~
              does not have the expected form."
             result fn))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define pseudo-tests-and-callp (x)
  :returns (yes/no booleanp)
  :parents (world-queries)
  :short "Recognize well-formed @('tests-and-call') records."
  :long
  "<p>
   A @('tests-and-call') record is defined as
   </p>
   @({
     (defrec tests-and-call (tests call) nil)
   })
   <p>
   (see the ACL2 source code).
   </p>
   <p>
   In a well-formed @('tests-and-call') record,
   @('tests') must be a list of terms and
   @('call') must be a term.
   </p>
   <p>
   This recognizer is analogous to @('pseudo-tests-and-callsp')
   in @('[books]/system/pseudo-good-worldp.lisp')
   for @('tests-and-calls') records.
   </p>"
  (case-match x
    (('tests-and-call tests call)
     (and (pseudo-term-listp tests)
          (pseudo-termp call)))
    (& nil))
  ///

  (defrule weak-tests-and-call-p-when-pseudo-tests-and-callp
    (implies (pseudo-tests-and-callp x)
             (weak-tests-and-call-p x))))

(std::deflist pseudo-tests-and-call-listp (x)
  (pseudo-tests-and-callp x)
  :parents (world-queries)
  :short "Recognize true lists of well-formed @('tests-and-call') records."
  :true-listp t
  :elementp-of-nil nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define recursive-calls ((fn symbolp) (wrld plist-worldp))
  :returns (calls-with-tests "A @(tsee pseudo-tests-and-call-listp).")
  :mode :program
  :parents (world-queries)
  :short "Recursive calls of a named non-mutually-recursive function,
          along with the controlling tests."
  :long
  "<p>
   For singly recursive logic-mode functions,
   this is similar to the result of @(tsee induction-machine),
   but each record has one recursive call (instead of zero or more),
   and there is exactly one record for each recursive call.
   </p>
   <p>
   This utility works on both logic-mode and program-mode functions
   (if the program-mode functions have an @('unnormalized-body') property).
   This utility should not be called on a function that is
   mutually recursive with other functions;
   it must be called only on singly recursive functions,
   or on non-recursive functions (the result is @('nil') in this case).
   </p>
   <p>
   This utility may be extended to handle also mutually recursive functions.
   </p>
   <p>
   If the function is in logic mode and recursive,
   we obtain its ruler extenders and pass them to
   the built-in function @('termination-machine').
   Otherwise, we pass the default ruler extenders.
   </p>"
  (b* ((ruler-extenders (if (and (logicp fn wrld)
                                 (irecursivep fn wrld))
                            (ruler-extenders fn wrld)
                          (default-ruler-extenders wrld))))
    (termination-machine
     (list fn) (ubody fn wrld) nil nil ruler-extenders)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define fundef-disabledp ((fn (function-namep fn (w state))) state)
  :returns (yes/no "A @(tsee booleanp).")
  :mode :program
  :parents (world-queries)
  :short "Check if the definition of a named function is disabled."
  (if (member-equal `(:definition ,fn) (disabledp fn)) t nil))

(define fundef-enabledp ((fn (function-namep fn (w state))) state)
  :returns (yes/no "A @(tsee booleanp).")
  :mode :program
  :parents (world-queries)
  :short "Check if the definition of a named function is enabled."
  (not (fundef-disabledp fn state)))

(define rune-disabledp ((rune (runep rune (w state))) state)
  :returns (yes/no "A @(tsee booleanp).")
  :mode :program
  :parents (world-queries)
  :short "Check if a @(see rune) is disabled."
  (if (member-equal rune (disabledp (cadr rune))) t nil))

(define rune-enabledp ((rune (runep rune (w state))) state)
  :returns (yes/no "A @(tsee booleanp).")
  :mode :program
  :parents (world-queries)
  :short "Check if a @(see rune) is enabled."
  (not (rune-disabledp rune state)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define included-books ((wrld plist-worldp))
  :returns (result "A @(tsee string-listp).")
  :verify-guards nil
  :parents (world-queries)
  :short "List of full pathnames of all books currently included
          (directly or indirectly)."
  (strip-cars (global-val 'include-book-alist wrld)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(std::deflist pseudo-event-landmark-listp (x)
  (pseudo-event-landmarkp x)
  :parents (world-queries)
  :short "Recognize true lists of event landmarks."
  :long
  "<p>
   See @('pseudo-event-landmarkp')
   in @('[books]/system/pseudo-good-worldp.lisp').
   </p>"
  :true-listp t
  :elementp-of-nil nil)

(std::deflist pseudo-command-landmark-listp (x)
  (pseudo-command-landmarkp x)
  :parents (world-queries)
  :short "Recognize true lists of command landmarks."
  :long
  "<p>
   See @('pseudo-command-landmarkp')
   in @('[books]/system/pseudo-good-worldp.lisp').
   </p>"
  :true-listp t
  :elementp-of-nil nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define event-landmark-names ((event pseudo-event-landmarkp))
  :returns (names "A @('string-or-symbol-listp').")
  :verify-guards nil
  :parents (world-queries)
  :short "Names introduced by an event landmark."
  :long
  "<p>
   Each event landmark introduces zero or more names into the @(see world).
   See @('pseudo-event-landmarkp')
   in @('[books]/system/pseudo-good-worldp.lisp'),
   and the description of event tuples in the ACL2 source code.
   </p>"
  (let ((namex (access-event-tuple-namex event)))
    (cond ((equal namex 0) nil) ; no names
          ((consp namex) namex) ; list of names
          (t (list namex))))) ; single name

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define fresh-namep-msg-weak ((name symbolp) type (wrld plist-worldp))
  :guard (member-eq type
                    '(function macro const stobj constrained-function nil))
  :returns (msg/nil "A message (see @(tsee msg)) or @('nil').")
  :mode :program
  :parents (world-queries)
  :short "Return either @('nil') or a message indicating why the name is not
          a legal new name."
  :long
  "<p>
   This helper function for @(tsee fresh-namep-msg) avoids the ``virginity''
   check ensuring that the name is not already defined in raw Lisp.  See @(tsee
   fresh-namep-msg).
   </p>"
  (flet ((not-new-namep-msg (name wrld)
                            ;; It is tempting to report that the properties
                            ;; 'global-value, 'table-alist, 'table-guard are
                            ;; not relevant for this check.  But that would
                            ;; probably make the message confusing.
                            (let ((old-type (logical-name-type name wrld t)))
                              (cond
                               (old-type
                                (msg "~x0 is already the name for a ~s1."
                                     name
                                     (case old-type
                                       (function "function")
                                       (macro "macro")
                                       (const "constant")
                                       (stobj "stobj")
                                       (constrained-function
                                        "constrained function"))))
                               (t
                                (msg "~x0 has properties in the world; it is ~
                                      not a new name."
                                     name))))))
    (cond
     ((mv-let (ctx msg)
        (chk-all-but-new-name-cmp name 'fresh-namep-msg type wrld)
        (and ctx ; it's an error
             msg)))
     ((not (new-namep name wrld))
      (not-new-namep-msg name wrld))
     (t (case type
          (const
           (and (not (legal-constantp name))
                ;; A somewhat more informative error message is produced by
                ;; chk-legal-defconst-name, but I think the following suffices.
                (msg "~x0 is not a legal constant name."
                     name)))
          (stobj
           (and (not (new-namep (the-live-var name) wrld))
                (not-new-namep-msg (the-live-var name) wrld)))
          (t nil))))))

(define fresh-namep-msg ((name symbolp) type (wrld plist-worldp) state)
  :guard (member-eq type
                    '(function macro const stobj constrained-function nil))
  :returns (mv (erp "Always @('nil').")
               (msg/nil "A message (see @(tsee msg)) or @('nil').")
               state)
  :mode :program
  :parents (world-queries)
  :short "Return either @('nil') or a message indicating why the name is not
          a legal new name."
  :long
  "<p>
   Returns an <see topic='@(url error-triple)'>error triple</see>
   @('(mv nil msg/nil state)'), where @('msg/nil')
   is either @('nil') or a message (see @(tsee msg)) indicating why the given
   name is not legal for a definition of the given type: @('function') for
   @(tsee defun), @('macro') for @(tsee defmacro), @('const') for @(tsee
   defconst), @('stobj') for @(tsee defstobj), @('constrained-function') for
   @(tsee defchoose), and otherwise @('nil') (for other kinds of @(see events),
   for example @(tsee defthm) and @(tsee deflabel)).  See @(see name).
   </p>
   <p>
   WARNING: This is an incomplete check in the case of a stobj name, because
   the field names required for a more complete check are not supplied as
   inputs.
   </p>
   <p>
   Implementation Note.  This function modifies @(see state), because the check
   for legality of new definitions (carried out by ACL2 source function
   @('chk-virgin-msg')) modifies state.  That modification is necessary because
   for all we know, raw Lisp is adding or removing function definitions that we
   don't know about without our having modified state; so logically, we pop the
   oracle when making this check.  End of Implementation Note.
   </p>"
  (let ((msg (fresh-namep-msg-weak name type wrld)))
    (cond (msg (value msg))
          (t (mv-let (msg state)
               (chk-virgin-msg name type wrld state)
               (value msg))))))

(define chk-fresh-namep ((name symbolp) type ctx (wrld plist-worldp) state)
  :guard (member-eq type
                    '(function macro const stobj constrained-function nil))
  :returns (mv erp val state)
  :mode :program
  :parents (world-queries)
  :short "Check whether name is a legal new name."
  :long
  "<p>
   Returns an <see topic='@(url error-triple)'>error triple</see>
   @('(mv erp val state)') where @('erp') is
   @('nil') if and only if name is a legal new name, and @('val') is
   irrelevant.  If @('erp') is not nil, then an explanatory error message is
   printed.
   </p>
   <p>
   For more information about legality of new names see @(tsee fresh-namep-msg),
   which returns an <see topic='@(url error-triple)'>error triple</see>,
   @('(mv nil msg/nil state)').  When
   non-@('nil'), the value @('msg/nil') provides the message printed by
   @('chk-fresh-namep').
   </p>"
  (er-let* ((msg (fresh-namep-msg name type wrld state))) ; never an error
    (cond (msg (er soft ctx "~@0" msg))
          (t (value nil)))))
