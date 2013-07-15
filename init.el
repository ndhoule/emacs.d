;;; init.el --- Entry point for all things Emacs
;;
;;; Commentary:
;;
;; This file gets executed first.
;;
;;; Code:

;; Start a background server if one isn't already running
(require 'server)
(unless (server-running-p)
    (server-start))

;; Helpful constants for OS-specific settings
(defconst *is-a-mac* (eq system-type 'darwin))
(defconst *is-carbon-emacs* (eq window-system 'mac))
(defconst *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))

(defun add-to-loadpath (&rest dirs)
  (dolist (dir dirs load-path)
    (add-to-list 'load-path (expand-file-name dir) nil #'string=))
  "Add a list of directories to the loadpath.")

(add-to-loadpath user-emacs-directory
                 (concat user-emacs-directory "lib")
                 (concat user-emacs-directory "config"))

(require 'init-elpa)
(require 'ndhoule-init)

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#272822" "#F92672" "#A6E22E" "#FD971F" "#66D9EF" "#AE81FF" "#A1EFE4" "#F8F8F2"])
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(custom-safe-themes (quote ("3d6b08cd1b1def3cc0bc6a3909f67475e5612dba9fa98f8b842433d827af5d30" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "3c708b84612872e720796ea1b069cf3c8b3e909a2e1da04131f40e307605b7f9" default)))
 '(fci-rule-color "#171A0B")
 '(vc-annotate-background "#272822")
 '(vc-annotate-color-map (quote ((20 . "#75715E") (40 . "#49483E") (60 . "#F92672") (80 . "#FC5C94") (100 . "#FD971F") (120 . "#FEB257") (140 . "#A6E22E") (160 . "#C1F161") (180 . "#E6DB74") (200 . "#F3EA98") (220 . "#66D9EF") (240 . "#8DE6F7") (260 . "#AE81FF") (280 . "#C2A1FF") (300 . "#A1EFE4") (320 . "#BBF7EF") (340 . "#FD5FF0") (360 . "#FE87F4"))))
 '(vc-annotate-very-old-color "#FD5FF0"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
