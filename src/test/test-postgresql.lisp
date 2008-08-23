;;; -*- Mode: lisp -*-

(in-package :test-plain-odbc)

(export '(run-postgresql-tests))

(defun run-postgresql-tests (conn)
  (dolist (sym '(pg-test-connection))
    (pprint sym)
    (funcall sym conn)))

(defun pg-test-connection (conn)
  (let ((n (caar (exec-query conn "SELECT 1"))))
    (assert (= 1 n))))