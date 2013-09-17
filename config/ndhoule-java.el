;;; ndhoule-java.el -- Java settings

;;; Commentary:
;;
;; All Java settings go in this file.

;;; Code:

;; JDEE
(add-to-list 'load-path
             (expand-file-name "jdee/dist/jdee-2.4.2/lisp" site-lisp-dir))

(autoload 'jde-mode "jde" "JDE mode" t)

;; Autocompile Java on save
(add-hook 'jde-mode-hook
          (add-hook 'before-save-hook
                    (lambda ()
                      (jde-import-kill-extra-imports)
                      (jde-import-all)
                      (jde-import-organize))
                    nil t)
          (add-hook 'after-save-hook 'jde-compile nil t))

(setq auto-mode-alist
      (append '(("\\.java\\'" . jde-mode)) auto-mode-alist))

(provide 'ndhoule-java)
;;; ndhoule-java.el ends here
