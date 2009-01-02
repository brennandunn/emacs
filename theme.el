(load "~/.emacs.d/themes/all_hallows_eve")
(load "~/.emacs.d/themes/railscasts")

(require 'color-theme)
(setq color-theme-is-global t)

;;(if window-system
;;    (color-theme-gtk-ide)
;;  (color-theme-dark-laptop))
(color-theme-all-hallows-eve)

; font
(if system-macbook-pro
    (setq default-frame-alist '((font . "-apple-Bitstream_Vera_Sans_Mono-medium-normal-normal-Roman-18-*-*-*-*-*-fontset-auto7"))))

(provide 'theme)
