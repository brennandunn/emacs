;(load "~/.emacs.d/themes/all_hallows_eve")
(load "~/.emacs.d/themes/railscasts")

(require 'color-theme)
(setq color-theme-is-global t)

(color-theme-railscasts)

; font
(require 'carbon-font)
(fixed-width-set-default-fontset "-apple-inconsolata-medium-r-normal--14-*-*-*-*-*-iso10646-1")

(provide 'theme)
