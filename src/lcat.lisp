;;
;; The contents of this file are subject to the terms of the
;; Common Development and Distribution License, Version 1.0 only
;; (the "License").  You may not use this file except in compliance
;; with the License.
;;
;; See the file LICENSE in this distribution for details.
;; A copy of the CDDL is also available via the Internet at
;; http://www.opensource.org/licenses/cddl1.txt
;;
;; When distributing Covered Code, include this CDDL HEADER in each
;; file and include the contents of the LICENSE file from this
;; distribution.
;;

(declaim (optimize (speed 3) (safety 3)))
(declaim (ftype (function (string) list) get-file-as-list))

(defun get-file-as-list (path)
  ;; Try to open <path>, fail silently if it does not exist.
  (with-open-file (stream path :if-does-not-exist nil)
    (if stream
      (loop for line = (read-line stream nil)
            while line
            collect line)
      (list))))

(defun main ()
  ;; Read and print all files in argv.
  (loop for argv in (cdr sb-ext:*posix-argv*)
        do (format t "~{~A~^~%~}" (get-file-as-list argv))))
