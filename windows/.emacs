

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; https://github.com/bbatsov/zenburn-emacs
;;  
;; (load-theme 'dracula t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 143 :width normal)))))


(setq inhibit-startup-screen t)

(load "C:/Users/ESDPC/AppData/Roaming/.emacs.d/lisp/PG/generic/proof-site.el")

(global-set-key (kbd "C-c RET") 'proof-goto-point)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(load-file (let ((coding-system-for-read 'utf-8))
             (shell-command-to-string "agda-mode locate")))

(setq visible-bell 1)
(setq inhibit-compacting-font-caches 1)
