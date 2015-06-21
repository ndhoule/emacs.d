;;; ndhoule-lang-clojure.el --- Clojure settings
;;
;;; Commentary:
;;
;; Clojure-related settings go in here.
;;
;;; Code:


(use-package ac-cider
             :defer t
             :ensure t)

(use-package cider
             :defer t
             :ensure t
             :config
             (eval-after-load 'auto-complete '(require 'ac-cider)))

(use-package clojure-mode
             :ensure t
             :mode "\\.clj\\'"
             :init
             (add-hook 'clojure-mode-hook 'evil-paredit-mode)
             :config
             (require 'cider))

(provide 'ndhoule-lang-clojure)
;;; ndhoule-lang-clojure.el ends here
