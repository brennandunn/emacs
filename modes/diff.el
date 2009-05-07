(setq auto-mode-alist (cons '("COMMIT_EDITMSG$" . diff-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.patch$" . diff-mode))
(add-to-list 'auto-mode-alist '("\\.diff$" . diff-mode))
