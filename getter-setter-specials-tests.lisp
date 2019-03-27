;;;; getter-setter-specials-tests.lisp

(defpackage #:getter-setter-specials/tests
  (:use #:common-lisp #:fiveam)
  (:export #:run-suite-tests))
(in-package #:getter-setter-specials/tests)

(gss:define-specials first-variable second-variable third-variable)

(defun run-suite-tests ()
  (run! 'getter-setter-specials-suite))

(def-suite getter-setter-specials-suite)

(in-suite getter-setter-specials-suite)

(test special-variables
  (is (boundp '*first-variable*))
  (is (boundp '*second-variable*))
  (is (boundp '*third-variable*)))

(test (setters :depends-on special-variables)
  (first-variable :nil)        ;set to NIL
  (second-variable (expt 9 0)) ;set to 1
  (third-variable 2)           ;set to 2
  (is (null *first-variable*))
  (is (= 1 *second-variable*))
  (is (= 2 *third-variable*)))

(test (getters :depends-on setters)
  (is (null (first-variable)))
  (is (= 1 (second-variable nil)))
  (is (= 2 (third-variable (or)))))
