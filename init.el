;;; init.el

; load paths
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)
(setq custom-file (concat dotfiles-dir "custom.el"))
(setq vendor-dir (concat dotfiles-dir "vendor"))
(add-to-list 'load-path vendor-dir)

(require 'cl)

; ready, set, go!
(defvar *emacs-load-start* (current-time))

(require 'elpa)
(require 'defuns)
(require 'global)
(require 'bindings)
(require 'modes)
(require 'theme)
(require 'snippets)

(vendor 'cheat)
(vendor 'far-search)
(vendor 'fuzzy-find-in-project)
(vendor 'gist)
(vendor 'magit)
(vendor 'textmate)
(vendor 'unit-test)
(vendor 'autotest)
(vendor 'egg)
(vendor 'tabbar)
(tabbar-mode)
;(textmate-mode)
(vendor 'whitespace)
(vendor 'rhtml-mode)

(load custom-file 'noerror)

; finish!
(message "Loaded in %ds"
         (destructuring-bind
             (hi lo ms)
             (current-time)
           (- (+ hi lo)
              (+ (first *emacs-load-start*)
                 (second *emacs-load-start*)))))

(provide 'init)
