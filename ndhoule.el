;; ----------
;; Packages
;; ----------

; List packages to install if they aren't already
(defvar my-packages '(clojure-mode
                      evil
                      evil-leader
                      evil-nerd-commenter
                      paredit
                      rainbow-delimiters
                      magit
                      flycheck

                      ; Themes
                      monokai-theme)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

; Load plugins
(require 'evil)
(require 'evil-leader)
(require 'rainbow-delimiters)


;; ----------
;; General Settings
;; ----------

; Load starter kit packages
(starter-kit-load "misc-recommended")
(starter-kit-load "js")
(starter-kit-load "lisp")
(starter-kit-load "ruby")

; Set theme
(load-theme 'monokai t)

; Turn off visual and audio bells
(setq ring-bell-function 'ignore)

; Save backup files in system temporary directory (e.g. /tmp)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

; Use two spaces as a tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

; Show trailing whitespace by default
(setq-default show-trailing-whitespace t)

; Silently ensure trailing newline at end of files
(setq require-final-newline t)


;; ----------
;; Line Numbering
;; ----------

; Enable relative line numbers
(defvar my-linum-format-string "%3d")

(add-hook 'linum-before-numbering-hook 'my-linum-get-format-string)

(defun my-linum-get-format-string ()
  (let* ((width (1+ (length (number-to-string
                             (count-lines (point-min) (point-max))))))
         (format (concat "%" (number-to-string width) "d")))
    (setq my-linum-format-string format)))

(defvar my-linum-current-line-number 0)

(setq linum-format 'my-linum-relative-line-numbers)

(defun my-linum-relative-line-numbers (line-number)
  (let ((offset (- line-number my-linum-current-line-number)))
    (propertize (format my-linum-format-string offset) 'face 'linum)))

(defadvice linum-update (around my-linum-update)
  (let ((my-linum-current-line-number (line-number-at-pos)))
    ad-do-it))
(ad-activate 'linum-update)

; Enable line numbering
(global-linum-mode t)


;; ----------
;; Evil Mode
;; ----------

; Enable Evil (vim) mode
(evil-mode 1)

; Set evil's mapleader key to comma
(evil-leader/set-leader ",")

(evil-leader/set-key
  "r"       'rainbow-delimiters-mode ; Map rainbow parens mode to <leader>r
  "c <SPC>" 'evilnc-comment-or-uncomment-lines ; Toggle line comment
  "vs"      'split-window-right
  "hs"      'split-window-below
  "w"       'next-multiframe-window)


;; ----------
;; Other Stuff
;; ----------

; Enable flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
