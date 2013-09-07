;;; ndhoule-java.el -- Java settings

;;; Commentary:
;;
;; All Java settings go in this file.

;;; Code:

(autoload 'jde-mode "jde" "JDE mode" t)

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
