;; https://www.gnu.org/software/emacs/manual/html_node/efaq-w32/Location-of-init-file.html

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; https://draculatheme.com/emacs/
;; https://github.com/bbatsov/zenburn-emacs
(load-theme 'dracula t)

;; https://www.emacswiki.org/emacs/AlarmBell
(setq visible-bell 1)

(setq inhibit-startup-screen t)
(load "C:/Users/ZZZZZ/.emacs.d/lisp/PG/generic/proof-site")
(global-set-key (kbd "C-c RET") 'proof-goto-point)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

 
