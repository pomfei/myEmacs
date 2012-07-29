;; The default startup text mode
(kill-this-buffer)
(setq default-major-mode 'text-mode)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; This my emacs options configured file path...
;; Loading directory of all subdirectories
(defconst my-emacs-path           "~/myEmacs/" "my emacs options configured path")
(load (concat my-emacs-path "my-subdirs"))
(my-add-subdirs-to-load-path my-emacs-path)
;;Avoid repeated loading
(require 'eval-after-load)
(require 'util)
;; operate git version control
(require 'git-emacs)

;; mini set options
(require 'misc-mini-settings)
;; set emacs window 
(require 'maxframe-settings)

(require 'yasnippet)
(require 'yasnippet-bundle)
(setq yas/root-directory "~/myEmacs/snippets")
;; Load the snippets
(yas/load-directory yas/root-directory)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Org Mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq load-path (cons "~/myEmacs/org-7.8.11/lisp" load-path))
(setq load-path (cons "~/myEmacs/org-7.8.11/contrib/lisp" load-path))

(require 'org-install)
(require 'org-publish)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook 
(lambda () (setq truncate-lines nil)))
 
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-publish-project-alist
      '(("note-org"
         :base-directory "~/org/org"
         :publishing-directory "~/org/publish"
         :base-extension "org"
         :recursive t
         :publishing-function org-publish-org-to-html
         :auto-index nil
         :index-filename "index.org"
         :index-title "index"
         :link-home "index.html"
         :section-numbers nil
         :style "<link rel=\"stylesheet\"
    href=\"./style/emacs.css\"
    type=\"text/css\"/>")
        ("note-static"
         :base-directory "~/org/org"
         :publishing-directory "~/org/publish"
         :recursive t
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|swf\\|zip\\|gz\\|txt\\|el"
         :publishing-function org-publish-attachment)
        ("note" 
         :components ("note-org" "note-static")
         :author "pomfei@nbyeam.com"
         )))
(global-set-key (kbd "<f8> p") 'org-publish)
;(setq ac-modes
;      (append ac-modes '(org-mode objc-mode jde-mode sql-mode
;                                  change-log-mode text-mode
;                                  makefile-gmake-mode makefile-bsdmake-mo
;                                  autoconf-mode makefile-automake-mode)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Cscope
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Cscope setting
;;LOAD_PATH
(add-to-list 'load-path' "~/myEmacs/")
(require 'xcscope)
;;Only start cscope when open c and c++ file
(add-hook 'c-mode-common-hook '(lambda() (require 'xcscope)))
(setq cscope-do-not-update-database t)
;;Cscope hot keys
(define-key global-map [(control f3)]  'cscope-set-initial-directory)
(define-key global-map [(control f4)]  'cscope-unset-initial-directory)
(define-key global-map [(control f5)]  'cscope-find-this-symbol)
(define-key global-map [(control f6)]  'cscope-find-global-definition)
(define-key global-map [(control f7)]  'cscope-find-global-definition-no-prompting)
(define-key global-map [(control f8)]  'cscope-pop-mark)
(define-key global-map [(control f9)]  'cscope-next-symbol)
(define-key global-map [(control f10)] 'cscope-next-file)
(define-key global-map [(control f11)] 'cscope-prev-symbol)
(define-key global-map [(control f12)] 'cscope-prev-file)
(define-key global-map [(meta f9)]     'cscope-display-buffer)
(define-key global-map [(meta f10)]    'cscope-display-buffer-toggle)

(setq-default indent-tabs-mode nil)
;;Set auto indent
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list ())

;;Set C language style
(add-hook 'c-mode-hook 'linux-c-mode)
(setq imenu-sort-function 'imenu--sort-by-name)
(defun linux-c-mode()
    (define-key c-mode-map [return] 'newline-and-indent)
    (interactive)
    (c-set-style "K&R")
    (c-toggle-hungry-state)
    (setq c-basic-offset 4)
    (imenu-add-menubar-index)
    (which-function-mode)
)
