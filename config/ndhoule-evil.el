;;; ndhoule-evil.el -- All settings related to evil mode
;;
;;; Commentary:
;;
;; Emacs chords suck, but Evil lets us be all vimmy. Nice.
;;
;;; Code:

(require 'evil)
(require 'evil-leader)

;; Enable Evil (vim-like) mode
(evil-mode 1)

;; Enable evil-leader everywhere
(global-evil-leader-mode)

(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)

;; Prevent evil mode from screwing with Paredit
; (add-hook 'emacs-lisp-mode-hook 'evil-paredit-mode)

;; Set evil's mapleader key to comma
(evil-leader/set-leader ",")

(define-key evil-normal-state-map (kbd ";") 'evil-ex)
(define-key evil-visual-state-map (kbd ";") 'evil-ex)
(define-key evil-motion-state-map (kbd ";") 'evil-ex)

(define-key evil-normal-state-map (kbd "Q") (kbd "gqap"))

(evil-leader/set-key
  "ra"      'rainbow-delimiters-mode
  "cu"      'cleanup-buffer
  "re"      'linum-relative-toggle
  "t"       'find-file-in-project
  "x"       'execute-extended-command

  ;; Comments
  "c <SPC>" 'evilnc-comment-or-uncomment-lines

  ;; Buffer management
  "be"      'ibuffer
  "bd"      'kill-buffer-and-window

  ;; Window/pane management
  "vs"      'split-window-right
  "hs"      'split-window-below
  "w"       'next-multiframe-window

  ;; Flycheck
  "en"      'flycheck-next-error
  "ep"      'flycheck-previous-error

  ;; File management
  "n"       'sr-speedbar-toggle)

;; Add evil bindings to Magit
(evil-add-hjkl-bindings *bc-menu-mode-map* 'emacs)

(evil-add-hjkl-bindings magit-branch-manager-mode-map 'emacs
  "K" 'magit-discard-item
  "L" 'magit-key-mode-popup-logging)
(evil-add-hjkl-bindings magit-status-mode-map 'emacs
  "K" 'magit-discard-item
  "l" 'magit-key-mode-popup-logging
  "h" 'magit-toggle-diff-refine-hunk)

;; AceJump is a nice addition to evil's standard motions. The following
;; definitions are necessary to define evil motions for ace-jump-mode
;; (version 2).
(defmacro evil-enclose-ace-jump (&rest body)
  `(let ((old-mark (mark))
         (ace-jump-mode-scope 'window))
     (remove-hook 'pre-command-hook #'evil-visual-pre-command t)
     (remove-hook 'post-command-hook #'evil-visual-post-command t)
     (unwind-protect
         (progn
           ,@body
           (recursive-edit))
       (if (evil-visual-state-p)
           (progn
             (add-hook 'pre-command-hook #'evil-visual-pre-command nil t)
             (add-hook 'post-command-hook #'evil-visual-post-command nil t)
             (set-mark old-mark))
         (push-mark old-mark)))))

(evil-define-motion evil-ace-jump-char-mode (count)
  :type exclusive
  (evil-enclose-ace-jump
   (ace-jump-mode 5)))

(evil-define-motion evil-ace-jump-line-mode (count)
  :type line
  (evil-enclose-ace-jump
   (ace-jump-mode 9)))

(evil-define-motion evil-ace-jump-word-mode (count)
  :type exclusive
  (evil-enclose-ace-jump
   (ace-jump-mode 1)))

(evil-define-motion evil-ace-jump-char-to-mode (count)
  :type exclusive
  (evil-enclose-ace-jump
   (ace-jump-mode 5)
   (forward-char -1)))

(add-hook 'ace-jump-mode-end-hook 'exit-recursive-edit)

;; Ace Keybindings
(define-key evil-motion-state-map (kbd "SPC") #'evil-ace-jump-char-mode)
(define-key evil-motion-state-map (kbd "C-SPC") #'evil-ace-jump-word-mode)

(define-key evil-operator-state-map (kbd "SPC") #'evil-ace-jump-char-mode)      ; similar to f
(define-key evil-operator-state-map (kbd "C-SPC") #'evil-ace-jump-char-to-mode) ; similar to t
(define-key evil-operator-state-map (kbd "M-SPC") #'evil-ace-jump-word-mode)

;; different jumps for different visual modes
(defadvice evil-visual-line (before spc-for-line-jump activate)
  (define-key evil-motion-state-map (kbd "SPC") #'evil-ace-jump-line-mode))

(defadvice evil-visual-char (before spc-for-char-jump activate)
  (define-key evil-motion-state-map (kbd "SPC") #'evil-ace-jump-char-mode))

(defadvice evil-visual-block (before spc-for-char-jump activate)
  (define-key evil-motion-state-map (kbd "SPC") #'evil-ace-jump-char-mode))

(provide 'ndhoule-evil)
;;; ndhoule-evil.el ends here
