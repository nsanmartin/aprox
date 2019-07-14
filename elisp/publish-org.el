#!/bin/bash
":"; exec emacs -Q  --script "$0" -f main -- "$@" # -*-emacs-lisp-*-

(require 'ox-publish)
(setq basedir "~/proyectos/aprox/")
(setq org-publish-project-alist
      '(("aprox"
        :base-directory "~/proyectos/aprox/org/_posts"
        :base-extension "org"
        :publishing-directory "~/proyectos/aprox.github.io/_posts"
        :recursive t
        :publishing-function org-html-publish-to-html
        :headline-levels 4     ; Just the default for this project.
        :html-extension "html"
        :body-only t)))


(defun main ()
  (org-publish-project "aprox" t))


