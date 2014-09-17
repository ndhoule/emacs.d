;;; ndhoule-speedbar.el --- Clojure settings

;;; Commentary:
;;
;; Clojure-related settings go in here.

;;; Code:

(require-package 'clojure-mode)
(require-package 'cider)
(require-package 'ac-nrepl)

(add-hook 'clojure-mode-hook 'evil-paredit-mode)

(provide 'ndhoule-clojure)
;;; ndhoule-clojure.el ends here
