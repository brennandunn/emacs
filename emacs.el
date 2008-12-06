(add-to-list 'load-path "~/.emacs.d/vendor")

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(load "~/.emacs.d/global")
(load "~/.emacs.d/defuns")
(load "~/.emacs.d/bindings")
(load "~/.emacs.d/modes")
(load "~/.emacs.d/theme")
(load "~/.emacs.d/dired")
(load "~/.emacs.d/shell")

(vendor 'cheat)
(vendor 'gist)
(vendor 'textmate)
(textmate-mode)
