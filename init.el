
(shell)
(require 'package)
(require 'ido)
(global-set-key (kbd "C-,") 'backward-kill-word)
(global-set-key "\C-x\C-t" 'kill-region)
(global-set-key "\M-h" 'left-char)
(global-set-key "\M-n" 'right-char)
(global-set-key "\M-c" 'previous-line)
(global-set-key "\M-t" 'next-line)
(global-set-key "\M-g" 'backward-word)
(global-set-key "\M-r" 'forward-word)
(global-set-key "\M-s" 'isearch-forward)
(global-set-key "\C-s" 'isearch-backward)
(set-face-attribute 'default nil :height 80)
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(ido-mode t)
;;(add-hook 'haskell-mode-hook 'haskell-indentation-mode)
;; (autoload 'ghc-init "ghc" nil t)
;; (autoload 'ghc-debug "ghc" nil t)
;; (add-hook 'haskell-mode-hook (lambda () (ghc-init)))
;; (eval-after-load "ghc-mode"
;;  '(define-key minor-mode-map (kbd "M-n") 'right-char))
;; (eval-after-load "ghc-mode"
;;  '(define-key minor-mode-map (kbd "M-c") 'previous-line))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa-stable.milkbox.net/packages/")))))
(when (>= emacs-major-version 24)
;;  (require 'package)
  ;;(package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa-stable.milkbox.net/packages/") t)
  )
(package-refresh-contents)
(package-install 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)
