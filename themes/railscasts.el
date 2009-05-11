(defun color-theme-railscasts ()
  (interactive)
  (color-theme-install
   '(color-theme-railscasts
     ((background-color . "#232323")
      (background-mode . dark)
      (cursor-color . "#5A647E")
      (foreground-color . "#E6E1DC"))
     (default ((t (nil))))
     (bold ((t (:bold t))))
     (bold-italic ((t (:italic t :bold t))))
     (font-lock-builtin-face ((t (:foreground "#D0D0FF"))))
     (font-lock-comment-face ((t (:foreground "#BC9458" :italic t))))
     (font-lock-constant-face ((t (:foreground "#6D9CBE"))))
     (font-lock-doc-string-face ((t (:foreground "red")))) ; TODO
     (font-lock-function-name-face ((t (:foreground "#FFC66D"))))
     (font-lock-keyword-face ((t (:foreground "#CC7833"))))
     (font-lock-preprocessor-face ((t (:foreground "#CC7833")))) ; TODO
     (font-lock-reference-face ((t (:foreground "red")))) ; TODO
     (font-lock-string-face ((t (:foreground "#A5C261" :background "#303324"))))
     (font-lock-type-face ((t (:foreground "white"))))
     (font-lock-variable-name-face ((t (:foreground "white"))))
     (font-lock-warning-face ((t (:foreground "red")))) ; TODO
     (tabbar-default ((t (:inherit tabbar-default-face :foreground "#6d8b99"))))
     (tabbar-button ((t (:inherit tabbar-default-face :foreground "#4a6a79" :box nil))))
     (tabbar-selected ((t (:inherit tabbar-default :foreground "white" :box nil))))
     (tabbar-unselected ((t (:inherit tabbar-default :box nil))))
     (tabbar-separator ((t (:inherit tabbar-default :foreground "#374a52"))))
     (highlight ((t (:background "red")))) ; TODO
     (italic ((t (:italic t))))
     (hl-line ((t (:background "#112233"))))
     (underline ((t (:underline t)))))))
