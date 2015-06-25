;;; ndhoule-ace.el --- Ace Jump settings
;;
;;; Commentary:
;;
;; All Ace Jump settings go in this file.
;;
;;; Code:

;; FIXME: This is broken.
(with-eval-after-load "evil"
  (define-key evil-normal-state-map (kbd "SPC") 'evil-ace-jump-char-mode))

(provide 'ndhoule-ace)
;;; ndhoule-ace.el ends here
