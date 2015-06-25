;;; ndhoule-diminish.el --- Config file for diminish.el
;;
;;; Commentary:
;;
;; Reduce modeline clutter.
;;
;;; Code:

;; TODO: Move all these into `use-package' calls and remove this file

(diminish 'visual-line-mode)
(eval-after-load "button-lock" '(diminish 'button-lock-mode))
(eval-after-load "undo-tree"   '(diminish 'undo-tree-mode))
(eval-after-load "whitespace"  '(progn
                                  (diminish 'whitespace-mode)
                                  (diminish 'global-whitespace-mode)))

(provide 'ndhoule-diminish)
;;; ndhoule-diminish.el ends here
