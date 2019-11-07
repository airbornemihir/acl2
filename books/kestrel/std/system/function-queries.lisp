; Standard System Library
;
; Copyright (C) 2019 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "arity-plus")
(include-book "definedp")
(include-book "definedp-plus")
(include-book "formals-plus")
(include-book "guard-verified-p")
(include-book "guard-verified-p-plus")
(include-book "irecursivep")
(include-book "irecursivep-plus")
(include-book "measure")
(include-book "measure-plus")
(include-book "measured-subset")
(include-book "measured-subset-plus")
(include-book "no-stobjs-p")
(include-book "no-stobjs-p-plus")
(include-book "non-executablep")
(include-book "non-executablep-plus")
(include-book "number-of-results")
(include-book "number-of-results-plus")
(include-book "primitivep")
(include-book "primitivep-plus")
(include-book "pure-raw-p")
(include-book "rawp")
(include-book "ruler-extenders")
(include-book "ruler-extenders-plus")
(include-book "stobjs-in-plus")
(include-book "stobjs-out-plus")
(include-book "tail-recursive-p")
(include-book "ubody")
(include-book "ubody-plus")
(include-book "uguard")
(include-book "uguard-plus")
(include-book "unwrapped-nonexec-body")
(include-book "unwrapped-nonexec-body-plus")
(include-book "well-founded-relation")
(include-book "well-founded-relation-plus")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defxdoc std/system/function-queries
  :parents (std/system)
  :short "Utilities to query functions."
  :long
  (xdoc::topstring-p
   "These utilities are mostly for named functions in the @(see world),
    but some utilities also work on lambda expressions."))
