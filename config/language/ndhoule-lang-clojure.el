;;; ndhoule-lang-clojure.el --- Clojure settings

;;; Commentary:
;;
;; Clojure-related settings go in here.

;;; Code:

(require-package 'clojure-mode)
(require-package 'cider)
(require-package 'ac-cider)

(add-hook 'clojure-mode-hook 'evil-paredit-mode)


(provide 'ndhoule-lang-clojure)
;;; ndhoule-lang-clojure.el ends here
