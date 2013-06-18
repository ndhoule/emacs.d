;;; ndhoule.el --- Entry point for personal customizations
;;
;;; Commentary:
;;
;;; Code:

(defvar ndhoule-packages
  '(starter-kit
    starter-kit-lisp
    starter-kit-bindings

    auto-indent-mode
    evil
    evil-leader
    evil-nerd-commenter
    flycheck
    fill-column-indicator
    magit
    paredit
    rainbow-delimiters
    smooth-scrolling

    ;; Major modes
    autopair
    coffee-mode
    clojure-mode
    css-mode
    csv-mode
    git-commit-mode
    gitconfig-mode
    gitignore-mode
    haml-mode
    jade-mode
    js2-mode
    json-mode
    less-css-mode
    markdown-mode
    mustache-mode
    nginx-mode
    python-mode
    requirejs-mode
    ruby-mode
    sass-mode
    yaml-mode

    ;; Themes
    solarized-theme
    monokai-theme)
    "A list of packages that should be present at launch.")

(when (not package-archive-contents)
    (package-refresh-contents))

(dolist (p ndhoule-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(defvar ndhoule/standard-settings '(ndhoule-buffer
                                    ndhoule-color
                                    ndhoule-defuns
                                    ndhoule-evil
                                    ndhoule-flycheck
                                    ndhoule-general
                                    ndhoule-js
                                    ndhoule-ruby
                                    ndhoule-whitespace)
  "A list of personal config files to load at startup.")

(mapc #'require ndhoule/standard-settings)

(provide 'ndhoule-init)
;;; ndhoule.el ends here
