;;; ndhoule-flycheck.el --- flycheck settings
;;
;;; Commentary:
;;
;; Settings related to flycheck.el go in here.  Much of this file lifted from
;; https://github.com/magnars/.emacs.d/blob/master/setup-flycheck.el.
;;
;;; Code:

(use-package flycheck
             :ensure t
             :diminish flycheck-mode
             :config
             (defun flycheck-handle-idle-change ()
               "Handle an expired idle time since the last change.

This is an overwritten version of the original
flycheck-handle-idle-change, which removes the forced deferred.
Timers should only trigger in between commands in a single
threaded system and the forced deferred makes errors never show
up before you execute another command."
               (flycheck-clear-idle-change-timer)
               (flycheck-buffer-automatically 'idle-change))

             (defun ndhoule/adjust-flycheck-automatic-syntax-eagerness ()
               "Adjust how often we check for errors based on if there are any.

This lets us fix any errors as quickly as possible, but in a
clean buffer we're an order of magnitude laxer about checking."
               (setq flycheck-idle-change-delay
                     (if flycheck-current-errors 0.5 5.0)))


             (setq flycheck-highlighting-mode 'symbols)
             (setq flycheck-indication-mode 'right-fringe)

             ;; Each buffer gets its own idle-change-delay because of the
             ;; buffer-sensitive adjustment above.
             (make-variable-buffer-local 'flycheck-idle-change-delay)

             ;; Remove newline checks, since they would trigger an immediate check
             ;; when we want the idle-change-delay to be in effect while editing.
             (setq flycheck-check-syntax-automatically '(save
                                                         idle-change
                                                         mode-enabled))

             ;; XXX FIXME
             (setq flycheck-checkers '(javascript-eslint))

             ;;;;;;;;;;;;;
             ;;; Hooks ;;;
             ;;;;;;;;;;;;;

             ;; Enable flycheck for programming buffers
             (add-hook 'prog-mode-hook 'global-flycheck-mode)

             (add-hook 'flycheck-after-syntax-check-hook
                       'ndhoule/adjust-flycheck-automatic-syntax-eagerness)

             ;;;;;;;;;;;;;;;;;;;
             ;;; Keybindings ;;;
             ;;;;;;;;;;;;;;;;;;;

             (with-eval-after-load "evil"
               (evil-leader/set-key
                 "en" 'flycheck-next-error
                 "ep" 'flycheck-previous-error)))

(provide 'ndhoule-flycheck)
;;; ndhoule-flycheck.el ends here
