(when window-system
  (mouse-wheel-mode t)
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (blink-cursor-mode -1))

; no splash screen
(setq inhibit-startup-screen t)

; hide menubar
(menu-bar-mode -1)

; save recent files
(recentf-mode 1)

; show column number
(column-number-mode 1)

; show line numbers
(vendor 'linum)
(global-linum-mode 1)
(setq linum-format "%3d ")

; disable auto-save files (#foo#)
(setq auto-save-default nil)

; disable backup files (foo~)
(setq backup-inhibited t)

; no bell
(setq ring-bell-function 'ignore)

; show extra whitespace
(setq show-trailing-whitespace t)

; delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; ensure last line is a return
(setq require-final-newline t)

; set encoding
(prefer-coding-system 'utf-8)

; set computer
(if (equal system-name "Brennan-MBP.local")
    (setq system-macbook-pro 't)
  (setq system-macbook-pro nil))

(provide 'global)
