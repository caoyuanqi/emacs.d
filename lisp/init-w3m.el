(require-package 'w3m)
(require 'w3m)
(setq browse-url-browser-function 'w3m-browse-url)
(setq w3m-home-page "http://www.google.com")
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;; optional keyboard short-cut
(setq w3m-use-cookies t)
;;显示图标
(setq w3m-show-graphic-icons-in-header-line t)
(setq w3m-show-graphic-icons-in-mode-line t)
;;C-c C-p 打开，这个好用
(setq w3m-view-this-url-new-session-in-background t)

(add-hook 'w3m-fontify-after-hook 'remove-w3m-output-garbages)
(defun remove-w3m-output-garbages ()
  "去掉w3m输出的垃圾."
  (interactive)
  (let ((buffer-read-only))
    (setf (point) (point-min))
    (while (re-search-forward "[\200-\240]" nil t)
      (replace-match " "))
    (set-buffer-multibyte t))
  (set-buffer-modified-p nil))
;;; coding
(setq w3m-coding-system 'utf-8
      w3m-file-coding-system 'utf-8
      w3m-file-name-coding-system 'utf-8
      w3m-input-coding-system 'utf-8
      w3m-output-coding-system 'utf-8
      w3m-terminal-coding-system 'utf-8)
;;; change the tag
(eval-after-load 'w3m
  '(progn
     (define-key w3m-mode-map "." 'w3m-previous-buffer)
     (define-key w3m-mode-map "," 'w3m-next-buffer)))

(setq w3m-use-toolbar t  ;w3m-use-tab     nil
      w3m-key-binding 'info)

(provide 'init-w3m)
