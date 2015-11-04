(require-package 'web-mode)
(require 'web-mode)

(defun my-web-mode-hook()
  ;; Indentation
  (emmet-mode)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-indent-style 2)

  (setq web-mode-enable-current-element-highlight t)
  (add-hook 'web-mode-hook 'my-web-mode-hook))

(provide 'init-web)
