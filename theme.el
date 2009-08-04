;(load "~/.emacs.d/themes/all_hallows_eve")
(load "~/.emacs.d/themes/railscasts")

(require 'color-theme)
(setq color-theme-is-global t)

(color-theme-railscasts)

; highlight current line
(vendor 'highlight-current-line)
(custom-set-variables
 '(highlight-current-line-globally t nil (highlight-current-line)))

(custom-set-faces
 '(highlight-current-line-face ((t (:background "#333333")))))

                                        ; good: 4f2f42
                                        ; midnight blue
                                        ; saddle brown
(cond (window-system
       (custom-set-faces
        '(highlight-current-line-face ((t (:background "#333333")))))))

; font
(require 'carbon-font)
(fixed-width-set-default-fontset "-apple-inconsolata-medium-r-normal--14-*-*-*-*-*-iso10646-1")

(provide 'theme)
