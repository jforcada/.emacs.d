;; init.el
;; Author: Jaime Forcada Balaguer - jforcada
;; Email: jaime.forcada.balaguer@gmail.com

;; TODO
;; - Hidding the welcome screen on startup
;; - Scale text with C-+ C--
;; - Add hook to couple symbols per major mode
;; - Mark vertical line for char limit
;; - Customizable indentation
;; - Don't activate mark when caps lock
;; - Pair tags in html mode
;; - Full screen, text centered mode

;; Define the directories to load resources from
(defvar emacs.d-dir (file-name-directory load-file-name))
(add-to-list 'load-path (concat emacs.d-dir "./common"))
(add-to-list 'load-path (concat emacs.d-dir "./themes"))
(add-to-list 'custom-theme-load-path (concat emacs.d-dir "./themes"))

;; Assure that special input (like accent marks) works
(require 'iso-transl)

;; Set up keybindings
(require 'generic-key-bindings)
(add-global-keybinding-pair-paren)
(add-global-keybinding-pair-curly-brace)
(add-global-keybinding-pair-double-quote)

;; Set up solarized theme
(custom-set-variables
 '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces)
(load-theme 'solarized-dark)

;; Activate generic ui configuration
(require 'ui-config)
