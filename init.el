;;; init.el --- Entry point for all things Emacs
;;
;;; Commentary:
;;
;; This file gets executed first.
;;
;;; Code:

;; Start a background server if one isn't already running
(require 'server)
(unless (server-running-p)
    (server-start))

;; Helpful constants for OS-specific settings
(defconst *is-a-mac* (eq system-type 'darwin))
(defconst *is-carbon-emacs* (eq window-system 'mac))
(defconst *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))

(defun add-to-loadpath (&rest dirs)
  (dolist (dir dirs load-path)
    (add-to-list 'load-path (expand-file-name dir) nil #'string=))
  "Add a list of directories to the loadpath.")

(add-to-loadpath user-emacs-directory
                 (concat user-emacs-directory "lib")
                 (concat user-emacs-directory "site-lisp")
                 (concat user-emacs-directory "site-lisp/tern/emacs")
                 (concat user-emacs-directory "site-lisp/jdee/dist/jdee-2.4.2/lisp")
                 (concat user-emacs-directory "config"))

(require 'init-elpa)
(require 'ndhoule-init)

;;; init.el ends here
