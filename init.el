;;; init.el --- Entry point for all things Emacs
;;
;;; Commentary:
;;
;; This file gets executed first.
;;
;;; Code:

;;;
;;; Loadpath
;;;

; Set the site-lisp directory as a variable to be used in other config files
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

(setq core-config-dir
      (expand-file-name "core" user-emacs-directory))

(setq user-config-dir
      (expand-file-name "config" user-emacs-directory))

(defun add-to-loadpath (&rest paths)
  "Add a series of paths to the loadpath."
  (mapc (apply-partially 'add-to-list 'load-path) paths))

;; Add common paths to loadpath
(add-to-loadpath site-lisp-dir
                 core-config-dir
                 user-config-dir)

;; Recursively add the contents of `user-config-dir` to the loadpath. This
;; allows us to organize the `config` directory in subdirectories
(let ((default-directory user-config-dir))
  (normal-top-level-add-subdirs-to-load-path))

(require 'init-elpa)

;; XXX: these are core packages that must be loaded before any others
(setq package-list '(use-package))

(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
;; END XXX

(require 'use-package)

(require 'ndhoule-init)

;;; init.el ends here
