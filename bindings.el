; git (egg)
(global-set-key (kbd "C-x g") 'egg-status)
(global-set-key (kbd "C-x C-g") 'egg-file-toggle-blame-mode)

; navigate tabs
(global-set-key [M-left] 'tabbar-backward)
(global-set-key [M-right] 'tabbar-forward)
(global-set-key [M-up] 'kill-buffer-and-window)
(global-set-key [M-down] 'kill-this-buffer)

; sync kill ring with os x clipboard
(global-set-key (kbd "C-w") 'clipboard-kill-region)
(global-set-key (kbd "M-w") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-y") 'clipboard-yank)

; set mark (C-SPC conflicts with LaunchBar)
(global-set-key (kbd "C-q") 'set-mark-command)

; full screen when using carbon
(global-set-key "\M-\r" 'mac-toggle-max-window)

; jump to next ^$ (newline)
(global-set-key (kbd "C-c v") 'go-to-newline)

; anything + proel
(vendor 'anything)
(vendor 'anything-config)
;(vendor 'anything-rcodetools)
(vendor 'fuzzy-match)
(vendor 'anything-match-plugin)
(vendor 'proel)
;(setq rct-get-all-methods-command "PAGER=cat fri -l")
(grep-compute-defaults)
(setq anything-sources '(anything-c-source-buffers+
			 anything-c-source-files-in-current-dir
			 proel-anything-current-project-files
			 anything-c-source-locate
			 anything-c-source-recentf
			 anything-c-source-org-headline
			 anything-c-source-buffer-not-found))
;(define-key anything-map (kbd "C-c C-z") 'anything-execute-persistent-action)

; keybindings for a + p
(global-set-key (kbd "C-c C-d") 'anything)
(global-set-key (kbd "C-c C-f") 'proel-grep-in-project)

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
