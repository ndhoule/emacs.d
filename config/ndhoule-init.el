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
(require-package 'better-defaults)

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

(defvar ndhoule/deps-lib '(ndhoule-macros
                           ndhoule-defuns)
  "A list of dependencies to load before any other dependencies begin loading.")

(defvar ndhoule/deps-pre '(ndhoule-diminish
                           ndhoule-themes)
  "A list of dependencies to load before other dependencies load, but after all library files have loaded.")

(defvar ndhoule/deps-main '(ndhoule-ace
                            ndhoule-color
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
                            ndhoule-window
                            ndhoule-yasnippet)
  "A list of dependencies to load before any language-specific configuration.")

;; TODO: Load all files in the `languages' folder automatically
(defvar ndhoule/deps-lang '(ndhoule-lang-asciidoc
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
                            ndhoule-lang-sh)
  "A list of dependencies to load after all plugins have loaded.")

(defvar ndhoule/deps-post '(ndhoule-auto-complete)
  "A list of dependencies to load after all other files have finished loading.")

;;;;;;;;;;;;;;;;;;;;;
;;; Load Sequence ;;;
;;;;;;;;;;;;;;;;;;;;;

(mapc #'require ndhoule/deps-lib)
(mapc #'require ndhoule/deps-pre)
(mapc #'require ndhoule/deps-main)
(mapc #'require ndhoule/deps-lang)
(mapc #'require ndhoule/deps-post)

(if window-system
    (require 'ndhoule-gui))

(if (eq system-type 'darwin)
    (require 'ndhoule-osx))

(if (eq system-type 'gnu/linux)
    (require 'ndhoule-linux))

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-init)
;;; ndhoule-init.el ends here
