; general
(global-set-key (kbd "C-x g") 'magit-status)

; full screen when using carbon
(global-set-key (kbd "M-n") 'mac-toggle-max-window)

; C-t alias for finding files in project
(global-set-key (kbd "C-t") 'textmate-goto-file)

; mac stuff
(global-set-key (kbd "M-s") 'save-buffer)      ; save with apple-s
(global-set-key (kbd "M-z") 'undo)             ; undo with apple-z
(global-set-key (kbd "C-x v") 'clipboard-yank)

; typical mac tab switching
(global-set-key (kbd "M-[") 'previous-buffer) ; previous buffer with apple-[
(global-set-key (kbd "M-]") 'next-buffer)     ; next buffer with apple-]

; shift-direction
(windmove-default-keybindings)

; rubyamp completion
(global-set-key (kbd "M-/") 'hippie-expand)

; recent files
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)

; unbind upcase
(global-unset-key "\C-x\C-u")

; no printing!
(global-unset-key (kbd "s-p"))

; no mailing!
(global-unset-key (kbd "C-x m"))

; don't minimize
(global-unset-key "\C-z")

(provide 'bindings)
