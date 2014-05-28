; Change font for GUI
(add-to-list 'default-frame-alist '(font . "Inconsolata-12"))

(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)
(eval-after-load "color-theme"
	'(progn
		(color-theme-initialize)
		(color-theme-hober)))
(color-theme-solarized-dark)
