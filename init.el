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

;; Disable splash screen
(setq inhibit-startup-message t)

;; Helpful constants for OS-specific settings
(defconst *is-a-mac* (eq system-type 'darwin))
(defconst *is-carbon-emacs* (eq window-system 'mac))
(defconst *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))

;; Set up loadpath
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

(require 'init-elpa)
(require 'ndhoule-init)

;;; init.el ends here
