; List packages to install if they aren't already
(defvar my-packages '(
                      clojure-mode
                      evil
                      evil-leader
                      evil-nerd-commenter
                      paredit
                      rainbow-delimiters

                      ; Themes
                      monokai-theme
                     )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

; Set theme
(load-theme 'monokai t)

; Load starter kit packages
(starter-kit-load "misc-recommended")
(starter-kit-load "js")
(starter-kit-load "lisp")
(starter-kit-load "ruby")

; Load plugins
(require 'evil)
(require 'evil-leader)
(require 'rainbow-delimiters)

; Turn off visual and audio bells
(setq ring-bell-function 'ignore)

; Enable Evil (vim) mode
(evil-mode 1)

; Set evil's mapleader key to comma
(evil-leader/set-leader ",")

(evil-leader/set-key
  "r" 'rainbow-delimiters-mode ; Map rainbow parens mode to <leader>r
  "c <SPC>" 'evilnc-comment-or-uncomment-lines ; Toggle line comment
  )

; Use two spaces as a tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

; Show trailing whitespace by default
(setq-default show-trailing-whitespace t)

; Silently ensure trailing newline at end of files
(setq require-final-newline t)

; Save backup files in system temporary directory (e.g. /tmp)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
