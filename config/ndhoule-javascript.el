;;; ndhoule-javascript.el -- JavaScript settings
;;
;;; Commentary:
;;
;; All JavaScript settings go in this file.
;;
;;; Code:


(require-package 'coffee-mode)
(require-package 'js3-mode)
(require-package 'json-mode)
(require-package 'requirejs-mode)

(defvar preferred-javascript-indent-level 2)

;; Tern
(add-to-list 'load-path (expand-file-name "tern/emacs" site-lisp-dir))
(autoload 'tern-mode "tern.el" nil t)

(eval-after-load 'auto-complete
  '(eval-after-load 'tern
     '(progn
        (require 'tern-auto-complete)
        (setq tern-ac-on-dot nil)
        (tern-ac-setup))))

;; Ensure we use js3-mode rather than the built-in (outdated) javascript-mode
(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))

(defun ndhoule/js3-mode-hook ()
  "Default settings for JS3 mode."

  ;; Disable a lot of (weird,) fancy indentation
  (setq js3-consistent-level-indent-inner-bracket t)

  ;; Set sane indentation defaults
  (setq js3-indent-level preferred-javascript-indent-level)
  (setq js3-basic-offset preferred-javascript-indent-level)
  (setq js3-bounce-indent-p t)
  (setq js3-auto-indent-p t)
  (setq js3-enter-indents-newline t)
  (setq js3-indent-on-enter-key t)
  (setq js3-pretty-multiline-decl-indentation-p t)

  ;; Don't require spaces between `function()` -- default is `function ()`
  (setq js3-mode-squeeze-spaces t)

  ;; Set moar good defaults
  (setq js3-mode-must-byte-compile nil)
  (setq js3-auto-insert-catch-block t)
  (setq js3-highlight-external-variables nil)
  (setq js3-highlight-level 3)
  (setq js3-pretty-multiline-declarations t)
  (setq js3-mirror-mode nil)
  (setq js3-cleanup-whitespace t)

  ;; Enable Tern
  (tern-mode t)

  ;; Fix Evil's < and > indentation
  (setq evil-shift-width preferred-javascript-indent-level)

  ;; Highlight keywords like TODO, etc.
  (lambda ()
    (hs-minor-mode 1)
    (define-key js3-mode-map "\C-ci" 'js-doc-insert-function-doc)
    (define-key js3-mode-map "@" 'js-doc-insert-tag)
    (font-lock-add-keywords nil
                            '(("\\<\\(XXX\\|FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))))

;; Enterprise, go!
(add-hook 'js3-mode-hook (lambda () (ndhoule/js3-mode-hook)))

(provide 'ndhoule-javascript)
;;; ndhoule-javascript.el ends here
