;;; ndhoule-ido.el --- ido-mode settings
;;
;;; Commentary:
;;
;; ido-mode settings go in here.
;;
;; Portions lifted from:
;; - https://github.com/technomancy/emacs-starter-kit
;; - https://github.com/magnars/.emacs.d/blob/master/setup-ido.el
;;
;;; Code:

;; (use-package flx-ido
;;              :ensure t
;;              :config
;;              (flx-ido-mode 1))

;; (use-package ido-complete-space-or-hyphen
;;              :ensure t)

;; (use-package ido-hacks
;;              :defer t
;;              :ensure t)

;; (use-package ido-ubiquitous
;;              :ensure t
;;              :config
;;              (ido-ubiquitous-mode 1)

;;              ;; Fix ido-ubiquitous for newer packages
;;              (defmacro ido-ubiquitous-use-new-completing-read (cmd package)
;;                `(eval-after-load ,package
;;                   '(defadvice ,cmd (around ido-ubiquitous-new activate)
;;                      (let ((ido-ubiquitous-enable-compatibility nil))
;;                        ad-do-it)))))

;; (use-package ido-vertical-mode
;;              :ensure t
;;              :config
;;              (ido-vertical-mode))

;; (use-package ido
;;              :ensure t
;;              :config
;;              (require 'flx-ido)
;;              (require 'ido-complete-space-or-hyphen)
;;              (require 'ido-hacks)
;;              (require 'ido-ubiquitous)
;;              (require 'ido-vertical-mode)

;;              (ido-mode t)
;;              (setq ido-use-faces nil)

;;              ;; TODO: Break into list and map
;;              (add-to-list 'ido-ignore-directories "node_modules"))

(provide 'ndhoule-ido)
;;; ndhoule-ido.el ends here
