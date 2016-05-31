(require-package 'emacs-eclim)
;;; enable the eclim
(require 'eclim)
(global-eclim-mode)

;; regular auto-complete initialization
(require 'auto-complete-config)
(ac-config-default)

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)
(setq eclim-executable "/Applications/Eclipse.app/Contents/Eclipse/eclim")
(provide 'init-eclim)
