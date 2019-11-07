; Java Library
;
; Copyright (C) 2019 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "JAVA")

(include-book "../language/null-literal")
(include-book "../language/boolean-literals")
(include-book "../language/keywords")

(include-book "kestrel/std/strings/strtok-bang" :dir :system)
(include-book "kestrel/utilities/event-macros/xdoc-constructors" :dir :system)
(include-book "kestrel/utilities/strings/char-kinds" :dir :system)
(include-book "std/strings/coerce" :dir :system)
(include-book "std/util/deflist" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(xdoc::evmac-topic-library-extensions atj)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Java:

(define atj-string-ascii-java-identifier-p ((string stringp))
  :returns (yes/no booleanp)
  :short "Check if an ACL2 string is a valid ASCII Java identifier."
  :long
  (xdoc::topstring
   (xdoc::p
    "The string must be non-empty,
     start with a letter or underscore or dollar sign,
     and continue with zero or more
     letters, digits, underscores, and dollar signs.
     It must also be different
     from Java keywords and from the boolean and null literals.")
   (xdoc::p
    "Here for simplicity we disallow ignorable characters.
     See "
    (xdoc::seetopic "identifiers" "the formalization of identifiers")
    " for more details.
     It is expected that (perhaps an extension of) that formalization
     will replace this function here,
     but for now this function is adequate to ATJ's needs."))
  (and (not (member-equal string *jkeywords*))
       (not (member-equal string *boolean-literals*))
       (not (equal string *null-literal*))
       (b* ((chars (explode string)))
         (and (consp chars)
              (alpha/uscore/dollar-char-p (car chars))
              (alpha/digit/uscore/dollar-charlist-p (cdr chars))))))

(std::deflist atj-string-ascii-java-identifier-listp (x)
  (atj-string-ascii-java-identifier-p x)
  :guard (string-listp x)
  :short "Check if a list of ACL2 strings includes only ASCII Java identifiers."
  :true-listp t
  :elementp-of-nil nil)

(define atj-string-ascii-java-package-name-p ((string stringp))
  :returns (yes/no booleanp)
  :short "Check if an ACL2 string is a valid ASCII Java package name."
  :long
  (xdoc::topstring-p
   "The string must consist of one or more ASCII Java identifiers
    separated by dots.")
  (b* ((identifiers (str::strtok! string (list #\.))))
    (and (consp identifiers)
         (atj-string-ascii-java-identifier-listp identifiers))))

(defval *atj-java-lang-class-names*
  :short "Class names in the Java @('java.lang') package."
  (list
   ;; interfaces:
   "Appendable"
   "AutoCloseable"
   "CharSequence"
   "Cloneable"
   "Comparable"
   "Iterable"
   "ProcessHandle"
   "Readable"
   "Runnable"
   ;; classes:
   "Byte"
   "Character"
   "Class"
   "ClassLoader"
   "ClassValue"
   "Compiler"
   "Double"
   "Enum"
   "Float"
   "InheritableThreadLocal"
   "Integer"
   "Long"
   "Math"
   "Module"
   "ModuleLayer"
   "Number"
   "Object"
   "Package"
   "Process"
   "ProcessBuilder"
   "Runtime"
   "RuntimePermission"
   "SecurityManager"
   "Short"
   "StackTraceElement"
   "StackWalker"
   "StrictMath"
   "String"
   "StringBuffer"
   "StringBuilder"
   "System"
   "Thread"
   "ThreadGroup"
   "ThreadLocal"
   "Throwable"
   "Void"
   ;; exceptions:
   "ArithmeticException"
   "ArrayIndexOutOfBoundsException"
   "ArrayStoreException"
   "ClassCastException"
   "ClassNotFoundException"
   "CloneNotSupportedException"
   "EnumConstantNotPresentException"
   "Exception"
   "IllegalAccessException"
   "IllegalArgumentException"
   "IllegalCallerException"
   "IllegalMonitorStateException"
   "IllegalStateException"
   "IllegalThreadStateException"
   "IndexOutOfBoundsException"
   "InstantiationException"
   "InterruptedException"
   "LayerInstantiationException"
   "NegativeArraySizeException"
   "NoSuchFieldException"
   "NoSuchMethodException"
   "NullPointerException"
   "NumberFormatException"
   "ReflectiveOperationException"
   "RuntimeException"
   "SecurityException"
   "StringIndexOutOfBoundsException"
   "TypeNotPresentException"
   "UnsupportedOperationException"
   ;; errors:
   "AbstractMethodError"
   "AssertionError"
   "BootstrapMethodError"
   "ClassCircularityError"
   "ClassFormatError"
   "Error"
   "ExceptionInInitializerError"
   "IllegalAccessError"
   "IncompatibleClassChangeError"
   "InstantiationError"
   "InternalError"
   "LinkageError"
   "NoClassDefFoundError"
   "NoSuchFieldError"
   "NoSuchMethodError"
   "OutOfMemoryError"
   "StackOverflowError"
   "ThreadDeath"
   "UnknownError"
   "UnsatisfiedLinkError"
   "UnsupportedClassVersionError"
   "VerifyError"
   "VirtualMachineError"
   ;; annotations:
   "Deprecated"
   "FunctionalInterface"
   "Override"
   "SafeVarargs"
   "SuppressWarnings"))
