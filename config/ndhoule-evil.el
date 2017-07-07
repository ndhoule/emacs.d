;;; ndhoule-evil.el --- All settings related to evil mode
;;
;;; Commentary:
;;
;; Goodbye, chords.
;;
;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require 'ndhoule-defuns)

;; https://github.com/alexmurray/evil-vimish-fold
(use-package evil-vimish-fold
  :ensure t
  :defer t
  :config
  (evil-vimish-fold-mode 1))

;; https://github.com/cofi/evil-leader
(use-package evil-leader
  :ensure t
  :defer t
  :config
  (global-evil-leader-mode))

;; https://github.com/linktohack/evil-commentary
(use-package evil-commentary
  :ensure t
  :defer t
  :config
  (evil-commentary-mode))

;; https://github.com/roman/evil-paredit
(use-package evil-paredit
  :ensure t
  :defer t)

;; https://github.com/timcharper/evil-surround
(use-package evil-surround
  :ensure t
  :defer t
  :config
  (global-evil-surround-mode 1))

;; https://github.com/emacsmirror/evil
(use-package evil
  :ensure t
  :config
  (evil-mode 1)

  (require 'evil-commentary)
  (require 'evil-leader)
  (require 'evil-paredit)
  (require 'evil-surround)
  (require 'evil-vimish-fold)

  (setq evil-default-cursor t)

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
    "o"       'ndhoule/open-file-with))

(provide 'ndhoule-evil)
;;; ndhoule-evil.el ends here
