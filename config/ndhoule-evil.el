;;; ndhoule-evil.el --- All settings related to evil mode

;;; Commentary:
;;
;; Sorry, Emacs--chords blow.

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require 'ndhoule-defuns)
(require-package 'evil)
(require-package 'evil-leader)
(require-package 'evil-nerd-commenter)
(require-package 'evil-paredit)
(require-package 'evil-surround)

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

(evil-mode 1)
(global-evil-leader-mode)
(global-evil-surround-mode 1)
(setq evil-default-cursor t)

;;;;;;;;;;;;;;;;;;;
;;; Keybindings ;;;
;;;;;;;;;;;;;;;;;;;

(evil-leader/set-leader ",")

;; Skip wrapped lines visually, not by line number
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

;; Shortcut for wrapping paragraphs at line limit
(define-key evil-normal-state-map (kbd "Q") (kbd "gqap"))

;; Use ; as :
(define-key evil-normal-state-map (kbd ";") 'evil-ex)
(define-key evil-visual-state-map (kbd ";") 'evil-ex)
(define-key evil-motion-state-map (kbd ";") 'evil-ex)

(evil-leader/set-key
  "cu"      'ndhoule/clean-up-buffer-or-region
  "s"       'sort-lines

  ;; Folding
  "zf"      'hs-hide-block
  "zo"      'hs-show-block

  ;; Comments
  "c <SPC>" 'evilnc-comment-or-uncomment-lines

  ;; Buffer management
  "bu"      'buffer-menu
  "bd"      'kill-buffer-and-window

  ;; Window/pane management
  "vs"      'split-window-right
  "hs"      'split-window-below
  "bs"      'balance-windows
  "w"       'next-multiframe-window

  ;; File management
  "o"       'ndhoule/open-file-with)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-evil)
;;; ndhoule-evil.el ends here
