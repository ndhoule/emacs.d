;;; ndhoule-scrolling.el --- Scroll-related settings

;;; Commentary:
;;
;; Settings related to scrolling go in here.

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require-package 'smooth-scrolling)

;;;;;;;;;;;;;;;;;;;;;
;;; Configuration ;;;
;;;;;;;;;;;;;;;;;;;;;

;; Disable scroll bars
(scroll-bar-mode -1)

;; Prevent scrolling from jumping half-pages at a time
(eval-after-load 'smooth-scrolling
  '(progn (setq smooth-scroll-margin 5) nil))

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-scrolling)
;;; ndhoule-scrolling.el ends here
