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

(use-package flx-ido
  :ensure t
  :defer t
  :config
  (flx-ido-mode 1))

(use-package ido-complete-space-or-hyphen
  :ensure t
  :defer t)

(use-package ido-hacks
  :ensure t
  :defer t)

(use-package ido-completing-read+
  :ensure t
  :defer t
  :config
  (ido-ubiquitous-mode 1))

(use-package ido-vertical-mode
  :ensure t
  :defer t
  :config
  (ido-vertical-mode 1)
  (setq ido-use-faces nil))

(use-package ido
  :ensure t
  :config
  (ido-mode 1)
  (ido-everywhere 1)

  ;; TODO: Fix this
  (require 'flx-ido)
  (require 'ido-complete-space-or-hyphen)
  (require 'ido-completing-read+)
  (require 'ido-hacks)
  (require 'ido-vertical-mode)

  ;; TODO: Break into list and map
  (add-to-list 'ido-ignore-directories "node_modules"))

(provide 'ndhoule-ido)
;;; ndhoule-ido.el ends here
