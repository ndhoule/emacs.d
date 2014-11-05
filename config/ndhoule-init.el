;;; ndhoule-init.el --- Entry point for personal customizations

;;; Commentary:
;;
;; Everything that needs to be present at startup (before anything else loads)
;; should go in here.

;;; Code:

;; Use Better Defaults as a basis for configuration
;; https://github.com/technomancy/better-defaults
(require-package 'better-defaults)

(defvar ndhoule/standard-settings '(;; Library code
                                    ndhoule-macros
                                    ndhoule-defuns

                                    ;; Load first
                                    ndhoule-diminish

                                    ;; Configuration
                                    ndhoule-ace
                                    ndhoule-color
                                    ndhoule-editorconfig
                                    ndhoule-emmet
                                    ndhoule-evil
                                    ndhoule-flycheck
                                    ndhoule-font
                                    ndhoule-general
                                    ndhoule-git
                                    ndhoule-ido
                                    ndhoule-linum
                                    ndhoule-osx
                                    ndhoule-powerline
                                    ndhoule-projectile
                                    ndhoule-rainbow-delimiters
                                    ndhoule-smartparens
                                    ndhoule-smex
                                    ndhoule-spell
                                    ndhoule-whitespace
                                    ndhoule-window
                                    ndhoule-yasnippet

                                    ;; Language settings
                                    ndhoule-lang-asciidoc
                                    ndhoule-lang-clojure
                                    ndhoule-lang-css
                                    ndhoule-lang-csv
                                    ndhoule-lang-go
                                    ndhoule-lang-haml
                                    ndhoule-lang-java
                                    ndhoule-lang-javascript
                                    ndhoule-lang-markdown
                                    ndhoule-lang-nginx
                                    ndhoule-lang-python
                                    ndhoule-lang-ruby
                                    ndhoule-lang-sgml
                                    ndhoule-lang-sml
                                    ndhoule-lang-yaml
                                    ndhoule-lang-sh

                                    ;; Load last, as it relies on other plugins.
                                    ndhoule-auto-complete)
  "A list of personal configuration files to load at startup.")
(mapc #'require ndhoule/standard-settings)

(if window-system
  (require 'ndhoule-gui))

(defvar ndhoule/osx-settings '(ndhoule-osx)
  "A list of OS X-specific settings to load at startup.")
(when *is-a-mac*
    (mapc #'require ndhoule/osx-settings))

(provide 'ndhoule-init)
;;; ndhoule-init.el ends here
