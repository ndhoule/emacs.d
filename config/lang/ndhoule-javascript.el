;;; ndhoule-javascript.el -- JavaScript settings
;;
;;; Commentary:
;;
;; All JavaScript settings go in this file.
;;
;;; Code:


(require-package 'coffee-mode)
(require-package 'js2-mode)
(require-package 'requirejs-mode)

;; Don't use `json-mode' since it can't JSON worth a shit
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

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

;; Ensure we use js-mode rather than the built-in (outdated) javascript-mode
(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))

(defun ndhoule/js-mode-hook ()
  "Hook for setting `js-mode' defaults and enabling `js2-minor-mode'."

  (js2-minor-mode 1)

  ;; Set sane indentation defaults
  (setq js-indent-level preferred-javascript-indent-level)
  (setq js2-pretty-multiline-declarations t)

  (setq js2-highlight-external-variables nil)
  (setq js2-highlight-level 3)

  ;; Enable Tern
  (tern-mode t)

  ;; Fix Evil's < and > indentation
  (setq evil-shift-width preferred-javascript-indent-level)

  ;; Highlight keywords like TODO, etc.
  (lambda ()
    (hs-minor-mode 1)
    (font-lock-add-keywords nil
                            '(("\\<\\(XXX\\|FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))))

;; Enterprise, go!
(add-hook 'js-mode-hook (lambda () (ndhoule/js-mode-hook)))

(provide 'ndhoule-javascript)
;;; ndhoule-javascript.el ends here
