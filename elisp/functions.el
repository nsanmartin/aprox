(defun draft-template (nombre)
  (format "#+begin_export html
---
layout: post
title: %s
---
<script src=\"https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML\" type=\"text/javascript\"></script>
#+end_export" nombre))

(defun name-to-filename (name)
  (replace-regexp-in-string
   "[^[:alpha:][:digit:]_-]" "" 
  (downcase (replace-regexp-in-string " " "-" name))))

(defun create-draft (nombre)
  (interactive "snombre: ")
  (let ((drafts-dir (format
                     "%s/%s"
                     (getenv "HOME")
                     "proyectos/aprox/org/_drafts")))
    (if (not (file-exists-p drafts-dir))
        (error "aprox: %s does not exists" drafts-dir)
      (let ((file-name (format "%s/%s.org"
                               drafts-dir
                               (name-to-filename nombre))))
        (find-file file-name)
        (insert (draft-template nombre))
        (newline)))))

