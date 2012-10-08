;;(setq load-path
;;  (cons (expand-file-name "/Users/jyasskin/.emacs.d/html5-el") load-path))
;;(require 'whattf-dt)

;(load "/opt/local/share/emacs/site-lisp/haskell-mode-2.4/haskell-site-file")
;(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;(add-hook 'haskell-mode-hook 'font-lock-mode)
;(add-hook 'haskell-mode-hook 'imenu-add-menubar-index)

; Make emacsclient work.
(server-start)

(setq load-path
  (cons (expand-file-name "/home/jyasskin/src/llvm/src/utils/emacs") load-path))
(require 'llvm-mode)
(require 'tablegen-mode)

;(setq load-path
;  (cons (expand-file-name "/opt/local/share/emacs/23.2/site-lisp/") load-path))
;(setq auto-mode-alist
;  (cons '("\\.ml\\w?" . tuareg-mode) auto-mode-alist))
;(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code." t)
;(autoload 'camldebug "cameldeb" "Run the Caml debugger." t)

; LLVM coding style
(c-add-style "llvm.org"
             '((fill-column . 80)
	       (c++-indent-level . 2)
	       (c-basic-offset . 2)
	       (indent-tabs-mode . nil)
               (c-offsets-alist . ((innamespace 0)))))
(add-hook 'c-mode-hook
	  (function
	   (lambda nil 
	     (if (string-match "llvm" buffer-file-name)
		 (progn
		   (c-set-style "llvm.org")
		   )
	       ))))
(add-hook 'c++-mode-hook
	  (function
	   (lambda nil 
	     (if (string-match "llvm" buffer-file-name)
		 (progn
		   (c-set-style "llvm.org")
		   )
	       ))))


(windmove-default-keybindings)

(setq c-offsets-alist '((innamespace . 0)))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(Info-additional-directory-list (quote ("/opt/local/share/info")))
 '(backup-directory-alist (quote (("." . "/Users/jyasskin/tmp/backup"))))
 '(c-auto-align-backslashes nil)
 '(c-basic-offset 2)
 '(c-default-style (quote ((c++-mode . "stroustrup") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(column-number-mode t)
 '(exec-path (quote ("/opt/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/MacPorts/Emacs.app/Contents/MacOS/bin")))
 '(grep-command "/usr/bin/ack-grep -a --nocolor --nogroup --match ")
 '(grep-find-command nil)
 '(grep-find-template "find . <X> -type f <F> -exec grep <C> -n -e <R> {} /dev/null \\;")
 '(grep-highlight-matches t)
 '(grep-template "grep <C> -n -e <R> <F>")
 '(grep-use-null-device t)
 '(indent-tabs-mode nil)
 '(ispell-program-name "/opt/local/bin/aspell" t)
 '(mouse-wheel-mode t)
 '(ns-alternate-modifier (quote none))
 '(ns-command-modifier (quote meta))
 '(nxml-slash-auto-complete-flag t)
 '(paren-match-face (quote paren-face-match-light))
 '(paren-sexp-mode t)
 '(partial-completion-mode t)
 '(python-indent 2)
 '(rng-schema-locating-files (quote ("schemas.xml" "~/.emacs.d/html5-el/schemas.xml" "/Applications/MacPorts/Emacs.app/Contents/Resources/etc/schema/schemas.xml")))
 '(safe-local-variable-values (quote ((buffer-file-coding-system . utf-8-unix))))
 '(show-trailing-whitespace t)
 '(transient-mark-mode t)
 '(truncate-partial-width-windows nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
