#!/bin/bash
":"; exec emacs  --script "$0" -f publish-aprox -- "$@" # -*-emacs-lisp-*-

(package-initialize)
(custom-set-variables
 '(package-selected-packages (quote (org htmlize))))

(setq org-publish-project-alist
      '(("aprox"
        :base-directory "./org/_posts"
        :base-extension "org"
        :publishing-directory "./content/posts"
        :recursive t
        :publishing-function org-html-publish-to-html
        :headline-levels 4     ; Just the default for this project.
        :html-extension "html"
        :body-only t)))


(defun publish-aprox () (interactive)
       (require 'ox-publish)
       (org-publish-project "aprox" t))


