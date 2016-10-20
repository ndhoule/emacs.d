;;; init.el --- Entry point for emacs.d.
;;
;;; Commentary:
;;
;; This file kicks everything off.
;;
;;; Code:

(defun add-to-loadpath (&rest paths)
  "Add a series of paths to the loadpath."
  (mapc (apply-partially 'add-to-list 'load-path) paths))

(setq core-config-dir
      (expand-file-name "core" user-emacs-directory))

(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

(setq user-config-dir
      (expand-file-name "config" user-emacs-directory))

(add-to-loadpath core-config-dir
                 site-lisp-dir
                 user-config-dir)

;; Recursively add the contents of `user-config-dir` to the loadpath. This
;; allows us to organize the `config` directory in subdirectories
(let ((default-directory user-config-dir))
  (normal-top-level-add-subdirs-to-load-path))

(require 'elpa)

(setq core-package-list
      '(benchmark-init diminish use-package))

(dolist (package core-package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'benchmark)
(require 'use-package)
(require 'ndhoule-init)

;;; init.el ends here
