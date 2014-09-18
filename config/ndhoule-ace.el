;;; ndhoule-ace.el --- Ace Jump settings

;;; Commentary:
;;
;; All Ace Jump settings go in this file.

;;; Code:

(require-package 'ace-jump-mode)

;;
;; evil-mode keybindings
;;

(require 'ndhoule-evil)

(define-key evil-normal-state-map (kbd "SPC") 'ace-jump-mode)


(provide 'ndhoule-ace)
;;; ndhoule-ace.el ends here
