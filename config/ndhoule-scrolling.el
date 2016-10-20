;;; ndhoule-scrolling.el --- Scroll-related settings
;;
;;; Commentary:
;;
;; Settings related to scrolling go in here.
;;
;;; Code:

(use-package smooth-scrolling
  :ensure t
  :config
  ;; Disable scroll bars
  (scroll-bar-mode -1)
  ;; Prevent scrolling from jumping half-pages at a time
  (setq smooth-scroll-margin 5))

(provide 'ndhoule-scrolling)
;;; ndhoule-scrolling.el ends here
