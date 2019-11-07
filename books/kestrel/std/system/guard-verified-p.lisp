; Standard System Library
;
; Copyright (C) 2019 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "std/util/define" :dir :system)
(include-book "xdoc/constructors" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define guard-verified-p ((fn/thm symbolp) (wrld plist-worldp))
  :returns (yes/no booleanp)
  :parents (std/system/function-queries)
  :short "Check if a named function or theorem is @(tsee guard)-verified."
  :long
  (xdoc::topstring-p
   "See @(tsee guard-verified-p+) for
    a logic-friendly variant of this utility.")
  (eq (symbol-class fn/thm wrld) :common-lisp-compliant))
