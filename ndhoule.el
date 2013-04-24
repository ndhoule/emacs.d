; List packages to install if they aren't already
(defvar my-packages '(monokai-theme evil)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

; Load starter kit packages
(starter-kit-load "misc-recommended")
(starter-kit-load "js")
(starter-kit-load "ruby")

; Set theme
(load-theme 'monokai t)

; Enable Evil (vim) mode
(require 'evil)
(evil-mode 1)

; Save backup files in system temporary directory (e.g. /tmp)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
