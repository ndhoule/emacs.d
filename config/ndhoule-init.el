;;; ndhoule-init.el --- Entry point for personal customizations

;;; Commentary:
;;
;; Everything that needs to be present at startup (before anything else loads)
;; should go in here.

;;; Code:

;; Use Better Defaults as a basis for configuration
;; https://github.com/technomancy/better-defaults
(require-package 'better-defaults)

(defvar ndhoule/standard-settings '(ndhoule-macros
                                    ndhoule-defuns

                                    ndhoule-ace
                                    ndhoule-buffer
                                    ndhoule-clojure
                                    ndhoule-color
                                    ndhoule-css
                                    ndhoule-csv
                                    ndhoule-editorconfig
                                    ndhoule-emmet
                                    ndhoule-evil
                                    ndhoule-flycheck
                                    ndhoule-font
                                    ndhoule-general
                                    ndhoule-git
                                    ndhoule-haml
                                    ndhoule-ido
                                    ndhoule-java
                                    ndhoule-javascript
                                    ndhoule-keybindings
                                    ndhoule-linum
                                    ndhoule-markdown
                                    ndhoule-nginx
                                    ndhoule-osx
                                    ndhoule-projectile
                                    ndhoule-python
                                    ndhoule-ruby
                                    ndhoule-sgml
                                    ndhoule-smartparens
                                    ndhoule-sml
                                    ndhoule-spell
                                    ndhoule-whitespace
                                    ndhoule-window
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
