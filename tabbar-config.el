; tab bar stuff
(vendor 'tabbar)

(setq tabbar-buffer-groups-function
      (lambda ()
	(list "All")))
(setq tabbar-buffer-list-function
      (lambda ()
	(remove-if
	 (lambda(buffer)
	   (find (aref (buffer-name buffer) 0) " *"))
	 (buffer-list))))
(setq tabbar-separator-value '" | ")
(setq tabbar-use-images nil)
(tabbar-mode)

(provide 'tabbar-config)
