; Java Library
;
; Copyright (C) 2019 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "JAVA")

; Avoid failure for atj-gen-number in ACL2(r):
; cert_param: non-acl2r

(include-book "abstract-syntax")
(include-book "aij-notions")
(include-book "name-translation")
(include-book "test-structures")

(include-book "kestrel/utilities/strings/char-kinds" :dir :system)
(include-book "std/strings/decimal" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ atj-common-code-generation
  :parents (atj-code-generation)
  :short "Code generation that is common to
          the deep and shallow embedding approaches."
  :order-subtopics t
  :default-parent t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-chars-to-jhexcodes ((chars character-listp))
  :returns (exprs jexpr-listp)
  :short "Turn a list of ACL2 characters
          into a list of Java hexadecimal literal expressions
          corresponding to the character codes,
          in the same order."
  (cond ((endp chars) nil)
        (t (cons (jexpr-literal
                  (make-jliteral-integer :value (char-code (car chars))
                                         :long? nil
                                         :base (jintbase-hexadecimal)))
                 (atj-chars-to-jhexcodes (cdr chars))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-jstring ((string stringp))
  :returns (expr jexprp)
  :short "Generate Java code to build a Java string from an ACL2 string."
  :long
  (xdoc::topstring
   (xdoc::p
    "Often, an ACL2 string can be turned into a Java string literal
     that is valid when pretty-printed.
     Examples are @('\"abc\"') or @('\"x-y @ 5.A\"').")
   (xdoc::p
    "However, if the ACL2 string includes characters like @('#\Return'),
     attempting to turn that into a Java string literal
     may result in an invalid one when pretty-printed.
     In this case, a safe way to build the Java string is
     via a Java character array with an initializer
     consisting of the codes of the ACL2 string.")
   (xdoc::p
    "If the ACL2 string consists of only pritable ASCII characters
     (i.e. space and visible ASCII characters),
     we turn it into a Java string literal.
     Otherwise, we turn it into a Java array creation expression
     that is passed as argument to a Java class instance creation expression
     for a @('String') object."))
  (b* ((chars (explode string)))
    (if (printable-charlist-p chars)
        (jexpr-literal-string string)
      (jexpr-newclass (jtype-class "String")
                      (list
                       (jexpr-newarray-init (jtype-char)
                                            (atj-chars-to-jhexcodes
                                             chars)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-jint ((integer (signed-byte-p 32 integer)))
  :returns (expr jexprp)
  :short "Generate Java code to build a Java @('int')
          from a 32-bit signed ACL2 integer."
  (if (< integer 0)
      (jexpr-unary (junop-uminus)
                   (jexpr-literal-integer-decimal (- integer)))
    (jexpr-literal-integer-decimal integer)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-jlong ((integer (signed-byte-p 64 integer)))
  :returns (expr jexprp)
  :short "Generate Java code to build a Java @('long')
          from a 64-bit signed ACL2 integer."
  (if (< integer 0)
      (jexpr-unary (junop-uminus)
                   (jexpr-literal-integer-long-decimal (- integer)))
    (jexpr-literal-integer-long-decimal integer)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-jbigint ((integer integerp))
  :returns (expr jexprp)
  :short "Generate Java code to build a Java @('BigInteger')
          from an ACL2 integer."
  (b* ((string (if (< integer 0)
                   (str::cat "-" (str::natstr (- integer)))
                 (str::natstr integer))))
    (jexpr-newclass (jtype-class "BigInteger")
                    (list
                     (jexpr-literal-string string)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-paramlist ((names string-listp) (types jtype-listp))
  :guard (= (len names) (len types))
  :returns (params jparam-listp)
  :short "Generate a Java formal parameter list
          from the specified names and Java types."
  :long
  (xdoc::topstring
   (xdoc::p
    "Given a list of Java parameter names and a list of Java types,
     this function generates a Java formal parameter list
     that associates each type to each name, in order."))
  (cond ((endp names) nil)
        (t (cons (make-jparam :final? nil
                              :type (car types)
                              :name (car names))
                 (atj-gen-paramlist (cdr names) (cdr types))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-jlocvar-indexed
  ((var-type jtypep "Type of the local variable.")
   (var-base stringp "Base name of the local variable.")
   (var-index natp "Index of the local variable.")
   (var-init jexprp "Initializer of the local variable."))
  :returns (mv (locvar-block jblockp)
               (var-name stringp "The name of the local variable.")
               (new-var-index natp "The updated variable index."
                              :hyp (natp var-index)))
  :short "Generate a Java declaration for an indexed local variable."
  :long
  (xdoc::topstring
   (xdoc::p
    "The name of the local variable to use is obtained by
     adding the next variable index after the base name.
     The index is incremented and returned because it has been used,
     and the next variable with the same name must use the next index.")
   (xdoc::p
    "For convenience of the callers of this function,
     the local variable declaration is returned in a singleton block."))
  (b* ((var-name (str::cat var-base (natstr var-index)))
       (var-index (1+ var-index))
       (locvar-block (jblock-locvar var-type var-name var-init)))
    (mv locvar-block var-name var-index))
  ///

  (defrule posp-of-atj-gen-jlocvar-indexed-new-var-index
    (implies (posp var-index)
             (posp (mv-nth 2 (atj-gen-jlocvar-indexed
                              var-type var-base var-index var-init))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-char ((char characterp))
  :returns (expr jexprp)
  :short "Generate Java code to build an ACL2 character."
  (jexpr-smethod *aij-type-char*
                 "make"
                 (list (jexpr-literal-character char))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-string ((string stringp))
  :returns (expr jexprp)
  :short "Generate Java code to build an ACL2 string."
  (jexpr-smethod *aij-type-string*
                 "make"
                 (list (atj-gen-jstring string))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-symbol ((symbol symbolp))
  :returns (expr jexprp)
  :short "Generate Java code to build an ACL2 symbol."
  :long
  (xdoc::topstring-p
   "Since AIJ has a number of constants (i.e. static final fields)
    for certain common symbols,
    we just reference the appropriate constant
    if the symbol in question is among those symbols.
    Otherwise, we build it in the general way.")
  (b* ((pair (assoc-eq symbol *aij-symbol-constants*)))
    (if pair
        (jexpr-name (str::cat "Acl2Symbol." (cdr pair)))
      (jexpr-smethod *aij-type-symbol*
                     "make"
                     (list (atj-gen-jstring
                            (symbol-package-name symbol))
                           (atj-gen-jstring
                            (symbol-name symbol)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-symbols ((symbols symbol-listp))
  :returns (exprs jexpr-listp)
  :short "Lift @(tsee atj-gen-symbol) to lists."
  (cond ((endp symbols) nil)
        (t (cons (atj-gen-symbol (car symbols))
                 (atj-gen-symbols (cdr symbols))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-integer ((integer integerp))
  :returns (expr jexprp)
  :short "Generate Java code to build an ACL2 integer."
  :long
  (xdoc::topstring
   (xdoc::p
    "If the ACL2 integer is representable as a Java integer,
     we generate a Java integer literal.
     Otherwise, if it is representable as a Java long integer,
     we generate a Java long integer literal.
     Otherwise, we generate a Java big integer
     built out of the string representation of the ACL2 integer.")
   (xdoc::p
    "These are passed to the @('Acl2Integer.make').
     However, if the integer is 0 or 1,
     we simply generate a reference to the respective Java static final fields
     in the @('Acl2Integer') class."))
  (b* ((arg (cond ((signed-byte-p 32 integer)
                   (atj-gen-jint integer))
                  ((signed-byte-p 64 integer)
                   (atj-gen-jlong integer))
                  (t (atj-gen-jbigint integer)))))
    (jexpr-smethod *aij-type-int*
                   "make"
                   (list arg))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-rational ((rational rationalp))
  :returns (expr jexprp)
  :short "Generate Java code to build an ACL2 rational."
  (b* ((numerator (numerator rational))
       (denominator (denominator rational))
       ((mv numerator-arg denominator-arg)
        (cond ((and (signed-byte-p 32 numerator)
                    (signed-byte-p 32 denominator))
               (mv (atj-gen-jint numerator)
                   (atj-gen-jint denominator)))
              ((and (signed-byte-p 64 numerator)
                    (signed-byte-p 64 denominator))
               (mv (atj-gen-jlong numerator)
                   (atj-gen-jlong denominator)))
              (t (mv (atj-gen-jbigint numerator)
                     (atj-gen-jbigint denominator))))))
    (jexpr-smethod *aij-type-rational*
                   "make"
                   (list numerator-arg
                         denominator-arg))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-number ((number acl2-numberp))
  :returns (expr jexprp)
  :short "Generate Java code to build an ACL2 number."
  (b* ((realpart (realpart number))
       (imagpart (imagpart number))
       ((mv realpart-arg imagpart-arg)
        (cond ((and (signed-byte-p 32 realpart)
                    (signed-byte-p 32 imagpart))
               (mv (atj-gen-jint realpart)
                   (atj-gen-jint imagpart)))
              ((and (signed-byte-p 64 realpart)
                    (signed-byte-p 64 imagpart))
               (mv (atj-gen-jlong realpart)
                   (atj-gen-jlong imagpart)))
              ((and (integerp realpart)
                    (integerp imagpart))
               (mv (atj-gen-jbigint realpart)
                   (atj-gen-jbigint imagpart)))
              (t (mv (atj-gen-rational realpart)
                     (atj-gen-rational imagpart))))))
    (jexpr-smethod *aij-type-number*
                   "make"
                   (list realpart-arg
                         imagpart-arg))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defines atj-gen-value
  :short "Generate Java code to build an ACL2 value."
  :long
  (xdoc::topstring
   (xdoc::p
    "For a @(tsee cons) pair,
     the generated code
     builds the @(tsee car),
     sets a local variable to it,
     builds the @(tsee cdr),
     sets another local variable to it,
     and returns an expression that builds the pair
     from the two local variables.")
   (xdoc::@def "atj-gen-value")
   (xdoc::@def "atj-gen-cons"))

  (define atj-gen-cons ((conspair consp)
                        (jvar-value-base stringp)
                        (jvar-value-index posp))
    :returns (mv (block jblockp)
                 (expr jexprp)
                 (new-jvar-value-index posp :hyp (posp jvar-value-index)))
    :parents nil
    (b* (((unless (mbt (consp conspair)))
          (mv nil (jexpr-name "this-is-irrelevant") jvar-value-index))
         ((mv car-block
              car-expr
              jvar-value-index) (atj-gen-value (car conspair)
                                               jvar-value-base
                                               jvar-value-index))
         ((mv car-locvar-block
              car-jvar
              jvar-value-index) (atj-gen-jlocvar-indexed *aij-type-value*
                                                         jvar-value-base
                                                         jvar-value-index
                                                         car-expr))
         ((mv cdr-block
              cdr-expr
              jvar-value-index) (atj-gen-value (cdr conspair)
                                               jvar-value-base
                                               jvar-value-index))
         ((mv cdr-locvar-block
              cdr-jvar
              jvar-value-index) (atj-gen-jlocvar-indexed *aij-type-value*
                                                         jvar-value-base
                                                         jvar-value-index
                                                         cdr-expr))
         (block (append car-block
                        car-locvar-block
                        cdr-block
                        cdr-locvar-block))
         (expr (jexpr-smethod *aij-type-cons*
                              "make"
                              (list (jexpr-name car-jvar)
                                    (jexpr-name cdr-jvar)))))
      (mv block expr jvar-value-index))
    :measure (two-nats-measure (acl2-count conspair) 0))

  (define atj-gen-value (value
                         (jvar-value-base stringp)
                         (jvar-value-index posp))
    :returns (mv (block jblockp)
                 (expr jexprp)
                 (new-jvar-value-index posp :hyp (posp jvar-value-index)))
    :parents nil
    (cond ((characterp value) (mv nil
                                  (atj-gen-char value)
                                  jvar-value-index))
          ((stringp value) (mv nil
                               (atj-gen-string value)
                               jvar-value-index))
          ((symbolp value) (mv nil
                               (atj-gen-symbol value)
                               jvar-value-index))
          ((integerp value) (mv nil
                                (atj-gen-integer value)
                                jvar-value-index))
          ((rationalp value) (mv nil
                                 (atj-gen-rational value)
                                 jvar-value-index))
          ((acl2-numberp value) (mv nil
                                    (atj-gen-number value)
                                    jvar-value-index))
          ((consp value) (atj-gen-cons value
                                       jvar-value-base
                                       jvar-value-index))
          (t (prog2$ (raise "Internal error: the value ~x0 is a bad atom."
                            value)
                     (mv nil
                         (jexpr-name "this-is-irrelevant")
                         jvar-value-index))))
    ;; 2nd component is non-0
    ;; so that the call of ATJ-GEN-CONS decreases:
    :measure (two-nats-measure (acl2-count value) 1))

  :verify-guards nil ; done below
  ///
  (verify-guards atj-gen-value))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-values ((values true-listp)
                        (jvar-value-base stringp)
                        (jvar-value-index posp))
  :returns (mv (block jblockp)
               (exprs jexpr-listp)
               (new-jvar-value-index posp :hyp (posp jvar-value-index)))
  :short "Lift @(tsee atj-gen-value) to lists."
  (cond ((endp values) (mv nil nil jvar-value-index))
        (t (b* (((mv first-block
                     first-expr
                     jvar-value-index) (atj-gen-value (car values)
                                                      jvar-value-base
                                                      jvar-value-index))
                ((mv rest-block
                     rest-jexrps
                     jvar-value-index) (atj-gen-values (cdr values)
                                                       jvar-value-base
                                                       jvar-value-index)))
             (mv (append first-block rest-block)
                 (cons first-expr rest-jexrps)
                 jvar-value-index))))
  ///

  (defret len-of-atj-gen-values.exprs
    (equal (len exprs)
           (len values))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defines atj-gen-value-flat
  :short "Generate flat Java code to build an ACL2 value."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is similar to @(tsee atj-gen-value),
     except that we do not generate local variables
     for the @(tsee car) and @(tsee cdr) sub-expressions of a @(tsee cons).
     We generate a single expression, without blocks;
     in this sense it is ``flat''.")
   (xdoc::@def "atj-gen-value-flat")
   (xdoc::@def "atj-gen-cons-flat"))

  (define atj-gen-cons-flat ((conspair consp))
    :returns (expr jexprp)
    :parents nil
    (b* (((unless (mbt (consp conspair))) (jexpr-name "this-is-irrelevant"))
         (car-expr (atj-gen-value-flat (car conspair)))
         (cdr-expr (atj-gen-value-flat (cdr conspair))))
      (jexpr-smethod *aij-type-cons*
                     "make"
                     (list car-expr
                           cdr-expr)))
    :measure (two-nats-measure (acl2-count conspair) 0))

  (define atj-gen-value-flat (value)
    :returns (expr jexprp)
    :parents nil
    (cond ((characterp value) (atj-gen-char value))
          ((stringp value) (atj-gen-string value))
          ((symbolp value) (atj-gen-symbol value))
          ((integerp value) (atj-gen-integer value))
          ((rationalp value) (atj-gen-rational value))
          ((acl2-numberp value) (atj-gen-number value))
          ((consp value) (atj-gen-cons-flat value))
          (t (prog2$ (raise "Internal error: the value ~x0 is a bad atom."
                            value)
                     (jexpr-name "this-is-irrelevant"))))
    ;; 2nd component is non-0
    ;; so that the call of ATJ-GEN-CONS decreases:
    :measure (two-nats-measure (acl2-count value) 1))

  :verify-guards nil ; done below
  ///
  (verify-guards atj-gen-value-flat))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-values-flat ((values true-listp))
  :returns (exprs jexpr-listp)
  :short "Lift @(tsee atj-gen-value-flat) to lists."
  (cond ((endp values) nil)
        (t (cons (atj-gen-value-flat (car values))
                 (atj-gen-values-flat (cdr values)))))
  ///

  (defret len-of-atj-gen-values-flat
    (equal (len exprs) (len values))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-pkg-method-name ((pkg stringp))
  :returns (method-name stringp)
  :short "Name of the Java method that adds an ACL2 package definition."
  :long
  (xdoc::topstring-p
   "We generate a private static method
    for each ACL2 package definition to build.
    This function generates the name of this method,
    which should be distinct from all the other methods
    generated for the same class.")
  (str::cat "$addPackageDef_"
            (implode (atj-chars-to-jchars-id (explode pkg) nil :dash nil))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-pkg-name ((pkg stringp))
  :returns (expr jexprp)
  :short "Generate Java code to build an ACL2 package name."
  :long
  (xdoc::topstring
   (xdoc::p
    "Since AIJ has a number of constants (i.e. static final fields)
     for a number of common ACL2 package names,
     we just reference the appropriate constant
     if the package name in question is among those.
     Otherwise, we build it in the general way;
     note that ACL2 package names can always be safely generated
     as Java string literals.
     Using the constants when possible makes the generated Java code faster.
     We introduce and use an alist to specify
     the correspondence between ACL2 package symbols
     and AIJ static final fields."))
  (b* ((pair (assoc-equal pkg *atj-gen-pkg-name-alist*)))
    (if pair
        (jexpr-name (cdr pair))
      (jexpr-smethod *aij-type-pkg-name*
                     "make"
                     (list (atj-gen-jstring pkg)))))

  :prepwork
  ((defval *atj-gen-pkg-name-alist*
     '(("KEYWORD"             . "Acl2PackageName.KEYWORD")
       ("COMMON-LISP"         . "Acl2PackageName.LISP")
       ("ACL2"                . "Acl2PackageName.ACL2")
       ("ACL2-OUTPUT-CHANNEL" . "Acl2PackageName.ACL2_OUTPUT")
       ("ACL2-INPUT-CHANNEL"  . "Acl2PackageName.ACL2_INPUT")
       ("ACL2-PC"             . "Acl2PackageName.ACL2_PC")
       ("ACL2-USER"           . "Acl2PackageName.ACL2_USER")))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-pkg-method ((pkg stringp) (verbose$ booleanp))
  :returns (method jmethodp)
  :short "Generate a Java method that adds an ACL2 package definition."
  :long
  (xdoc::topstring-p
   "This is a private static method
    that contains a sequence of statements
    to incrementally construct
    the Java list of symbols imported by the package.
    The sequence starts with a declaration of a local variable
    initialized with an empty Java list
    whose capacity is the length of the import list.
    After all the assignments, we generate a method call
    to add the ACL2 package definition with the calculated import list.")
  (b* (((run-when verbose$)
        (cw "  ~s0~%" pkg))
       (jvar-aimports "imports")
       (method-name (atj-gen-pkg-method-name pkg))
       (aimports (pkg-imports pkg))
       (len-expr (jexpr-literal-integer-decimal (len aimports)))
       (newlist-expr (jexpr-newclass (jtype-class "ArrayList<>")
                                     (list len-expr)))
       (imports-block (jblock-locvar (jtype-class "List<Acl2Symbol>")
                                     jvar-aimports
                                     newlist-expr))
       (imports-block (append imports-block
                              (atj-gen-pkg-method-aux aimports
                                                      jvar-aimports)))
       (pkg-name-expr (atj-gen-pkg-name pkg))
       (defpkg-block (jblock-smethod *aij-type-pkg*
                                     "define"
                                     (list pkg-name-expr
                                           (jexpr-name jvar-aimports))))
       (method-body (append imports-block
                            defpkg-block)))
    (make-jmethod :access (jaccess-private)
                  :abstract? nil
                  :static? t
                  :final? nil
                  :synchronized? nil
                  :native? nil
                  :strictfp? nil
                  :result (jresult-void)
                  :name method-name
                  :params nil
                  :throws nil
                  :body method-body))

  :prepwork
  ((define atj-gen-pkg-method-aux ((imports symbol-listp)
                                   (jvar-aimports stringp))
     :returns (block jblockp)
     :parents nil
     (cond ((endp imports) nil)
           (t (b* ((import-expr (atj-gen-symbol (car imports)))
                   (first-block (jblock-imethod (jexpr-name jvar-aimports)
                                                "add"
                                                (list import-expr)))
                   (rest-block (atj-gen-pkg-method-aux (cdr imports)
                                                       jvar-aimports)))
                (append first-block rest-block)))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-pkg-methods ((pkgs string-listp) (verbose$ booleanp))
  :returns (methods jmethod-listp)
  :short "Generate all the Java methods that add the ACL2 package definitions."
  (if (endp pkgs)
      nil
    (b* ((first-method (atj-gen-pkg-method (car pkgs) verbose$))
         (rest-methods (atj-gen-pkg-methods (cdr pkgs) verbose$)))
      (cons first-method rest-methods))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-pkgs ((pkgs string-listp))
  :returns (block jblockp)
  :short "Generate Java code to build the ACL2 packages."
  :long
  (xdoc::topstring-p
   "This is a sequence of calls to the methods
    generated by @(tsee atj-gen-pkg-methods).
    These calls are part of the code that
    initializes (the Java representation of) the ACL2 environment.")
  (if (endp pkgs)
      nil
    (b* ((method-name (atj-gen-pkg-method-name (car pkgs)))
         (first-block (jblock-method method-name nil))
         (rest-block (atj-gen-pkgs (cdr pkgs))))
      (append first-block rest-block))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-init-method ()
  :returns (method jmethodp)
  :short "Generate the Java public method to initialize the ACL2 environment."
  :long
  (xdoc::topstring
   (xdoc::p
    "This method is actually empty,
     but its invocation ensures that the class initializer,
     which actually initializes the environment,
     has been executed."))
  (make-jmethod :access (jaccess-public)
                :abstract? nil
                :static? t
                :final? nil
                :synchronized? nil
                :native? nil
                :strictfp? nil
                :result (jresult-void)
                :name "initialize"
                :params nil
                :throws nil
                :body nil))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-test-failures-field ()
  :returns (field jfieldp)
  :short "Generate the Java field that keeps track of failures
          in the test Java class."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is a private static boolean field that is initially false,
     and gets set if and when any test fails (see below).")
   (xdoc::p
    "This is generated only if the @(':tests') input is not @('nil')."))
  (make-jfield :access (jaccess-private)
               :static? t
               :final? nil
               :transient? nil
               :volatile? nil
               :type (jtype-boolean)
               :name "failures"
               :init (jexpr-literal-false)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-test-method-name ((test-name stringp))
  :returns (method-name stringp)
  :short "Name of the Java method to run one of the specified tests."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is generated only if the @(':tests') input is not @('nil').")
   (xdoc::p
    "We generate a private static method for each test
     specified by the @(':tests') input.
     This function generates the name of this method,
     which has the form @('test_...'),
     where @('...') is the name of the test.
     Since ATJ checks that the tests have unique names,
     this scheme ensures that the method names are all distinct.")
   (xdoc::p
    "The argument of this function is the name of the test."))
  (str::cat "test_" test-name))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-run-tests ((tests$ atj-test-listp))
  :returns (block jblockp)
  :short "Generate Java code to run the specified tests."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is generated only if the @(':tests') input is not @('nil').")
   (xdoc::p
    "This is a sequence of calls to the methods
     generated by @(tsee atj-gen-test-methods).
     These calls are part of the main method of the test Java class."))
  (if (endp tests$)
      nil
    (b* ((method-name
          (atj-gen-test-method-name (atj-test->name (car tests$))))
         (first-block (jblock-method method-name (list (jexpr-name "n"))))
         (rest-block (atj-gen-run-tests (cdr tests$))))
      (append first-block rest-block))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define atj-gen-test-main-method ((tests$ atj-test-listp)
                                  (java-class$ stringp))
  :returns (method jmethodp)
  :short "Generate the Java main method for the test Java class."
  :long
  (xdoc::topstring
   (xdoc::p
    "This is generated only if the @(':tests') input is not @('nil').")
   (xdoc::p
    "This method initializes the ACL2 environment
     and then calls each test method.
     It also prints a message saying whether all tests passed or not.")
   (xdoc::p
    "If no argument is passed to this method
     (the argument normally comes from the command line,
     when the generated code is called as a Java application),
     then the test methods are called with 0 as the repetition parameter:
     that is, no time information is printed.
     Otherwise, there must exactly one argument
     that must parse to a positive integer,
     which is passed as the repetition parameter to the test methods."))
  (b* ((method-param (make-jparam :final? nil
                                  :type (jtype-array (jtype-class "String"))
                                  :name "args"))
       (method-body
        (append
         (jblock-locvar (jtype-int) "n" (jexpr-literal-0))
         (jblock-if (jexpr-binary (jbinop-eq)
                                  (jexpr-field (jexpr-name "args") "length")
                                  (jexpr-literal-1))
                    (jblock-asg (jexpr-name "n")
                                (jexpr-smethod (jtype-class "Integer")
                                               "parseInt"
                                               (list
                                                (jexpr-array
                                                 (jexpr-name "args")
                                                 (jexpr-literal-0))))))
         (jblock-if (jexpr-binary (jbinop-gt)
                                  (jexpr-field (jexpr-name "args") "length")
                                  (jexpr-literal-1))
                    (jblock-throw (jexpr-newclass
                                   (jtype-class "IllegalArgumentException")
                                   (list (jexpr-literal-string
                                          "There must be 0 or 1 arguments.")))))
         (jblock-smethod (jtype-class java-class$) "initialize" nil)
         (atj-gen-run-tests tests$)
         (jblock-ifelse (jexpr-name "failures")
                        (append
                         (jblock-imethod (jexpr-name "System.out")
                                         "println"
                                         (list (atj-gen-jstring
                                                "Some tests failed.")))
                         (jblock-imethod (jexpr-name "System.out")
                                         "println"
                                         nil)
                         (jblock-smethod (jtype-class "System")
                                         "exit"
                                         (list (jexpr-literal-1))))
                        (append
                         (jblock-imethod (jexpr-name "System.out")
                                         "println"
                                         (list (atj-gen-jstring
                                                "All tests passed.")))
                         (jblock-imethod (jexpr-name "System.out")
                                         "println"
                                         nil)
                         (jblock-smethod (jtype-class "System")
                                         "exit"
                                         (list (jexpr-literal-0))))))))
    (make-jmethod :access (jaccess-public)
                  :abstract? nil
                  :static? t
                  :final? nil
                  :synchronized? nil
                  :native? nil
                  :strictfp? nil
                  :result (jresult-void)
                  :name "main"
                  :params (list method-param)
                  :throws (list *aij-class-eval-exc*)
                  :body method-body)))
