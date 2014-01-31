;; ui-config.el
;; Author: Jaime Forcada Balaguer - jforcada
;; Email: jaime.forcada.balaguer@gmail.com

;; higlight current line
(global-hl-line-mode t)
;; deactivate cursor blink
(blink-cursor-mode 0)
;; set menu bar, to get desktop copy/paste for example
(menu-bar-mode 1)
;; remove tool bar so we get 2 more editing lines
(tool-bar-mode -1)
;; show column number in the mode line
(column-number-mode 1)

(provide 'ui-config)
