;; in new minos, built from 12/28/2003 28.2 source

;; -----------------------------------------------------------------------------
;; general config holding area
;; -----------------------------------------------------------------------------

(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
;(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
(setq dictionary-server "dict.org")
(setq user-full-name "David Smith")

;; -----------------------------------------------------------------------------
;; configure package
;; -----------------------------------------------------------------------------

(require 'package)
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; -----------------------------------------------------------------------------
;; configure use-package
;; -----------------------------------------------------------------------------

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))

;; -----------------------------------------------------------------------------
;; configure defaults
;; -----------------------------------------------------------------------------

; (menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t
      confirm-nonexistent-file-or-buffer nil
      visible-bell 1
      sentence-end-double-space nil)
(fset 'yes-or-no-p 'y-or-n-p)
(column-number-mode 1)
(display-time-mode)
(delete-selection-mode t)
(setq initial-frame-alist
      '(
	(width . 102) ; character
	(height . 53) ; lines
	))
(setq default-frame-alist
      '(
	(width . 102) ; character
	(height . 55) ; lines
	))

;; -----------------------------------------------------------------------------
;; configure recent
;; -----------------------------------------------------------------------------

(use-package recentf
  :config
  (add-to-list 'recentf-exclude "\\elpa")
  (recentf-mode 1) ;;was t, set to 1 20220225 per systemcrafters
  (setq recentf-max-saved-items 50)
  (global-set-key (kbd "C-x f") 'recentf-open-files)
  (global-set-key (kbd "C-x C-r") 'ido-recentf-open))

;; -----------------------------------------------------------------------------
;; configure backups
;; -----------------------------------------------------------------------------

(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

;; -----------------------------------------------------------------------------
;; configure themes
;; -----------------------------------------------------------------------------

(use-package emacs
  :init
  (set-face-attribute 'default nil :family "DejaVu Sans Mono" :height 115)
  (set-face-attribute 'variable-pitch nil :family "DejaVu Serif" :height 1.2)
  (set-face-attribute 'fixed-pitch nil :family "DejaVu Sans Mono" :height 1.0)
  :config
  (load-theme 'modus-operandi)
  :bind ("<f5>" . modus-themes-toggle))

;; -----------------------------------------------------------------------------   
;; always use UTF-8
;; -----------------------------------------------------------------------------

(set-charset-priority 'unicode)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))

;; -----------------------------------------------------------------------------
;; mail stuff
;; configure mu4e
;; -----------------------------------------------------------------------------

(require 'mu4e)
(setq
 mu4e-sent-folder "/sent"
 mu4e-drafts-folder "/drafts"
 mu4e-trash-folder "/trash"
 mu4e-refile-folder "/archive"
 mu4e-get-mail-command "offlineimap"
 mu4e-update-interval 600
 mail-user-agent 'mu4e-user-agent
 mu4e-html2test-command 'mu4e-shr2text
 mu4e-view-show-images t)

;; -----------------------------------------------------------------------------
;; configure elfeed
;; -----------------------------------------------------------------------------

(load "~/.emacs.d/elfeed.el")

;; -----------------------------------------------------------------------------
;; configure org and org-related
;; -----------------------------------------------------------------------------

(use-package org
  :init
  (setq org-directory "~/data/org")
  :config
  (setq org-startup-truncated nil)
  (setq org-export-with-smart-quotes t)
  (setq org-indent-indentation-per-level 1)
  (setq org-insert-heading-respect-content t)
  (setq org-adapt-indentation nil)
  (setq org-todo-keywords
	'((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE"))))

;; -----------------------------------------------------------------------------
;; configure org-capture
;; -----------------------------------------------------------------------------
  
  (setq org-default-notes-file (concat org-directory "/data/org/inbox.org"))
  (setq org-capture-templates
	'(("t" "Todo" entry (file+headline "~/data/org/inbox.org" "Tasks"))
	  ("j" "Journal" entry (file+datetree "~/data/org/inbox.org")
	   "* %?\nEntered on %U\n %i\n %a")
          ("b" "Bookmark" entry (file+headline "~/data/org/notes.org" "Bookmarks")
	   "* %?\n:PROPERTIES:\n:CREATED: %U\n:END:\n\n" :empty-lines 1)
	  ))

;; -----------------------------------------------------------------------------
;; Configuring org-protocol
;; -----------------------------------------------------------------------------

;(use-package org-protocol)

;; -----------------------------------------------------------------------------
;; configure org-journal
;; -----------------------------------------------------------------------------

(require 'org-journal)
  (setq org-journal-prefix-key "C-c j ")
  (setq org-journal-dir "~/data/org/journal/"
	org-journal-file-type 'monthly)

;; -----------------------------------------------------------------------------
;; configure calendar and diary
;; -----------------------------------------------------------------------------
(require 'calendar)

(setq calendar-latitude 39.381266
      calendar-longitude -97.922211
      calendar-location-name "Oakland Mills")

(setq calendar-week-start-day 0
      calendar-standard-time-zone-name "-0500"
      calendar-daylight-time-zone-name "-0600")

(setq diary-display-function #'diary-fancy-display)

;; Prevent Org from interfering with my key bindings.
(remove-hook 'calendar-mode-hook #'org--setup-calendar-bindings)

(let ((map calendar-mode-map))
  (define-key map (kbd "s") #'calendar-sunrise-sunset)
  (define-key map (kbd "l") #'lunar-phases)
  (define-key map (kbd "i") nil) ; Org sets this, much to my chagrin (see `remove-hook' above)
  (define-key map (kbd "i a") #'diary-insert-anniversary-entry)
  (define-key map (kbd "i b") #'diary-insert-block-entry)
  (define-key map (kbd "i c") #'diary-insert-cyclic-entry)
  (define-key map (kbd "i d") #'diary-insert-entry) ; for current "day"
  (define-key map (kbd "i i") #'diary-insert-entry) ; most common action, easier to type
  (define-key map (kbd "i m") #'diary-insert-monthly-entry)
  (define-key map (kbd "i w") #'diary-insert-weekly-entry)
  (define-key map (kbd "i y") #'diary-insert-yearly-entry)
  (define-key map (kbd "M-n") #'calendar-forward-month)
  (define-key map (kbd "M-p") #'calendar-backward-month))

(setq holiday-islamic-holidays nil
      holiday-oriental-holidays nil
      holiday-bahai-holidays nil)

;; -----------------------------------------------------------------------------
;; configure org-static-blog
;; -----------------------------------------------------------------------------

(use-package org-static-blog)

(load "~/.emacs.d/blog.el")

;; -----------------------------------------------------------------------------
;; configure er-sudo-edit
;; -----------------------------------------------------------------------------

(defun er-sudo-edit (&optional arg)
  "Edit currently visited file as root.

With a prefix ARG prompt for a file to visit.
Will also prompt for a file to visit if current
buffer is not visiting a file."
  (interactive "P")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:"
                         (ido-read-file-name "Find file(as root): ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

(global-set-key (kbd "C-x C-r") #'er-sudo-edit)

;; -----------------------------------------------------------------------------
;; configure typopunct
;; -----------------------------------------------------------------------------

(require 'typopunct)
(typopunct-change-language 'english t)

(add-hook 'markdown-mode-hook 'my-markdown-init)
(defun my-markdown-init ()
  (require 'typopunct)
  (typopunct-change-language 'english)
  (typopunct-mode 1))

(add-hook 'org-mode-hook 'my-org-init)
(defun my-org-init ()
  (require 'typopunct)
  (typopunct-change-language 'english)
  (typopunct-mode 1))

;; -----------------------------------------------------------------------------
;; custom - hands off!
;; -----------------------------------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(org-journal))
 '(warning-suppress-types '(((package reinitialization)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
