;;; ndhoule-lang-javascript.el -- JavaScript settings
;;
;;; Commentary:
;;
;; All JavaScript settings go in this file.
;;
;;; Code:

(defun ndhoule/parent-directory (dir)
  "Get the parent direcotry of DIR, returning nil at the root."
  (unless (string= "/" dir)
    (file-name-directory (directory-file-name dir))))

(defun ndhoule/find-file-in-heirarchy (current-dir filename)
  "Search for a file FILENAME upwards beginning in CURRENT-DIR."
  (when current-dir
    (let* ((file (concat (file-name-as-directory current-dir) filename)))
      (if (file-exists-p file)
          file
        (ndhoule/find-file-in-heirarchy (ndhoule/parent-directory current-dir) filename)))))

(defun ndhoule/find-local-eslint-executable ()
  "Find the closest local eslint executable."
  (ndhoule/find-file-in-heirarchy (buffer-file-name) "node_modules/.bin/eslint"))

;; (use-package company-tern
;; :ensure t
;; :defer t
;; :init
;; (add-hook 'js2-mode-hook
;;             (lambda ()
;;             (add-to-list 'company-backends 'company-tern))))

;;(use-package tern
;;:ensure t
;;:load-path "site-lisp/tern/emacs"
;;:diminish tern-mode
;;:init
;;(add-hook 'js2-mode-hook 'tern-mode)
;;(with-eval-after-load "evil"
;;    (evil-leader/set-key-for-mode 'js2-mode "mgd" 'tern-get-docs)
;;    (evil-leader/set-key-for-mode 'js2-mode "mgg" 'tern-find-definition))
;;:config
;;(tern-mode t))

(use-package requirejs-mode
  :ensure t
  :mode "\\.js\\'")

;; TODO: Defer
(use-package js-doc
  :ensure t
  :init
  ;; JSDoc: @returns => @return
  (setq js-doc-return-line " * @return {}\n")
  (add-hook 'js2-mode-hook
            #'(lambda ()
                (define-key js2-mode-map (kbd "C-l") 'js-doc-insert-function-doc))))

(use-package web-mode
  :ensure t
  :defer t
  :init
  (defun ndhoule/go-jsx ()
    (interactive)
    (web-mode)
    (web-mode-set-content-type "jsx"))

  (defadvice web-mode-highlight-part (around tweak-jsx activate)
    (if (equal web-mode-content-type "jsx")
        (let ((web-mode-enable-part-face nil))
          ad-do-it)
      ad-do-it))
  (add-hook 'web-mode-hook
            #'(lambda()
                (setq web-mode-code-indent-offset js2-basic-offset)
                (setq web-mode-markup-indent-offset js2-basic-offset))))

(use-package coffee-mode
  :mode "\\.coffee\\'")

(use-package js2-mode
  :ensure t
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
  (setq js2-skip-preprocessor-directives t)
  :config
  ;; If a local ESLint install is available, use it. Without this, locally
  ;; installed shared eslint configs/plugins won't work.
  (add-hook 'js2-mode-hook
            (lambda ()
              (let ((local-eslint-bin (ndhoule/find-local-eslint-executable)))
                (if local-eslint-bin
                    (set (make-local-variable 'flycheck-javascript-eslint-executable) local-eslint-bin)))))

  ;; TODO: Set as buffer-local?
  (with-eval-after-load "flycheck"
    (setq flycheck-checkers '(javascript-eslint)))

  ;; FIXME: Doesn't work ?_?
  ;; Code folding support
  ;; (hs-minor-mode 1)

  ;; FIXME: Doesn't work ?_?
  ;; Fix Evil shift (<|>) indentation
  (setq evil-shift-width ndhoule/preferred-javascript-indent-level))

(provide 'ndhoule-lang-javascript)
;;; ndhoule-lang-javascript.el ends here
