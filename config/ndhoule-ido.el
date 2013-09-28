;;; ndhoule-ido.el -- ido mode settings

;;; Commentary:
;;
;; Settings that relate to ido mode, smex, etc.
;;
;; Portions lifted from:
;; https://github.com/technomancy/emacs-starter-kit
;; https://github.com/magnars/.emacs.d/blob/master/setup-ido.el

;;; Code:

;; Enable ido mode
(require-package 'ido)
(ido-mode t)

;; Enable flexible matching in ido-mode
(require-package 'flx-ido)
(flx-ido-mode 1)
;; Disable ido faces to see flx highlights
(setq ido-use-faces nil)

(require-package 'ido-vertical-mode)
(ido-vertical-mode)

(require-package 'ido-hacks)

(require-package 'ido-complete-space-or-hyphen)

(add-to-list 'ido-ignore-directories "node_modules")

;; Use ido everywhere
(require-package 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

;; Fix ido-ubiquitous for newer packages
(defmacro ido-ubiquitous-use-new-completing-read (cmd package)
  `(eval-after-load ,package
     '(defadvice ,cmd (around ido-ubiquitous-new activate)
        (let ((ido-ubiquitous-enable-compatibility nil))
          ad-do-it))))

;; Smex, a better M-x
(require-package 'smex)
(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)

;; Replace M-x with Smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(provide 'ndhoule-ido)
;;; ndhoule-ido.el ends here
