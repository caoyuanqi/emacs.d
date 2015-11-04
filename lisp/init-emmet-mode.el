(require-package 'emmet-mode)
(require-package 'ac-emmet)
(require 'emmet-mode)
(require 'ac-emmet)
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'sgml-mode-hook 'ac-emmet-html-setup)
(add-hook 'css-mode-hook 'ac-emmet-css-setup)
(provide 'init-emmet-mode)
