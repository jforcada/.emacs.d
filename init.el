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

;; Disable tabs indentation
(setq-default indent-tabs-mode nil)

;; Define the directories to load resources from
(defvar emacs.d-dir (file-name-directory load-file-name))
(add-to-list 'load-path (concat emacs.d-dir "./common"))
(add-to-list 'load-path (concat emacs.d-dir "./themes"))
(add-to-list 'custom-theme-load-path (concat emacs.d-dir "./themes"))
(add-to-list 'load-path (concat emacs.d-dir "./modes"))

;; Assure that special input (like accent marks) works
(require 'iso-transl)

;; Initializing modes
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.sls$" . yaml-mode))

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; Set up keybindings
(require 'generic-key-bindings)
(add-global-keybinding-pair-paren)
(add-global-keybinding-pair-curly-brace)
(add-global-keybinding-pair-double-quote)

;; Set up theme
(custom-set-variables
 '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces)
;; (load-theme 'solarized-dark)
(load-theme 'gotham t)

;; Activate generic ui configuration
(require 'ui-config)

;; Add the MELPA package repository
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; Packages initialization
(if (fboundp 'elpy-enable)
    (elpy-enable))

(if (fboundp 'js2-mode)
    (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))
