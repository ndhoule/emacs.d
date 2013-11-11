;;; ndhoule-ruby.el -- Ruby settings

;;; Commentary:
;;
;; All Ruby Emacs settings go in this file.

;;; Code:

(require-package 'ruby-mode)
(require-package 'inf-ruby)

(eval-after-load 'ruby
  (progn
    ; Add various Ruby filetypes to ruby-mode
    (add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
    (add-to-list 'auto-mode-alist '("\\.thor$" . ruby-mode))
    (add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
    (add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
    (add-to-list 'auto-mode-alist '("\\.pp$" . ruby-mode))
    (add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
    (add-to-list 'auto-mode-alist '("Thorfile$" . ruby-mode))
    (add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
    (add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
    (add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
    (add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))

    ; Ignore binary Ruby files
    (add-to-list 'completion-ignored-extensions ".rbc")
    (add-to-list 'completion-ignored-extensions ".rbo")

    (setq ruby-deep-indent-paren nil)))

(provide 'ndhoule-ruby)
;;; ndhoule-ruby.el ends here
