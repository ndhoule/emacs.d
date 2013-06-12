;;; ndhoule-packages.el -- Get all them sweet, sweet packages
;;
;;; Commentary:
;;
;; Add user packages in here.
;;
;;; Code:

(defvar ndhoule-packages
  '(evil
    evil-leader
    evil-nerd-commenter
    flycheck
    fill-column-indicator
    magit
    paredit
    rainbow-delimiters
    smooth-scrolling

    ; Modes
    auto-indent-mode
    autopair
    csv-mode
    gitconfig-mode
    gitignore-mode
    haml-mode
    jade-mode
    js2-mode
    less-css-mode
    mustache-mode
    nginx-mode
    rainbow-mode
    requirejs-mode
    yaml-mode

    ; Themes
    solarized-theme
    molokai-theme)
    "A list of packages that should be present at launch.")

;; Check for new packages and install them if missing
(dolist (package ndhoule-packages)
  (when (not (package-installed-p package))
    (package-install package)))

;;; ndhoule-packages.el ends here
