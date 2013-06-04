;;; ndhoule-evil.el

(require 'evil)
(require 'evil-leader)

; Enable Evil (vim-like) mode
(evil-mode 1)

; Set evil's mapleader key to comma
(evil-leader/set-leader ",")

(evil-leader/set-key
  "r"       'rainbow-delimiters-mode ; Map rainbow parens mode to <leader>r
  "c <SPC>" 'evilnc-comment-or-uncomment-lines ; Toggle line comment
  "vs"      'split-window-right
  "hs"      'split-window-below
  "w"       'next-multiframe-window
  "en"      'flycheck-next-error
  "ep"      'flycheck-previous-error
  "n"       'speedbar)


(provide 'ndhoule-evil)
;;; ndhoule-evil.el ends here
