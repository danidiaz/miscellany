;; https://github.com/emacs-evil/evil
;; https://evil.readthedocs.io/en/latest/overview.html#installation-via-package-el
;; https://melpa.org/#/getting-started
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
  ;; and `package-pinned-packages`. Most users will not need or want to do this.
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  )

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; https://stackoverflow.com/questions/5052088/what-is-custom-set-variables-and-faces-in-my-emacs
;; https://emacs.stackexchange.com/questions/33403/customize-creates-custom-set-faces-unintentionally
;; https://emacs.stackexchange.com/questions/18932/stop-emacs-asking-if-a-theme-is-safe
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("81c549a440618c9a6c679d82e500fae0c88d0fedefcd4207cf1da47f913e3972" "036f315d6ae53c9142e0c8fb58e066445930f6d8e11a6b9ab583bf93b76dbbf5" default)))
 '(package-selected-packages (quote (evil)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 143 :width normal)))))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
;; https://emacsthemes.com/themes/desert-theme.html
;; https://github.com/bbatsov/zenburn-emacs
;;  
;; (load-theme 'dracula t)

(setq inhibit-startup-screen t)

;; https://proofgeneral.github.io/
;; As explained in the MELPA documentation, updating all MELPA packages in one go is as easy as typing M-x package-list-packages RET then r (refresh the package list), U(mark Upgradable packages), and x (execute the installs and deletions).
;; Basic script management
;; http://proofgeneral.inf.ed.ac.uk/htmlshow.php?title=Proof+General+user+manual&file=releases%2FProofGeneral%2Fdoc%2FProofGeneral%2FProofGeneral_3.html#Basic-Script-Management
(load "C:/Users/ESDPC/AppData/Roaming/.emacs.d/lisp/PG/generic/proof-site.el")
(global-set-key (kbd "C-c RET") 'proof-goto-point) ;; maybe only useful for Coq? Overriden in agda-mode.

(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; https://agda.readthedocs.io/en/v2.6.1/tools/emacs-mode.html
;;
;; C-c C-a		agda2-auto-maybe-all
;; C-c C-b		agda2-previous-goal
;; C-c C-c		agda2-make-case
;; C-c C-d		agda2-infer-type-maybe-toplevel
;; C-c C-e		agda2-show-context
;; C-c C-f		agda2-next-goal
;; C-c C-h		agda2-helper-function-type
;; C-c C-l		agda2-load
;; C-c RET		agda2-elaborate-give
;; C-c C-n		agda2-compute-normalised-maybe-toplevel
;; C-c C-o		agda2-module-contents-maybe-toplevel
;; C-c C-r		agda2-refine
;; C-c C-s		agda2-solve-maybe-all
;; C-c C-t		agda2-goal-type
;; C-c C-w		agda2-why-in-scope-maybe-toplevel
;; C-c C-x		Prefix Command
;; C-c C-z		agda2-search-about-toplevel
;; C-c C-SPC	agda2-give
;; C-c C-,		agda2-goal-and-context
;; C-c C-.		agda2-goal-and-context-and-inferred
;; C-c C-;		agda2-goal-and-context-and-checked
;; C-c C-=		agda2-show-constraints
;; C-c C-?		agda2-show-goals
;; 
;; C-c C-x C-a	agda2-abort
;; C-c C-x C-c	agda2-compile
;; C-c C-x C-d	agda2-remove-annotations
;; C-c C-x C-h	agda2-display-implicit-arguments
;; C-c C-x C-l	agda2-load
;; C-c C-x C-q	agda2-quit
;; C-c C-x C-r	agda2-restart
;; C-c C-x C-s	agda2-set-program-version
;; C-c C-x ESC	Prefix Command
;; 
;; C-c C-x M-;	agda2-comment-dwim-rest-of-buffer
(load-file (let ((coding-system-for-read 'utf-8))
             (shell-command-to-string "agda-mode locate")))

(setq visible-bell 1)
(setq inhibit-compacting-font-caches 1)

(tool-bar-mode -1)

(require 'evil)
(evil-mode 1)
