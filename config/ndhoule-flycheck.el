;;; ndhoule-flycheck.el --- flycheck settings
;;
;;; Commentary:
;;
;; Settings related to flycheck.el go in here.  Much of this file lifted from
;; https://github.com/magnars/.emacs.d/blob/master/setup-flycheck.el.
;;
;;; Code:

(use-package flycheck-gometalinter
  :ensure t
  :init
  :config
  (with-eval-after-load "flycheck" (flycheck-gometalinter-setup)))

(use-package flycheck
  :ensure t
  :defer t
  :init
  (add-hook 'prog-mode-hook 'global-flycheck-mode)
  :config
  ;;;;;;;;;;;;;;;;;;;;;;;
  ;;; Custom Checkers ;;;
  ;;;;;;;;;;;;;;;;;;;;;;;

  ;; Add concurrency, sort options to flycheck gometalinter
  ;; TODO: Contribute this upstream
  (flycheck-def-option-var flycheck-gometalinter-concurrency "4" gometalinter
    "Maximum number of concurrent linters to run."
    :safe #'stringp)

  (flycheck-def-option-var flycheck-gometalinter-sort "none" gometalinter
    "Sort output. One of none, path, line, column, severity, message, linter."
    :safe #'stringp)

  (flycheck-define-checker gometalinter
    "A all-in-one Go linter.
See URL: `https://github.com/alecthomas/gometalinter'"
    :command ("gometalinter"
              (option-flag "--vendor" flycheck-gometalinter-vendor)
              (option-flag "--disable-all" flycheck-gometalinter-disable-all)
              (option-flag "--fast" flycheck-gometalinter-fast)
              (option-flag "--tests" flycheck-gometalinter-tests)
              (option "--concurrency=" flycheck-gometalinter-concurrency concat)
              (option "--deadline=" flycheck-gometalinter-deadline concat)
              (option "--sort=" flycheck-gometalinter-sort concat)
              (option-list "--disable=" flycheck-gometalinter-disable-linters concat)
              (option-list "--enable=" flycheck-gometalinter-enable-linters concat)
              ".")
    :error-patterns
    ((error line-start (file-name) ":" line ":"
            (optional column) ":error: " (message) line-end)
     (warning line-start (file-name) ":" line ":"
              (optional column) ":warning: " (message) line-end))
    :modes go-mode)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;; Flycheck Overrides ;;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;

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

  (setq-default flycheck-temp-prefix ".")

  ;; TODO: Good enough for now but should make this look nicer
  (setq flycheck-highlighting-mode 'symbols)
  (set-face-attribute 'flycheck-error nil :foreground "pink")

  ;; Each buffer gets its own idle-change-delay because of the
  ;; buffer-sensitive adjustment above.
  (make-variable-buffer-local 'flycheck-idle-change-delay)

  ;; Remove newline checks, since they would trigger an immediate check
  ;; when we want the idle-change-delay to be in effect while editing.
  (setq flycheck-check-syntax-automatically '(save
                                              idle-change
                                              mode-enabled))

  ;;;;;;;;;;;;;
  ;;; Hooks ;;;
  ;;;;;;;;;;;;;


  (add-hook 'flycheck-after-syntax-check-hook
            'ndhoule/adjust-flycheck-automatic-syntax-eagerness)

  ;;;;;;;;;;;;;;;;;;;
  ;;; Keybindings ;;;
  ;;;;;;;;;;;;;;;;;;;

  (with-eval-after-load "evil"
    (evil-leader/set-key
      "en" 'flycheck-next-error
      "ep" 'flycheck-previous-error))

  (setq flycheck-gometalinter-concurrency "6")
  (setq flycheck-gometalinter-sort "line")
  (setq flycheck-gometalinter-disable-all t)
  (setq flycheck-gometalinter-enable-linters
        '("deadcode"
          "golint"
          "gosimple"
          "gotype"
          "govet"
          "ineffassign"
          "staticcheck"
          "structcheck"
          "unconvert"
          "varcheck"))
  )

(provide 'ndhoule-flycheck)
;;; ndhoule-flycheck.el ends here
