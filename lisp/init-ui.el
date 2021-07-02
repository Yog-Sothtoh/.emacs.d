;;=========
;;=
;;=========
(use-package gruvbox-theme
	     :init (load-theme 'gruvbox-dark-soft t))

;;=========
;;=
;;=========
(use-package smart-mode-line
    :init
    (setq sml/no-confirm-load-theme t)
    (setq sml/theme 'respectful)
    (sml/setup))

;;=========
;;=
;;=========
(use-package emacs
  :if (display-graphic-p)
  :config
  ;; Font settings
  (if *is-windows*
    (progn
      (set-face-attribute 'default nil :font "Microsoft Yahei Mono 9")
      (dolist (charset '(kana han symbol cjk-misc bopomofo))
        (set-fontset-font (frame-parameter nil 'font) charset (font-spec :family "Microsoft Yahei Mono" :size 12))))
    (set-face-attribute 'default nil :font "Hack 16")))

;;=========
;;=
;;=========
(use-package emacs
    :config
    (setq display-line-numbers-type 'relative)
    (global-display-line-numbers-mode t))

(provide 'init-ui)
