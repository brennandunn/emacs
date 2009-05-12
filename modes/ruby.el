(require 'ruby-mode)

(setq auto-mode-alist (cons '(".rb$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Rakefile" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '(".autotest$" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '(".erb$" . rhtml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '(".rhtml$" . rhtml-mode) auto-mode-alist))

(add-hook 'ruby-mode-hook
	  '(lambda ()
	     (ruby-electric-mode t)
	     (local-set-key [return] 'ruby-reindent-then-newline-and-indent)
	     (define-key ruby-mode-map (kbd "C-c x") 'xmp)
	     ))

(defun ruby-reindent-then-newline-and-indent ()
  (interactive "*")
  (newline)
  (save-excursion
    (end-of-line 0)
    (indent-according-to-mode)
    (delete-region (point) (progn (skip-chars-backward " \t") (point))))
  (indent-according-to-mode))

(vendor 'ruby-style)
(vendor 'rinari)
