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

(evil-leader/set-leader ",")
(setq evil-default-cursor t)

;; Use ; as :
(define-key evil-normal-state-map (kbd ";") 'evil-ex)
(define-key evil-visual-state-map (kbd ";") 'evil-ex)
(define-key evil-motion-state-map (kbd ";") 'evil-ex)

;; Shortcut for wrapping paragraphs at line limit
(define-key evil-normal-state-map (kbd "Q") (kbd "gqap"))

;;
;; Keybindings
;;

(evil-leader/set-key
  "ra"      'rainbow-delimiters-mode
  "cu"      'clean-up-buffer-or-region
  "re"      'linum-relative-toggle
  "t"       'projectile-find-file
  "x"       'execute-extended-command

  ;; Folding
  "zf"      'hs-hide-block
  "zo"      'hs-show-block

  ;; Comments
  "c <SPC>" 'evilnc-comment-or-uncomment-lines

  ;; Buffer management
  "be"      'ibuffer
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
  "o"       'open-file-with)


;; Use space to enable ace jump mode
(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)

;;
;; magit-mode keybindings
;;

(evil-add-hjkl-bindings *bc-menu-mode-map* 'emacs)
(evil-add-hjkl-bindings magit-mode-map 'emacs)
(evil-add-hjkl-bindings magit-diff-mode-map 'emacs)
(evil-add-hjkl-bindings magit-status-mode-map 'emacs
  "K" 'magit-discard-item
  "l" 'magit-key-mode-popup-logging
  "h" 'magit-toggle-diff-refine-hunk)
(evil-add-hjkl-bindings git-rebase-mode-map 'emacs
  "K" 'git-rebase-mode-kill-line
  "h" 'describe-mode)
(evil-add-hjkl-bindings magit-log-mode-map 'emacs
  "l" 'magit-key-mode-popup-logging)
(evil-add-hjkl-bindings magit-branch-manager-mode-map 'emacs
  "K" 'magit-discard-item
  "L" 'magit-key-mode-popup-logging)

;;
;; ibuffer-mode keybindings
;;

(eval-after-load 'ibuffer
  '(progn
     ;;; TODO: Does this actually need to exist?
     ;; (set-keymap-parent
     ;;  (evil-get-auxiliary-keymap ibuffer-mode-map 'normal t)
     ;;  (assq-delete-all 'menu-bar (copy-keymap ibuffer-mode-map)))
     (evil-make-overriding-map ibuffer-mode-map 'normal t)
     (evil-define-key 'normal ibuffer-mode-map
       ;; "j" 'evil-next-line
       ;; "k" 'evil-previous-line
       "j" 'ibuffer-forward-line
       "k" 'ibuffer-backward-line
       ;; "J" 'ibuffer-jump-to-buffer
       "RET" 'ibuffer-visit-buffer
       (kbd "DEL") 'ibuffer-unmark-backward)))


(provide 'ndhoule-evil)
;;; ndhoule-evil.el ends here
