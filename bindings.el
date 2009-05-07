; general
(global-set-key (kbd "C-x g") 'egg-status)

; set mark (C-SPC conflicts with LaunchBar)
(global-set-key (kbd "C-q") 'set-mark-command)

; full screen when using carbon
(global-set-key (kbd "M-n") 'mac-toggle-max-window)

; anything + proel
(vendor 'anything)
(vendor 'anything-config)
(vendor 'fuzzy-match)
(vendor 'proel)
(grep-compute-defaults)
(setq anything-sources '(anything-c-source-buffers+
			 proel-anything-current-project-files
			 anything-c-source-locate
			 anything-c-source-recentf
			 proel-anything-projects
			 anything-c-source-org-headline
			 anything-c-source-buffer-not-found))

; keybindings for a + p
(global-set-key (kbd "C-c C-d") 'anything)
(global-set-key (kbd "C-c C-f") 'proel-grep-in-project)

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
