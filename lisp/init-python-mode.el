(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
		("SConscript\\'" . python-mode))
              auto-mode-alist))
(require-package 'pip-requirements)
(require-package 'epc)
(require 'epcs)
(require-package 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(require-package 'python-django)
(require 'python-django)

(provide 'init-python-mode)
