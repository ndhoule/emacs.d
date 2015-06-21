;;; ndhoule-lang-ruby.el -- Ruby settings

;;; Commentary:
;;
;; All Ruby Emacs settings go in this file.

;;; Code:

(use-package inf-ruby
             :ensure t
             :defer t)

(use-package ruby-mode
             :ensure t
             :mode "Capfile\\'"
             :mode "Gemfile\\'"
             :mode "Guardfile\\'"
             :mode "Rakefile\\'"
             :mode "Thorfile\\'"
             :mode "Vagrantfile\\'"
             :mode "\\.gemspec\\'"
             :mode "\\.pp\\'"
             :mode "\\.rake\\'"
             :mode "\\.rb\\'"
             :mode "\\.ru\\'"
             :mode "\\.thor\\'"
             :interpreter "ruby"
             :config
             (require 'inf-ruby)

             ;; Ignore binary Ruby files
             (add-to-list 'completion-ignored-extensions ".rbc")
             (add-to-list 'completion-ignored-extensions ".rbo")

             (setq ruby-deep-indent-paren nil))

(provide 'ndhoule-lang-ruby)
;;; ndhoule-lang-ruby.el ends here
