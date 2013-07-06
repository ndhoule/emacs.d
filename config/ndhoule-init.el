;;; ndhoule-init.el --- Entry point for personal customizations

;;; Commentary:
;;
;; Everything that needs to be present at startup (before anything else loads)
;; should go in here.

;;; Code:

;; Start a background server unless one is already running
(require 'server)
(unless (server-running-p)
    (server-start))

(defvar ndhoule-packages
  '(starter-kit
    starter-kit-lisp
    starter-kit-bindings

    auto-indent-mode
    diminish
    evil
    evil-leader
    evil-nerd-commenter
    evil-paredit
    flycheck
    fill-column-indicator
    git-gutter-fringe
    linum-relative
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
    js3-mode
    json-mode
    less-css-mode
    markdown-mode
    mustache-mode
    nginx-mode
    python-mode
    requirejs-mode
    ruby-mode
    sass-mode
    sws-mode
    yaml-mode

    ;; JS Skewer Mode
    slime
    slime-js
    js2-refactor

    ;; ThemesOB
    monokai-theme
    solarized-theme
    zenburn-theme)
    "A list of packages that should be present at launch.")

(when (not package-archive-contents)
    (package-refresh-contents))

(dolist (p ndhoule-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(defvar ndhoule/standard-settings '(ndhoule-buffer
                                    ndhoule-color
                                    ndhoule-css
                                    ndhoule-defuns
                                    ndhoule-evil
                                    ndhoule-ffip
                                    ndhoule-flycheck
                                    ndhoule-general
                                    ndhoule-js
                                    ndhoule-markdown
                                    ndhoule-markup
                                    ndhoule-linum
                                    ndhoule-ruby
                                    ndhoule-speedbar
                                    ndhoule-whitespace
                                    ndhoule-yasnippet)
  "A list of personal config files to load at startup.")

(defvar ndhoule/osx-settings '(ndhoule-osx)
  "A list of OS X-specific settings to load at startup.")

(mapc #'require ndhoule/standard-settings)

(when (eq system-type 'darwin)
    (mapc #'require ndhoule/osx-settings))

(add-hook 'after-init-hook
          #'(lambda ()
              (when (locate-library "slime-js")
                (require 'ndhoule-js-slime))))

(provide 'ndhoule-init)
;;; ndhoule-init.el ends here
