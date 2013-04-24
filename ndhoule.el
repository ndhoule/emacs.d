(starter-kit-load "misc-recommended")
(starter-kit-load "js")
(starter-kit-load "ruby")

(load-theme 'monokai t)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
