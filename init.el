; INTERFACE MODIFICTIONS
(menu-bar-mode -1) ; hide the menu bar
(electric-pair-mode 1) ; complete bracket, parenthesis, quotes, etc.
(setq column-number-mode t) ; show column number in minibuffer
(setq-default indent-tabs-mode nil) ; indent with spaces
(global-linum-mode 1) ; always show line numbers
(setq linum-format "%3d ") ; add a space after the numbers in the left margin

;;;;; SHOW GUIDE LINES
(add-to-list 'load-path "~/.emacs.d/highlight-indent-guides/")
(require 'highlight-indent-guides)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character) ; Can also use 'column and 'fill.
; Only useful if above line is set to 'column or 'fill
(set-face-background 'highlight-indent-guides-even-face "#2D2D2D")
(set-face-background 'highlight-indent-guides-odd-face "#2D2D2D")

; SHOW MATCHING CHARACTERS WITH SOME MODIFICATIONS
(setq show-paren-delay 0) ; show matching characters immediately, without delay
(show-paren-mode 1) ; enable highlighting of matching parenthesis, brackets, etc.
(setq show-paren-style 'expression) ; hightlight entire expression

(require 'paren)
(set-face-background 'show-paren-match (face-background 'default))
(set-face-foreground 'show-paren-match "white")
(set-face-attribute 'show-paren-match nil :weight 'bold)

; ENABLE ZENBURNESQUE THEME
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-to-list 'load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)
