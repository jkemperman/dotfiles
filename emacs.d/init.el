(add-to-list 'load-path "color-theme")
(require 'color-theme)
(eval-after-load "color-theme"
	'(progn
		(color-theme-initialize)
		(color-theme-hober)))
(color-theme-solarized-dark)
(custom-set-faces (if (not window-system) '(default ((t (:background "nil"))))))
