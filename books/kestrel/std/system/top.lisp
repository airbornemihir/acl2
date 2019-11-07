; Standard System Library
;
; Copyright (C) 2019 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "all-free-bound-vars")
(include-book "all-vars-open")
(include-book "close-lambdas")
(include-book "conjoin")
(include-book "dumb-occur-var-open")
(include-book "event-name-queries")
(include-book "function-queries")
(include-book "known-packages")
(include-book "known-packages-plus")
(include-book "logic-friendly")
(include-book "macro-queries")
(include-book "remove-mbe")
(include-book "remove-progn")
(include-book "remove-trivial-vars")
(include-book "remove-unused-vars")
(include-book "table-alist-plus")
(include-book "term-function-recognizers")
(include-book "unquote-term")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc std/system
  :parents (std-extensions std)
  :short
  (xdoc::topstring
   "A library that complements the "
   (xdoc::seetopic "system-utilities" "built-in system utilities")
   " with theorems and with non-built-in system utilities.")
  :long
  (xdoc::topstring
   (xdoc::p
    "These could be moved under @('[books]/std') at some point.")))
