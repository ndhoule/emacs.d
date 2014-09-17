;;; ndhoule-ido.el --- ido-mode settings

;;; Commentary:
;;
;; ido-mode settings go in here.
;;
;; Portions lifted from:
;; https://github.com/technomancy/emacs-starter-kit
;; https://github.com/magnars/.emacs.d/blob/master/setup-ido.el

;;; Code:

(require-package 'ido)
(require-package 'flx-ido)
(require-package 'ido-complete-space-or-hyphen)
(require-package 'ido-hacks)
(require-package 'ido-ubiquitous)
(require-package 'ido-vertical-mode)

(ido-mode t)
(flx-ido-mode 1)
(ido-ubiquitous-mode 1)
(ido-vertical-mode)

(setq ido-use-faces nil)
(add-to-list 'ido-ignore-directories "node_modules")

;; Fix ido-ubiquitous for newer packages
(defmacro ido-ubiquitous-use-new-completing-read (cmd package)
  `(eval-after-load ,package
     '(defadvice ,cmd (around ido-ubiquitous-new activate)
        (let ((ido-ubiquitous-enable-compatibility nil))
          ad-do-it))))


(provide 'ndhoule-ido)
;;; ndhoule-ido.el ends here
