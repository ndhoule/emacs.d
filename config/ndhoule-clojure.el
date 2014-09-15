;;; ndhoule-speedbar.el --- Clojure settings

;;; Commentary:
;;
;; Clojure-related settings go in here.

;;; Code:

(require-package 'clojure-mode)

(add-hook 'clojure-mode-hook 'evil-paredit-mode)

(provide 'ndhoule-clojure)
;;; ndhoule-clojure.el ends here
