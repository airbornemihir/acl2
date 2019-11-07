; Java Library
;
; Copyright (C) 2019 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "JAVA")

; the order of the following INCLUDE-BOOKs determines
; the order of the subtopics of the SYNTAX topic below:
(include-book "grammar")
(include-book "unicode")
(include-book "null-literal")
(include-book "null-literal-validation")
(include-book "boolean-literals")
(include-book "boolean-literals-validation")
(include-book "keywords")
(include-book "keywords-validation")
(include-book "identifiers")
(include-book "decimal-digits")
(include-book "hexadecimal-digits")
(include-book "octal-digits")
(include-book "binary-digits")
(include-book "primitive-types")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc+ syntax
  :parents (language)
  :short "A formal model of some aspects of the syntax of Java."
  :long
  (xdoc::topstring
   (xdoc::p
    "It is expected that more aspects of the syntax of Java
     will be formalized here over time."))
  :order-subtopics t)
