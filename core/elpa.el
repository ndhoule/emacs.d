;;; elpa.el -- Settings for package management

;;; Commentary:
;;
;; Settings related to ELPA/package.el.  Lifted in large part from Steve Purcell's emacs.d
;; configuration, found here:
;; <https://github.com/purcell/emacs.d/blob/master/init-elpa.el>

;;; Code:

;;;
;;; package.el
;;;

;; Find and load the correct `package.el'. When switching between Emacs 23 and
;; 24, we always use the bundled package.el in Emacs 24.
(let ((package-el-site-lisp-dir
       (expand-file-name "package" site-lisp-dir)))
  (when (and (file-directory-p package-el-site-lisp-dir)
             (> emacs-major-version 23))
    (message "Removing local package.el from load-path to avoid shadowing bundled version")
    (setq load-path (remove package-el-site-lisp-dir load-path))))

(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))

(provide 'elpa)
;;; elpa.el ends here
