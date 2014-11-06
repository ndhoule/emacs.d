;;; ndhoule-autocomplete.el --- auto-complete.el settings

;;; Commentary:
;;
;; Settings related to auto-complete.el.

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require 'ndhoule-evil)
(require-package 'auto-complete)
(require-package 'fuzzy)
(require-package 'popup)

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

(require 'auto-complete-config)
(global-auto-complete-mode t)

(ac-flyspell-workaround)
(setq ac-auto-show-menu t)
(setq ac-auto-start 2)
(setq ac-candidate-menu-min 0)
(setq ac-dwim)
(setq ac-quick-help-delay 1)
(setq ac-show-menu-immediately-on-auto-complete t)

(set-default 'ac-sources
             '(ac-source-imenu
               ac-source-dictionary
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers
               ac-source-semantic
               ac-source-yasnippet))

(dolist (mode '(clojure-mode
                css-mode
                csv-mode
                espresso-mode
                haml-mode
                haskell-mode
                html-mode
                js3-mode
                less-css-mode
                log-edit-mode
                magit-log-edit-mode
                markdown-mode
                nxml-mode
                org-mode
                sass-mode
                sh-mode
                sql-mode
                text-mode
                textile-mode
                yaml-mode))
  (add-to-list 'ac-modes mode))

;;;;;;;;;;;;;;;;;;;
;;; Keybindings ;;;
;;;;;;;;;;;;;;;;;;;

(define-key ac-completing-map (kbd "TAB") 'ac-next)
(define-key ac-completing-map (kbd "C-j") 'ac-next)
(define-key ac-completing-map (kbd "C-k") 'ac-previous)
(define-key ac-completing-map (kbd "RET") 'ac-complete)
(define-key ac-completing-map (kbd "C-l") 'ac-complete)
(define-key ac-completing-map (kbd "ESC") 'evil-normal-state)
(evil-make-intercept-map ac-completing-map)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-auto-complete)
;;; ndhoule-auto-complete.el ends here
