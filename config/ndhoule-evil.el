;;; ndhoule-evil.el --- All settings related to evil mode

;;; Commentary:
;;
;; Sorry Emacs, I'll never get used to chords.

;;; Code:

(require-package 'evil)
(require-package 'evil-leader)
(require-package 'evil-nerd-commenter)
(require-package 'evil-paredit)
(require-package 'evil-surround)

(evil-mode 1)
(global-evil-leader-mode)
(global-evil-surround-mode 1)
(setq evil-default-cursor t)

;;
;; Keybindings
;;

(evil-leader/set-leader ",")

;; Shortcut for wrapping paragraphs at line limit
(define-key evil-normal-state-map (kbd "Q") (kbd "gqap"))

;; Use ; as :
(define-key evil-normal-state-map (kbd ";") 'evil-ex)
(define-key evil-visual-state-map (kbd ";") 'evil-ex)
(define-key evil-motion-state-map (kbd ";") 'evil-ex)

;; TODO: Move plugin-specific bindings to their config files
(evil-leader/set-key
  "ra"      'rainbow-delimiters-mode
  "cu"      'ndhoule/clean-up-buffer-or-region
  "re"      'linum-relative-toggle
  "t"       'projectile-find-file
  "x"       'execute-extended-command

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

  ;; Flycheck
  "en"      'flycheck-next-error
  "ep"      'flycheck-previous-error

  ;; File management
  "n"       'sr-speedbar-toggle
  "o"       'ndhoule/open-file-with)


(provide 'ndhoule-evil)
;;; ndhoule-evil.el ends here
