;; AUTHOR:
;; Shilpi Goel <shigoel@cs.utexas.edu>

(in-package "X86ISA")

(include-book "programmer-level-mode/programmer-level-memory-utils" :dir :proof-utils :ttags :all)

(include-book "centaur/bitops/ihs-extensions" :dir :system)
(local (include-book "centaur/bitops/signed-byte-p" :dir :system))

;; ======================================================================

(defconst *program*
  '(#xf8 ;; CLC
    #xf9 ;; STC
    ))

(defun-nx preconditions (x86)
  (and
   ;; The x86 state is well-formed.
   (x86p x86)
   ;; The model is operating in the programmer-level mode.
   (programmer-level-mode x86)
   ;; The program is located at linear addresses ranging from (rip
   ;; x86) to (+ -1 (len *program*) (rip x86)).
   (program-at (create-canonical-address-list (len *program*) (rip x86))
               *program* x86)
   ;; The addresses where the program is located are canonical.
   (canonical-address-p (rip x86))
   (canonical-address-p (+ (len *program*) (rip x86)))
   ;; The initial state is error-free.
   (equal (ms x86) nil)
   (equal (fault x86) nil)))

;; (acl2::why x86-fetch-decode-execute-opener)
;; (acl2::why get-prefixes-opener-lemma-no-prefix-byte)
;; (acl2::why rb-in-terms-of-nth-and-pos)

(defthm program-effects-1
  (implies (preconditions x86)
           (equal (x86-run 1 x86)
                  (!rip (+ 1 (rip x86)) (!flgi *cf* 0 x86))))
  :hints (("Goal" :in-theory (e/d* (x86-cmc/clc/stc/cld/std)
                                   (create-canonical-address-list
                                    (create-canonical-address-list))))))

(defthm program-effects-2
  (implies (preconditions x86)
           (equal (x86-run 2 x86)
                  (!rip (+ 2 (rip x86)) (!flgi *cf* 1 x86))))
  :hints (("Goal" :in-theory (e/d* (x86-cmc/clc/stc/cld/std)
                                   (create-canonical-address-list
                                    (create-canonical-address-list))))))

;; ======================================================================