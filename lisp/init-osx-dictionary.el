(require-package 'osx-dictionary)
(require 'osx-dictionary)


(when *is-a-mac*
  ;; Support Chinese word
  ;; (setq osx-dictionary-use-chinese-text-segmentation t)

  ;; Choose explicitly a dictionary for searching (use the first available
  ;; dictionary in Dictionary.app if not set)
  ;; (setq osx-dictionary-dictionary-choice "Apple")
  ;; To search in more than one dictionaries
  (setq osx-dictionary-dictionary-choice (list "English" "Wikipedia"))
  ;; To search in all dictionaries
  ;; (setq osx-dictionary-dictionary-choice (osx-dictionary-get-all-dictionaries))

  ;; Key bindings
  (global-set-key (kbd "C-c d") 'osx-dictionary-search-pointer)
  (global-set-key (kbd "C-c i") 'osx-dictionary-search-input)

  ;; Work with popwin-el (https://github.com/m2ym/popwin-el)
  ;; (push "*osx-dictionary*" popwin:special-display-config)

  )


(provide 'init-osx-dictionary)
