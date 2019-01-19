
;(shell)
;(require 'package)
;(require 'ido)
;(package-initialize)
;(global-set-key (kbd "C-,") 'backward-kill-word)
;(global-set-key "\C-x\C-t" 'kill-region)
;(global-set-key "\M-h" 'left-char)
;(global-set-key "\M-n" 'right-char)
;(global-set-key "\M-c" 'previous-line)
;(global-set-key "\M-t" 'next-line)
;(global-set-key "\M-g" 'backward-word)
;(global-set-key "\M-r" 'forward-word)
;(global-set-key "\M-s" 'isearch-forward)
;(global-set-key "\C-s" 'isearch-backward)
;(set-face-attribute 'default nil :height 80)
;(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
;(setq-default indent-tabs-mode nil)
;(setq default-directory "C:/Users/Daniel")
;(setq tab-width 4)
;(ido-mode t)
;;;(add-hook 'haskell-mode-hook 'haskell-indentation-mode)
;;; (autoload 'ghc-init "ghc" nil t)
;; (autoload 'ghc-debug "ghc" nil t)
;; (add-hook 'haskell-mode-hook (lambda () (ghc-init)))
;; (eval-after-load "ghc-mode"
;;  '(define-key minor-mode-map (kbd "M-n") 'right-char))
;; (eval-after-load "ghc-mode"
;;  '(define-key minor-mode-map (kbd "M-c") 'previous-line))
(package-initialize)t
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" default)))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa-stable.milkbox.net/packages/")))))
;
;(autoload 'ledger-mode "ledger-mode" "A major mode for Ledger" t)
;(add-to-list 'load-path
;             (expand-file-name "./ledger-mode-master/"))
;(add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))
;(package-refresh-contents)
;(add-hook 'haskell-mode-hook 'intero-mode)
;(set-face-font 'default "-unknown-DejaVu Sans Mono-normal-normal-normal-*-12-*-*-*-m-0-iso10646-1")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'org)

(org-babel-do-load-languages

'org-babel-load-languages

'((emacs-lisp . t)))

(org-babel-load-file

(expand-file-name "emacs-init.org"

                                 "~/.emacs.d"))
;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
