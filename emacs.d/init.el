;; Enable evil mode
(add-to-list 'load-path "~/.emacs.d/evil/")
	(require 'evil)
	(evil-mode 1)

;; Enable color theme
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'color-theme)
	(color-theme-initialize)
	(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/themes/")
	(load "~/.emacs.d/lisp/themes/solarized-theme.el")
