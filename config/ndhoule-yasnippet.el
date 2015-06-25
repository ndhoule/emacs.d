;;; ndhoule-yasnippet.el --- Config file for yasnippet
;;
;;; Commentary:
;;
;; They're snippets. Enough said.
;;
;;; Code:

(use-package yasnippet
             ;; FIXME: Don't really use snippets
             :disabled t
             :ensure t
             :defer t
             :diminish yas-minor-mode
             :init
             ;; FIXME: This isn't quite right
             ;; Erm...can't remember why, though
             (setq yas-indent-line 'fixed)

             (add-hook 'prog-mode-hook (lambda ()
                                         (yas-global-mode t)))
             :config
             (yas-load-directory
              (expand-file-name "snippets" user-emacs-directory)))

(provide 'ndhoule-yasnippet)
;;; ndhoule-yasnippet.el ends here
