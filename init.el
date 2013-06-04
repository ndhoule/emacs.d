;;; init.el -- Where the Emagic begins
;;
;;; Commentary:
;;
;; This is the entry point for all things Emacs.  This file gets loaded first.
;;
;;; Code:

;; ----------
;; Load Path
;; ----------
; Add a path to Emacs' load path.
(defun add-to-loadpath (&rest dirs)
  (dolist (dir dirs load-path)
  (add-to-list 'load-path (expand-file-name dir) nil #'string=)))

(add-to-loadpath "~/.emacs.d/config")


;; ----------
;; OS-Specific Settings
;; ----------
; Determine if we're on a Mac
(setq is-mac (equal system-type 'darwin))


;; ----------
;; Packages
;; ----------
(setq package-archives
      '(("gnu"         . "http://elpa.gnu.org/packages/")
        ("original"    . "http://tromey.com/elpa/")
        ("org"         . "http://orgmode.org/elpa/")
        ("marmalade"   . "http://marmalade-repo.org/packages/")))
(package-initialize)

(defvar ndhoule-packages
  '(clojure-mode
    evil
    evil-leader
    evil-nerd-commenter
    flycheck
    fill-column-indicator
    magit
    paredit
    rainbow-delimiters
    smooth-scrolling

    ; Modes
    auto-indent-mode
    autopair
    coffee-mode
    css-mode
    csv-mode
    doc-mode
    gitconfig-mode
    gitignore-mode
    haml-mode
    jade-mode
    js2-mode
    json-mode
    less-css-mode
    markdown-mode
    mustache-mode
    nginx-mode
    python-mode
    requirejs-mode
    ruby-mode
    sass-mode

    ; Themes
    monokai-theme)
    "A list of packages that should be present at launch.")

;; Check for new packages and install them if missing
(unless package-archive-contents
  (package-refresh-contents))
(dolist (package ndhoule-packages)
  (when (not (package-installed-p package))
    (package-install package)))


;; ----------
;; Config Files
;; ----------
; Provide a list of config files and include them
(defvar ndhoule/config
  '(ndhoule-evil
    ndhoule-color
    ndhoule-flycheck
    ndhoule-general
    ndhoule-js
    ndhoule-linenumbers
    ndhoule-whitespace))
(mapc #'require ndhoule/config)


;;; init.el ends here
