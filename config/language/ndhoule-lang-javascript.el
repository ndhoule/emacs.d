;;; ndhoule-lang-javascript.el -- JavaScript settings
;;
;;; Commentary:
;;
;; All JavaScript settings go in this file.
;;
;;; Code:

(use-package coffee-mode
             :mode "\\.coffee\\'")

(use-package js2-mode
             :mode "\\.js\\'"
             :interpreter "node"
             :init
             (setq ndhoule/preferred-javascript-indent-level 2)

             ;; Set sane indentation defaults
             (setq js2-pretty-multiline-declarations t)

             ;; TODO: Document
             (setq js2-highlight-external-variables nil)
             (setq js2-highlight-level 3)

             ;; Indentation
             (setq js2-indent-level ndhoule/preferred-javascript-indent-level)
             (setq js2-basic-offset ndhoule/preferred-javascript-indent-level)
             :config
             (require 'requirejs-mode)
             (require 'tern)

             ;; FIXME: Doesn't work ?_?
             ;; Code folding support
             ;; (hs-minor-mode 1)

             ;; FIXME: Doesn't work ?_?
             ;; Fix Evil shift (<|>) indentation
             (setq evil-shift-width ndhoule/preferred-javascript-indent-level))

(use-package requirejs-mode
             :ensure t
             :defer t)

(use-package tern
             :ensure t
             :defer t
             :load-path "site-lisp/tern/emacs"
             :config
             (tern-mode t)
             (eval-after-load 'auto-complete
               '(progn
                  (require 'tern-auto-complete)
                  (setq tern-ac-on-dot nil)
                  (tern-ac-setup))))

(provide 'ndhoule-lang-javascript)
;;; ndhoule-lang-javascript.el ends here
