;;; elpa.el -- Settings for package management

;;; Commentary:
;;
;; Settings related to ELPA/package.el.  Lifted in large part from Steve Purcell's emacs.d
;; configuration, found here:
;; <https://github.com/purcell/emacs.d/blob/master/init-elpa.el>

;;; Code:

;;;
;;; package.el
;;;

;; Find and load the correct `package.el'. When switching between Emacs 23 and
;; 24, we always use the bundled package.el in Emacs 24.
(let ((package-el-site-lisp-dir
       (expand-file-name "package" site-lisp-dir)))
  (when (and (file-directory-p package-el-site-lisp-dir)
             (> emacs-major-version 23))
    (message "Removing local package.el from load-path to avoid shadowing bundled version")
    (setq load-path (remove package-el-site-lisp-dir load-path))))

(require 'package)

;;;
;;; Package Sources
;;;

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))

;; If gpg cannot be found, signature checking will fail, so we
;; conditionally enable it according to whether gpg is available. We
;; re-run this check once $PATH has been configured
(defun ndhoule/package-maybe-enable-signatures ()
  (setq package-check-signature (when (executable-find "gpg") 'allow-unsigned)))

(ndhoule/package-maybe-enable-signatures)
(eval-after-load 'init-exec-path
  (ndhoule/package-maybe-enable-signatures))

;; On-demand installation of packages
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (message "require-package has been deprecated.")
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

;; Start package.el
(setq package-enable-at-startup nil)
(package-initialize)

;; FIXME: use-package
(require-package 'fullframe)
(fullframe list-packages quit-window)


(provide 'elpa)
;;; elpa.el ends here
