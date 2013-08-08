;;; ndhoule-init.el --- Entry point for personal customizations

;;; Commentary:
;;
;; Everything that needs to be present at startup (before anything else loads)
;; should go in here.

;;; Code:

;; Use Emacs Starter Kit as a basis for configuration
;; https://github.com/technomancy/emacs-starter-kit
(require-package 'starter-kit)
(require-package 'starter-kit-bindings)
(require-package 'starter-kit-lisp)

(defvar ndhoule/standard-settings '(ndhoule-macros
                                    ndhoule-defuns

                                    ndhoule-buffer
                                    ndhoule-clojure
                                    ndhoule-color
                                    ndhoule-css
                                    ndhoule-csv
                                    ndhoule-evil
                                    ndhoule-ffip
                                    ndhoule-flycheck
                                    ndhoule-general
                                    ndhoule-git
                                    ndhoule-haml
                                    ndhoule-javascript
                                    ndhoule-linum
                                    ndhoule-markdown
                                    ndhoule-nginx
                                    ndhoule-osx
                                    ndhoule-python
                                    ndhoule-ruby
                                    ndhoule-sgml
                                    ndhoule-smartparens
                                    ndhoule-whitespace
                                    ndhoule-yaml
                                    ndhoule-yasnippet

                                    ;; Load last, as it relies on other plugins.
                                    ndhoule-auto-complete)
  "A list of personal configuration files to load at startup.")
(mapc #'require ndhoule/standard-settings)

(defvar ndhoule/osx-settings '(ndhoule-osx)
  "A list of OS X-specific settings to load at startup.")
(when *is-a-mac*
    (mapc #'require ndhoule/osx-settings))

(provide 'ndhoule-init)
;;; ndhoule-init.el ends here
