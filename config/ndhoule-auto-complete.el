;;; ndhoule-autocomplete.el -- auto-complete.el settings

;;; Commentary:
;;
;; Settings related to auto-complete.el.

;;; Code:

(require-package 'auto-complete)
(require 'auto-complete-config)

(global-auto-complete-mode t)

;; Start auto-completion only after 2 characters of a word
(setq ac-auto-start 2)

;; Case sensitivity is important when finding matches
(setq ac-ignore-case nil)

(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

;; Add additional completion sources to auto-complete
(set-default 'ac-sources
             '(ac-source-imenu
               ac-source-dictionary
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers
               ac-source-words-in-all-buffer
               ac-source-yasnippet))

(dolist (mode '(magit-log-edit-mode log-edit-mode org-mode text-mode haml-mode
                sass-mode yaml-mode csv-mode espresso-mode html-mode nxml-mode
                sh-mode clojure-mode textile-mode markdown-mode js3-mode
                css-mode less-css-mode sql-mode))
  (add-to-list 'ac-modes mode))

(provide 'ndhoule-auto-complete)
;;; ndhoule-auto-complete.el ends here
