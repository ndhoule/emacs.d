;;; init.el --- Entry point for all things Emacs
;;
;;; Commentary:
;;
;; This file gets executed first.
;;
;;; Code:

(require 'package)
(add-to-list 'package-archives
               '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
               '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defun add-to-loadpath (&rest dirs)
  (dolist (dir dirs load-path)
    (add-to-list 'load-path (expand-file-name dir) nil #'string=))
  "Adds a list of directories to the loadpath.")

(add-to-loadpath "~/.emacs.d/lib"
                 "~/.emacs.d/config")

(require 'ndhoule-init)

;;; init.el ends here
