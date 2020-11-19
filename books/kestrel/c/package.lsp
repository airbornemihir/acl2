; C Library
;
; Copyright (C) 2020 Kestrel Institute (http://www.kestrel.edu)
;
; License: A 3-clause BSD license. See the LICENSE file distributed with ACL2.
;
; Author: Alessandro Coglio (coglio@kestrel.edu)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(in-package "ACL2")

(include-book "std/portcullis" :dir :system)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defpkg "C" (append
             (set-difference-eq *std-pkg-symbols*
                                '(byte
                                  error
                                  pprint-indent))
             '(bool
               cw-event
               define-sk
               defxdoc+
               er-soft+
               evmac-prepare-proofs
               flatten-ands-in-lit
               implode
               impossible
               lnfix
               maybe-pseudo-event-formp
               msg-listp
               nat
               pseudo-event-form-listp
               pseudo-event-formp
               tuple)))
