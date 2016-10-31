;;; ndhoule-init.el --- Entry point for personal customizations

;;; Commentary:
;;
;; Everything that needs to be present at startup (before anything else loads)
;; should go in here.

;;; Code:

;;;;;;;;;;;;;;;;
;;; Defaults ;;;
;;;;;;;;;;;;;;;;

;; Use Better Defaults as a basis for configuration
;; https://github.com/technomancy/better-defaults
(use-package better-defaults
  :ensure t)

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

(defvar ndhoule/deps-lib '(ndhoule-defuns)
  "A list of dependencies to load before any other dependencies begin loading.")

(defvar ndhoule/deps-pre '(ndhoule-themes)
  "A list of dependencies to load before other dependencies load, but after all library files have loaded.")

(defvar ndhoule/deps-main '(ndhoule-color
                            ndhoule-editorconfig
                            ndhoule-emmet
                            ndhoule-evil
                            ndhoule-flycheck
                            ndhoule-fonts
                            ndhoule-general
                            ndhoule-git
                            ndhoule-ido
                            ndhoule-linum
                            ndhoule-osx
                            ndhoule-powerline
                            ndhoule-projectile
                            ndhoule-rainbow-delimiters
                            ndhoule-scrolling
                            ndhoule-smartparens
                            ndhoule-smex
                            ndhoule-spell
                            ndhoule-whitespace
                            ndhoule-window)
  "A list of dependencies to load before any language-specific configuration.")

(defvar ndhoule/deps-lang '(ndhoule-lang-adoc
                            ndhoule-lang-clojure
                            ndhoule-lang-css
                            ndhoule-lang-csv
                            ndhoule-lang-go
                            ndhoule-lang-haml
                            ndhoule-lang-java
                            ndhoule-lang-javascript
                            ndhoule-lang-json
                            ndhoule-lang-markdown
                            ndhoule-lang-nginx
                            ndhoule-lang-php
                            ndhoule-lang-python
                            ndhoule-lang-ruby
                            ndhoule-lang-sgml
                            ndhoule-lang-sh
                            ndhoule-lang-sml
                            ndhoule-lang-terraform
                            ndhoule-lang-yaml))

(defvar ndhoule/deps-post '(ndhoule-completion)
  "A list of dependencies to load after all other files have finished loading.")

;;;;;;;;;;;;;;;;;;;;;
;;; Load Sequence ;;;
;;;;;;;;;;;;;;;;;;;;;

(mapc #'require ndhoule/deps-lib)
(mapc #'require ndhoule/deps-pre)
(mapc #'require ndhoule/deps-main)
(mapc #'require ndhoule/deps-lang)
(mapc #'require ndhoule/deps-post)

;; This must be loaded in non-GUI modes; we want these keybindings to take
;; effect even when Emacs is running in server mode
(use-package ndhoule-gui)

(use-package ndhoule-osx
  :if (eq system-type 'darwin))

(use-package ndhoule-linux
  :if (eq system-type 'gnu/linux))

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-init)
;;; ndhoule-init.el ends here
