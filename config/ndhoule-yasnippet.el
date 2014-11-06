;;; ndhoule-yasnippet.el --- Config file for yasnippet

;;; Commentary:
;;
;; They're snippets. Enough said.

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require-package 'yasnippet)
(require-package 'angular-snippets)

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

;; TODO: This isn't quite right
(setq yas-indent-line 'fixed)

(require 'angular-snippets)

(yas-load-directory
 (expand-file-name "snippets" user-emacs-directory))

(yas-global-mode t)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-yasnippet)
;;; ndhoule-yasnippet.el ends here
