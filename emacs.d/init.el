; Enable line numbers
(require 'linum)
(global-linum-mode 1)
(setq linum-format "%d ")

; Enable evil VI-emulation
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

; Change font for GUI
(add-to-list 'default-frame-alist '(font . "Inconsolata-12"))

; Enable solarized theme
(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)

(eval-after-load "color-theme"
	'(progn
		(color-theme-initialize)
		(color-theme-hober)))

(defun my-color-theme-solarized-dark ()
	(interactive)
	(color-theme-solarized-dark)
	(set-face-attribute 'fringe nil :background "#073642")
	(set-face-attribute 'linum nil :background "#073642"))

(my-color-theme-solarized-dark)

; Disable GUI widgets
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
