; for loading libraries in from the vendor directory
(defun vendor (library)
  (let* ((file (symbol-name library))
         (normal (concat "~/.emacs.d/vendor/" file))
         (suffix (concat normal ".el")))
    (cond
     ((file-directory-p normal)
      (add-to-list 'load-path normal)
      (require library))
     ((file-directory-p suffix)
      (add-to-list 'load-path suffix)
      (require library))
     ((file-exists-p suffix)
      (require library)))))

(defun mac-toggle-max-window ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                           'fullboth)))

(defun recentf-ido-find-file ()
  "Find a recent file using ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))

(defun tabify-buffer ()
  (interactive)
  (tabify (point-min) (point-max)))

(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
  (interactive)
  (indent-buffer)
  (untabify-buffer)
  (delete-trailing-whitespace))

(provide 'defuns)
