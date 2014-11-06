;;; ndhoule-emmet.el --- Settings for Emmet mode.

;;; Commentary:
;;
;; Settings for Emmet mode, a markup/CSS workflow helper.
;;
;; For more info, see:
;;   https://github.com/smihica/emmet-mode
;;   http://emmet.io/

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;;; Dependencies ;;;
;;;;;;;;;;;;;;;;;;;;

(require-package 'emmet-mode)

;;;;;;;;;;;;;
;;; Hooks ;;;
;;;;;;;;;;;;;

(add-hook 'emmet-mode-hook (lambda ()
                             (setq emmet-indentation 2)))

;; TODO: Generalize this into a list of compatible modes and a setup function
(add-hook 'web-mode-hook        'emmet-mode)
(add-hook 'sgml-mode-hook       'emmet-mode)
(add-hook 'css-mode-hook        'emmet-mode)
(add-hook 'less-mode-hook       'emmet-mode)
(add-hook 'sass-mode-hook       'emmet-mode)
(add-hook 'handlebars-mode-hook 'emmet-mode)

;;;;;;;;;;;;;;
;;; Export ;;;
;;;;;;;;;;;;;;

(provide 'ndhoule-emmet)
;;; ndhoule-emmet.el ends here
