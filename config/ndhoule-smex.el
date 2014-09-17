;;; ndhoule-smex.el --- smex-mode settings

;;; Commentary:
;;
;; smex-mode settings go in here.
;;
;; Portions lifted from:
;; https://github.com/technomancy/emacs-starter-kit
;; https://github.com/magnars/.emacs.d/blob/master/setup-ido.el

;;; Code:

(require-package 'smex)

(setq smex-save-file (expand-file-name ".smex-items" user-emacs-directory))
(smex-initialize)

;; Replace M-x with Smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)


(provide 'ndhoule-smex)
;;; ndhoule-smex.el ends here
