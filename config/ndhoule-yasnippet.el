;;; ndhoule-yasnippet.el --- Config file for yasnippet

;;; Commentary:
;;
;; They're snippets. Enough said.

;;; Code:

(require-package 'yasnippet)
(require-package 'angular-snippets)

(yas-global-mode t)
(setq yas-indent-line 'fixed)

(require 'angular-snippets)
(yas-load-directory
 (expand-file-name "snippets" user-emacs-directory))


(provide 'ndhoule-yasnippet)
;;; ndhoule-yasnippet.el ends here
