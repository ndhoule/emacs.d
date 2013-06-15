;;; ndhoule-buffer.el - ibuffer-related settings
;;
;;; Discussion:
;;
;; Put all code related to buffers/ibuffer in here.
;;
;;; Code:

(setq ibuffer-expert t)
(setq ibuffer-show-empty-filter-groups nil)
(setq ibuffer-jump-offer-only-visible-buffers t)
(setq ibuffer-maybe-show-predicates '("^\\*.*\\*$"))
(setq ibuffer-never-show-predicates '("^ "))

(provide 'ndhoule-buffer)
