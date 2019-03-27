;;;; getter-setter-specials.asd

(asdf:defsystem #:getter-setter-specials
  :description "Simplify variable creation by DEFPARAMETER and a FUNCTION for getter and setter."
  :author "Panji Kusuma <epanji@gmail.com>"
  :license  "Public Domain"
  :version "0.0.1"
  :serial t
  :components ((:file "package")
               (:file "getter-setter-specials"))
  :in-order-to ((test-op (load-op #:getter-setter-specials/tests))))

(defmethod perform ((o asdf:test-op)
                    (c (eql (asdf:find-system :getter-setter-specials))))
  (funcall (intern "RUN-SUITE-TESTS" :getter-setter-specials/tests)))

(asdf:defsystem #:getter-setter-specials/tests
  :defsystem-depends-on (:fiveam)
  :depends-on (:getter-setter-specials)
  :components ((:file "getter-setter-specials-tests")))
