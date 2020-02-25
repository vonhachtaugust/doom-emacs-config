;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

;;; UI

(setq doom-font (font-spec :family "Fira Code Bold" :size 14)
      doom-variable-pitch-font (font-spec :family "Noto Sans" :size 14))
	  
;;; Frames/Windows
(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))

;; Basic Config
(setq backup-directory-alist `(("." . "~/.emacs-tmp/")))
(setq auto-save-file-name-transforms `((".*" "~/.emacs-tmp/" t)))

;; Spaces over tabs
(setq c-basic-indent 2)
(setq c-default-style "linux")
(setq tab-width 2)
(setq-default indent-tabs-mode nil)

(setq exec-path
      (list (concat (getenv "HOME") "/Software/global/bin")
            "/usr/local/bin/"
            "/usr/bin/"
            "/bin/"
            "/usr/sbin/"
            "/sbin/"))
(setenv "PATH" (string-join exec-path ":"))


;; Auto revert-mode. Look ma, no hands...
(global-auto-revert-mode t)

(setq
 whitespace-line-column 200
 whitespace-style
 '(face trailing lines-tail))
(global-whitespace-mode)

(setq-default shell-default-height 50)
(setq-default shell-default-position 'bottom)

;; Enable plantuml-mode for PlantUML files
(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))

;; Turn off line wrapping
(setq-default truncate-lines 1)

(add-hook 'before-save-hook 'whitespace-cleanup)

;;; Use helm-gtags with GNU Global in c-c++ mode.
(setq
	helm-gtags-ignore-case t
	helm-gtags-auto-update t
	helm-gtags-use-input-at-cursor t
	helm-gtags-pulse-at-cursor t)

(add-hook! 'c-mode-hook 	'helm-gtags-mode)
(add-hook! 'c++-mode-hook 	'helm-gtags-mode)

;;;

;;; Nyan cat progress bar is a must

(add-hook! 'c-mode-hook 	'nyan-mode)
(add-hook! 'c++-mode-hook 	'nyan-mode)

;;;

(after! neotree)
    (setq neo-theme 'icons)

(after! company
  (setq company-idle-delay 0))

(after! doom-themes
  (setq doom-neotree-file-icons t))

(load! "+bindings")
(load! "+theming")