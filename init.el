(menu-bar-mode -1) ; hide the menu bar

(electric-pair-mode 1) ; complete bracket, parenthesis, quotes, etc.
(setq column-number-mode t) ; show column number in minibuffer
(setq-default indent-tabs-mode nil) ; indent with spaces
(global-linum-mode 1) ; always show line numbers

(setq linum-format "%3d ") ; add a space after the numbers in the left margin
(setq show-paren-delay 0) ; show matching characters immediately, without delay
(show-paren-mode 1) ; enable highlighting of matching parenthesis, brackets, etc.
(setq show-paren-style 'expression) ; hightlight entire expression

(require 'paren)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-foreground 'show-paren-match "white")
(set-face-attribute 'show-paren-match nil :weight 'bold)

;; Enable Monokai theme...
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-to-list 'load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

