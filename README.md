# Getter Setter Specials
### _Panji Kusuma <epanji@gmail.com>_

This package provide a macro for simplify variable creation by DEFPARAMETER.
The macro also create a FUNCTION to get and set the variable.
Using this package for experiment is very convenience, but not sure for production.

## Usage

``` common-lisp
(ql:quickload :getter-setter-specials)

(gss:define-specials first-variable second-variable third-variable)

;; Setter
(first-variable 1)

;; Getter
(first-variable)
```

## Tests

``` common-lisp
CL-USER> (asdf:test-system :getter-setter-specials)

Running test suite GETTER-SETTER-SPECIALS-SUITE
 Running test SPECIAL-VARIABLES ...
 Running test SETTERS ...
 Running test GETTERS ...
 Did 9 checks.
    Pass: 9 (100%)
    Skip: 0 ( 0%)
    Fail: 0 ( 0%)

T
```

## License

Public Domain
