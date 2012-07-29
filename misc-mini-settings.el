;; display line number
(column-number-mode t)
(global-linum-mode 'linum-mode)
;; Don't backup
(setq backup-inhibited t)
;; Don't temp file
(setq auto-save-default nil)
;; Don't toolbar
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode -1)) 
;; recursion used minibuffer
(setq enable-recursive-minibuffers t)
;; Don't the scroll bar
(customize-set-variable 'scroll-bar-mode nil)
;; Support for external Paste
(setq x-select-enable-clipboard t)
;; enable server mode
(setq server-mode t)

;;GDB Set
(setq gdb-many-windows t)

;;Font Set
(create-fontset-from-fontset-spec
(concat
"-*-monaco-medium-r-normal--*-*-*-*-m-*-fontset-monaco,"
"chinese-gb2312:-*-simsun-medium-r-*-*-14-*-*-*-c-*-gb2312*-*,"
"mule-unicode-0100-24ff:-*-simsun-medium-r-*-*-14-*-*-*-c-*-iso10646*-*,"
"korean-ksc5601:-*-*-medium-r-*-*-14-*-*-*-*-*-ksc5601*-*,"
"chinese-cns11643-5:-*-simsun-medium-r-*-*-14-*-*-*-c-*-gbk*-*,"
"chinese-cns11643-6:-*-simsun-medium-r-*-*-14-*-*-*-c-*-gbk*-*,"
"chinese-cns11643-7:-*-simsun-medium-r-*-*-14-*-*-*-c-*-gbk*-*,"
"sjis:-*-medium-r-normal--14-*-jisx0208*-*"))

(set-default-font "fontset-monaco") 

(setq default-frame-alist
(append
'((font . "fontset-monaco")) default-frame-alist)) 

;;Theme Set
'(tab-width 4)
'(tool-bar-mode nil)
'(case-fold-search-t nil)
'(compilation-scroll-output t)
'(display-time-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(load "desktop")
(desktop-load-default)
(desktop-read)

;;Global Key Set
(global-set-key [(f4)] 'ansi-term)
(global-set-key (kbd "<f7>") 'compile)
(global-set-key (kbd "<f9>") 'list-bookmarks)
(global-set-key [(f10)] 'bookmark-set)
(global-set-key (kbd "<f12> u") 'vc-next-action)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-default-style (quote ((c-mode . "gnu") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(c-echo-syntactic-information-p t)
 '(c-ignore-auto-fill (quote (string c cpp code)))
 '(c-report-syntactic-errors t)
 '(c-strict-syntax-p t)
 '(c-syntactic-indentation t)
 '(c-tab-always-indent nil)
 '(diff-default-read-only t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-mode t)
 '(font-lock-global-modes t)
 '(font-lock-support-mode (quote jit-lock-mode))
 '(gdb-all-registers t)
 '(gdb-memory-unit "b")
 '(global-hl-line-mode t)
 '(pc-select-meta-moves-sexps t)
 '(pc-select-selection-keys-only t)
 '(pc-selection-mode t nil (pc-select)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "black" :foreground "Wheat" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 116 :width normal :family "apple-monaco"))))
 '(border ((t (:background "grey60"))))
 '(cursor ((t (:background "white"))))
 '(font-lock-comment-delimiter-face ((default (:inherit font-lock-comment-face)) (((class color) (min-colors 16)) nil)))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background dark)) (:foreground "purple2" :underline "purple2"))))
 '(font-lock-constant-face ((((class color) (min-colors 88) (background dark)) (:foreground "green4"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :foreground "light blue" :underline "light blue"))))
 '(font-lock-function-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "gold"))))
 '(font-lock-keyword-face ((((class color) (min-colors 88) (background dark)) (:foreground "white" :underline "ivory"))))
 '(font-lock-negation-char-face ((t (:foreground "grey80"))))
 '(font-lock-preprocessor-face ((t (:inherit font-lock-builtin-face :foreground "light green"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit bold :background "ivory" :foreground "green4"))))
 '(font-lock-regexp-grouping-construct ((t (:inherit bold :background "ivory" :foreground "green3"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background dark)) (:foreground "red"))))
 '(font-lock-type-face ((((class color) (min-colors 88) (background dark)) (:foreground "cyan"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "green"))))
 '(fringe ((((class color) (background dark)) (:background "grey30"))))
 '(hl-line ((t (:inherit highlight :background "grey20"))))
 '(menu ((((type x-toolkit)) (:background "black" :foreground "white" :family "apple-monaco"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(scroll-bar ((t (:background "grey75"))))
 '(tool-bar ((default (:background "black" :foreground "white")) (((type x w32 mac) (class color)) (:background "grey80"))))
 '(vertical-border ((nil nil)))
 '(widget-inactive ((t (:inherit shadow)))))
;; recursion used minibuffer
(setq enable-recursive-minibuffers t)
;; The default startup text mode
(setq default-major-mode 'text-mode)
;; Don't the scroll bar
(customize-set-variable 'scroll-bar-mode nil)
;; Support for external Paste
(setq x-select-enable-clipboard t)
;; enable server mode
(setq server-mode t)

;;GDB Set
(setq gdb-many-windows t)

;;Font Set
(create-fontset-from-fontset-spec
(concat
"-*-monaco-medium-r-normal--*-*-*-*-m-*-fontset-monaco,"
"chinese-gb2312:-*-simsun-medium-r-*-*-14-*-*-*-c-*-gb2312*-*,"
"mule-unicode-0100-24ff:-*-simsun-medium-r-*-*-14-*-*-*-c-*-iso10646*-*,"
"korean-ksc5601:-*-*-medium-r-*-*-14-*-*-*-*-*-ksc5601*-*,"
"chinese-cns11643-5:-*-simsun-medium-r-*-*-14-*-*-*-c-*-gbk*-*,"
"chinese-cns11643-6:-*-simsun-medium-r-*-*-14-*-*-*-c-*-gbk*-*,"
"chinese-cns11643-7:-*-simsun-medium-r-*-*-14-*-*-*-c-*-gbk*-*,"
"sjis:-*-medium-r-normal--14-*-jisx0208*-*"))

(set-default-font "fontset-monaco") 

(setq default-frame-alist
(append
'((font . "fontset-monaco")) default-frame-alist)) 

;;Theme Set
'(tab-width 4)
'(tool-bar-mode nil)
'(case-fold-search-t nil)
'(compilation-scroll-output t)
'(display-time-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(load "desktop")
(desktop-load-default)
(desktop-read)

;;Global Key Set
(global-set-key [(f4)] 'ansi-term)
(global-set-key (kbd "<f7>") 'compile)
(global-set-key (kbd "<f9>") 'list-bookmarks)
(global-set-key [(f10)] 'bookmark-set)
(global-set-key (kbd "<f12> u") 'vc-next-action)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-default-style (quote ((c-mode . "gnu") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(c-echo-syntactic-information-p t)
 '(c-ignore-auto-fill (quote (string c cpp code)))
 '(c-report-syntactic-errors t)
 '(c-strict-syntax-p t)
 '(c-syntactic-indentation t)
 '(c-tab-always-indent nil)
 '(diff-default-read-only t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-mode t)
 '(font-lock-global-modes t)
 '(font-lock-support-mode (quote jit-lock-mode))
 '(gdb-all-registers t)
 '(gdb-memory-unit "b")
 '(global-hl-line-mode t)
 '(pc-select-meta-moves-sexps t)
 '(pc-select-selection-keys-only t)
 '(pc-selection-mode t nil (pc-select)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "black" :foreground "Wheat" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 116 :width normal :family "apple-monaco"))))
 '(border ((t (:background "grey60"))))
 '(cursor ((t (:background "white"))))
 '(font-lock-comment-delimiter-face ((default (:inherit font-lock-comment-face)) (((class color) (min-colors 16)) nil)))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background dark)) (:foreground "purple2" :underline "purple2"))))
 '(font-lock-constant-face ((((class color) (min-colors 88) (background dark)) (:foreground "green4"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :foreground "light blue" :underline "light blue"))))
 '(font-lock-function-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "gold"))))
 '(font-lock-keyword-face ((((class color) (min-colors 88) (background dark)) (:foreground "white" :underline "ivory"))))
 '(font-lock-negation-char-face ((t (:foreground "grey80"))))
 '(font-lock-preprocessor-face ((t (:inherit font-lock-builtin-face :foreground "light green"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit bold :background "ivory" :foreground "green4"))))
 '(font-lock-regexp-grouping-construct ((t (:inherit bold :background "ivory" :foreground "green3"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background dark)) (:foreground "red"))))
 '(font-lock-type-face ((((class color) (min-colors 88) (background dark)) (:foreground "cyan"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "green"))))
 '(fringe ((((class color) (background dark)) (:background "grey30"))))
 '(hl-line ((t (:inherit highlight :background "grey20"))))
 '(menu ((((type x-toolkit)) (:background "black" :foreground "white" :family "apple-monaco"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(scroll-bar ((t (:background "grey75"))))
 '(tool-bar ((default (:background "black" :foreground "white")) (((type x w32 mac) (class color)) (:background "grey80"))))
 '(vertical-border ((nil nil)))
 '(widget-inactive ((t (:inherit shadow)))))

 (provide 'misc-mini-settings)