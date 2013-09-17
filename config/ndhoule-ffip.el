;;; ndhoule-ffip.el --- Configuration for find-file-in-project

;;; Commentary:
;;
;; Some of the defaults are crazy.

;;; Code:

(require 'find-file-in-project)

;; No need to be stingy
(setq ffip-limit 4096)

;; Helper methods to create local settings
(defun ffip--create-exclude-find-options (names)
  "Generate a regex we'll pass to ffip-find-options."
  (mapconcat (lambda (name)
               (concat "-not -regex \".*" name ".*\"")) names " "))

(defun ffip-local-excludes (&rest names)
  "Given a set of names, will exclude results with those names in the path.

Example:
(ffip-local-excludes \"target\" \"overlays\")"
  (set (make-local-variable 'ffip-find-options)
       (ffip--create-exclude-find-options names)))

(defun ffip-local-patterns (&rest patterns)
  "An exhaustive list of file name patterns to look for.

Example:
(ffip-local-patterns \"*.js\" \"*.jsp\" \"*.css\")"
  (set (make-local-variable 'ffip-patterns) patterns))


;; Function to create new functions that look for a specific pattern
(defun ffip-create-pattern-file-finder (&rest patterns)
  (lexical-let ((patterns patterns))
    (lambda ()
      (interactive)
      (let ((ffip-patterns patterns))
        (find-file-in-project)))))

;; Default excludes - override with ffip-local-excludes
(setq ffip-find-options
      (ffip--create-exclude-find-options
       '(".git"
         ".meteor"
         ".svn"
         "flycheck-"
         "elpa"
         "node_modules"
         "bower_components"
         "rtd"
         "coverage"
         ".min.js")))

(provide 'ndhoule-ffip)
;;; ndhoule-ffip.el ends here
