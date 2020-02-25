;;; +bindings.el -*- lexical-binding: t; -*-

(map!
 (:after helm-gtags
   :map helm-gtags-mode-map
   "C-c g d"       #'helm-gtags-dwim
   "C-c g r"       #'helm-gtags-find-rtag
   "C-c g g"       #'helm-gtags-find-pattern
   "C-c g t" 		#'helm-gtags-tags-in-this-function
   "C-c g a"       #'helm-gtags-find-tag
   "C-c g x"       #'helm-gtags-pop-stack
   "C-j" 			#'helm-gtags-select
   "C-c <" 		#'helm-gtags-previous-history
   "C-c >" 		#'helm-gtags-next-history
   )
)
