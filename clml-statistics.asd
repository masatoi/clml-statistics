;; -*- mode: lisp; syntax: common-lisp -*-

(in-package :cl-user)

(defpackage :statistics-asd
  (:use :cl :asdf))

(in-package :statistics-asd)

(asdf:defsystem :clml-statistics
  :author "Peter Salvi / MSI"
  :licence "LGPL"
  :description "Statistics Library"
  :components ((:file "package")
	       (:file "utilities" :depends-on ("package"))
	       (:file "math" :depends-on ("utilities"))
	       (:file "statistics" :depends-on ("math"))))
