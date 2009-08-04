(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)

(global-font-lock-mode 1)
(add-hook 'org-mode-hook 'turn-on-font-lock)

(transient-mark-mode 1)
