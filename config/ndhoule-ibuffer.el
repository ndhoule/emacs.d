;;; ndhoule-ibuffer.el --- ibuffer-related settings

;;; Commentary:
;;
;; All code related to ibuffer goes in here.

;;; Code:

(setq ibuffer-expert t)
(setq ibuffer-show-empty-filter-groups nil)
(setq ibuffer-jump-offer-only-visible-buffers t)
(setq ibuffer-maybe-show-predicates '("^\\*.*\\*$"))
(setq ibuffer-never-show-predicates '("^ "))


(provide 'ndhoule-ibuffer)
;;; ndhoule-ibuffer.el ends here
