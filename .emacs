
;;; Install mouse wheel for scrolling

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(mwheel-install)

;;; Turn off beeping
(setq visible-bell t)

;;; Turn off any startup messages
(setq inhibit-startup-message 0)
(setq inhibit-scratch-message 0)

;;; set the shell
(setq shell-file-name "bash")
(setq shell-command-switch "-ic")

;;; Add the default themes path
(add-to-list
 'custom-theme-load-path "~/.emacs.d/themes/")

;;; Go Mode
(add-to-list 'load-path "~/.emacs.d/go-mode")
(require 'go-mode-autoloads)
(add-hook 'before-save-hook #'gofmt-before-save)

;;; Protobuf Mode
(add-to-list 'load-path "~/.emacs.d/protobuf-mode")
(require 'protobuf-mode)
(setq auto-mode-alist  (cons '(".proto$" . protobuf-mode) auto-mode-alist))


(add-to-list 'load-path "~/.emacs.d/markdown-mode")
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;;; Turn off annoying cordump on tooltip "feature" 
(setq x-gtk-use-system-tooltips nil)

;;; Insert spaces instead of tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;;; Line numbers and column numbers
(column-number-mode t)
(line-number-mode t)
(global-linum-mode t)

;;; Auto Refresh Buffer
(global-auto-revert-mode t)

;;; Add newline in the end of the file
(setq require-final-newline t)

;;; Prevent the creation of backup files
(setq make-backup-files nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(add-to-list (quote custom-theme-load-path) t)
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
	("f0ca9740c82208c1d3446d47947d079e6eba4e3f4182c1779184ca4b0da95e88" "d65ae132270f07d85ff56b2f1dbcb775f9dc17528f0df190018a4f83f44067c6" "d409bcd828a041ca8c28433e26d1f8a8e2f0c29c12c861db239845f715a9ea97" default)))
 '(indent-tabs-mode t)
 '(load-home-init-file t t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#272822" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

(setq c-basic-offset 4) ;; default comments at 4 spaces
(c-set-offset 'innamespace 0) ;; namespaces shouldn't cause indentation
(show-paren-mode t) ;; show matching parenthesis
(c-set-offset 'access-label -2) ;; private, public etc. indent at two spaces

;; load headers files .h as C++ mode not c
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode)) ;; treat .h as C++ no C
