(require-package 'jade-mode)
(require-package 'sws-mode)
(require 'jade-mode)

(require 'sws-mode)

(add-to-list 'auto-mode-alist '("\\.styl\\'" . sws-mode))

(provide 'init-jade)
