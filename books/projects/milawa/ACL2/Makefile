# Milawa - A Reflective Theorem Prover
# Copyright (C) 2005-2009 Kookamara LLC
#
# Contact:
#
#   Kookamara LLC
#   11410 Windermere Meadows
#   Austin, TX 78759, USA
#   http://www.kookamara.com/
#
# License: (An MIT/X11-style license)
#
#   Permission is hereby granted, free of charge, to any person obtaining a
#   copy of this software and associated documentation files (the "Software"),
#   to deal in the Software without restriction, including without limitation
#   the rights to use, copy, modify, merge, publish, distribute, sublicense,
#   and/or sell copies of the Software, and to permit persons to whom the
#   Software is furnished to do so, subject to the following conditions:
#
#   The above copyright notice and this permission notice shall be included in
#   all copies or substantial portions of the Software.
#
#   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#   FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#   DEALINGS IN THE SOFTWARE.
#
# Original author: Jared Davis <jared@kookamara.com>

all:

STARTJOB ?= $(SHELL)
PWD := $(shell pwd)

PATH := $(PWD)/acl2-images:$(PATH)
WAIT := $(PWD)/../../../build/wait.pl

# We really only need to tell cert.pl about the high level books we care about.
# This is a little haphazard, but basically we don't want to include the
# bootstrap/ dir or use some find command since it might be slow.
FILES_FOR_CERTPL := \
  levels/*.lisp rewrite/*.lisp interface/*.lisp \
  tactics/*.lisp clauses/*.lisp build/*.lisp

FILES_FOR_PCERTSCAN := \
  bootstrap/utilities/top \
  bootstrap/logic/top \
  bootstrap/level2/level2 \
  bootstrap/level3/level3 \
  bootstrap/level4/level4 \
  bootstrap/level5/level5 \
  bootstrap/level6/level6 \
  bootstrap/level7/level7 \
  bootstrap/level8/level8 \
  bootstrap/level9/level9 \
  bootstrap/level10/level10 \
  bootstrap/level11/level11 \
  bootstrap/user/multiply

$(info Calculating cert dependencies...)
DO_CERT_DEPS := $(shell ../../../build/cert.pl $(FILES_FOR_CERTPL) \
           --quiet \
           --static-makefile Makefile-deps \
           --var-prefix BOOKS_TOP \
           --cache Makefile-cache \
	   --bin `pwd`/acl2-images)
$(info Calculating pcert dependencies...)
DO_PCERT_DEPS := $(shell ./pcert-scan.pl $(FILES_FOR_PCERTSCAN) &> Makefile-pdeps)
$(info Done with dependencies.)
include Makefile-deps
include Makefile-pdeps


# I renamed .pcert files to .mpcert after ACL2 added provisional certification
# support.
%.mpcert: %.lisp
	@echo "Making $*.mpcert"
	@$(STARTJOB) -c "./pcert.pl $*.lisp &> $*.out"
	@$(WAIT) $*.mpcert
	@ls -l $*.mpcert


.PHONY: all clean

# We could use cert.pl to clean up the certs, but it misses a few because of
# images; this once led me to be pretty confused because an old cert was being
# inappropriately included, leading to a strange error.  So I think it's better
# to just aggressively remove certs here.
clean:
	@echo "Cleaning ACL2 directory (certificates, ACL2 images, etc.)"
	@../../../build/clean.pl
	@rm -f `find . -name "*.mpcert"`
	@rm -f `find . -name "*.out"`
	@rm -f `find . -name "*.time"`
	@rm -f `find . -name "*.port"`
	@rm -f `find . -name "*.lx64fsl"`
	@rm -f `find . -name "*.ccl"`
	@rm -f `find . -name "*.proof"`
	@rm -f `find . -name ".acl2rc"`
	@rm -f acl2-images/*-acl2 acl2-images/*-symmetry
	@rm -f acl2-images/*-acl2.* acl2-images/*-symmetry.*
	@rm -f Makefile-deps Makefile-cache
	@rm -f logic/autodoc/*.tex
	@rm -f build/autodoc/*.tex
	@rm -f rewrite/assms/autodoc/*.tex
	@rm -f rewrite/traces/autodoc/*.tex
	@rm -f rewrite/autodoc/*.tex
	@rm -f clauses/autodoc/*.tex
	@rm -f clauses/if-lifting/autodoc/*.tex
	@rm -f classic/autodoc/*.tex
	@rm -f tactics/autodoc/*.tex
	@rm -f bootstrap/*/autodoc/*.tex
	@rm -f Makefile-cache Makefile-deps Makefile-pdeps TAGS
	@echo "Cleaning ../Proofs directory."
	@cd ../Proofs; ./clean-proofs.sh

acl2-images/tactics-acl2: rewrite/fast-crewrite-clause.cert \
                  rewrite/traces/trace-arities.cert \
                  rewrite/theory-arities.cert \
                  rewrite/urewrite-clause.cert \
                  clauses/split-bldr.cert \
                  clauses/compiler.cert \
                  clauses/disjoined-update-clause-bldr.cert \
                  rewrite/gather.cert
	@echo "Making $@"
	@cd tactics; $(STARTJOB) -c \
	  "$(ACL2) < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*

acl2-images/interface-acl2: acl2-images/tactics-acl2 \
	                    levels/level11.cert
	@echo "Making $@"
	@cd interface; $(STARTJOB) -c \
	  "../acl2-images/tactics-acl2 < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*


acl2-images/utilities-symmetry: acl2-images/interface-acl2 \
	                        interface/top.cert
	@echo "Making $@"
	@cd bootstrap/utilities; $(STARTJOB) -c \
	   "../../acl2-images/interface-acl2 < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*

acl2-images/logic-symmetry: acl2-images/utilities-symmetry \
                            $(PCDEPS_FOR_bootstrap__utilities__top)
	@echo "Making $@"
	@cd bootstrap/logic; $(STARTJOB) -c \
	   "../../acl2-images/utilities-symmetry < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*

acl2-images/level2-symmetry: acl2-images/logic-symmetry \
                             $(PCDEPS_FOR_bootstrap__logic__top)
	@echo "Making $@"
	@cd bootstrap/level2; $(STARTJOB) -c \
	  "../../acl2-images/logic-symmetry < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*

acl2-images/level3-symmetry: acl2-images/level2-symmetry \
                           $(PCDEPS_FOR_bootstrap__level2__level2)
	@echo "Making $@"
	@cd bootstrap/level3; $(STARTJOB) -c \
	  "../../acl2-images/level2-symmetry < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*

acl2-images/level4-symmetry: acl2-images/level3-symmetry \
                           $(PCDEPS_FOR_bootstrap__level3__level3)
	@echo "Making $@"
	@cd bootstrap/level4; $(STARTJOB) -c \
	  "../../acl2-images/level3-symmetry < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*

acl2-images/level5-symmetry: acl2-images/level4-symmetry \
                           $(PCDEPS_FOR_bootstrap__level4__level4)
	@echo "Making $@"
	@cd bootstrap/level5; $(STARTJOB) -c \
	  "../../acl2-images/level4-symmetry < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*

acl2-images/level6-symmetry: acl2-images/level5-symmetry \
                           $(PCDEPS_FOR_bootstrap__level5__level5)
	@echo "Making $@"
	@cd bootstrap/level6; $(STARTJOB) -c \
	  "../../acl2-images/level5-symmetry < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*

acl2-images/level7-symmetry: acl2-images/level6-symmetry \
                           $(PCDEPS_FOR_bootstrap__level6__level6)
	@echo "Making $@"
	@cd bootstrap/level7; $(STARTJOB) -c \
	  "../../acl2-images/level6-symmetry < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*

acl2-images/level8-symmetry: acl2-images/level7-symmetry \
                           $(PCDEPS_FOR_bootstrap__level7__level7)
	@echo "Making $@"
	@cd bootstrap/level8; $(STARTJOB) -c \
	  "../../acl2-images/level7-symmetry < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*

acl2-images/level9-symmetry: acl2-images/level8-symmetry \
                           $(PCDEPS_FOR_bootstrap__level8__level8)
	@echo "Making $@"
	@cd bootstrap/level9; $(STARTJOB) -c \
	  "../../acl2-images/level8-symmetry < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*

acl2-images/level10-symmetry: acl2-images/level9-symmetry \
                            $(PCDEPS_FOR_bootstrap__level9__level9)
	@echo "Making $@"
	@cd bootstrap/level10; $(STARTJOB) -c \
	  "../../acl2-images/level9-symmetry < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*

acl2-images/level11-symmetry: acl2-images/level10-symmetry \
                            $(PCDEPS_FOR_bootstrap__level10__level10)
	@echo "Making $@"
	@cd bootstrap/level11; $(STARTJOB) -c \
	  "../../acl2-images/level10-symmetry < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*

acl2-images/user-symmetry: acl2-images/level11-symmetry \
                         $(PCDEPS_FOR_bootstrap__level11__level11)
	@echo "Making $@"
	@cd bootstrap/user; $(STARTJOB) -c \
	  "../../acl2-images/level11-symmetry < make-image.lsp &> make-image.out"
	@$(WAIT) "$@"
	@ls -l "$@"*

all: acl2-images/user-symmetry

all: $(ALL_PCERTS)


TAGS: $(BOOKS_TOP_SOURCES)
	@echo "Making $@"
	@etags $(BOOKS_TOP_SOURCES)
