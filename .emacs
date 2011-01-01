;; 2008/9/16
;; ;; http://d.hatena.ne.jp/yuko1658/20071213/1197517201
(add-to-list 'load-path "~/elisp/")

;; 2010/12/30
;; http://tech.kayac.com/archive/divide-dot-emacs.html
;; for separate dotfile
(require 'init-loader)
(init-loader-load "~/elisp/inits")

;; 2008/12/20
;; http://d.hatena.ne.jp/mzp/20081207/autoerase
;;(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; http://at-aka.blogspot.com/2006/04/emacs-ispell.html
;; $B<-=qJd405!G=(B
;; C-h prefix
(define-key help-map "/" 'ispell-complete-word)

;; http://d.hatena.ne.jp/higepon/20060107/1136628498
;; GLOBAL$BMQ(B
(autoload 'gtags-mode "gtags" "" t)
(setq gtags-mode-hook
      '(lambda ()
         (local-set-key "\M-t" 'gtags-find-tag)
         (local-set-key "\M-r" 'gtags-find-rtag)
         (local-set-key "\M-s" 'gtags-find-symbol)
         (local-set-key "\C-t" 'gtags-pop-stack)
         ))
(add-hook 'c-mode-common-hook
          '(lambda()
             (gtags-mode 1)
             ))

;; 2008/02/03
;; JF
(require 'jf-info-check)

;; 2010/03/14
(require 'auto-complete)
(global-auto-complete-mode t)
(setq ac-sources '(ac-source-abbrev ac-source-words-in-buffer))

;;(add-to-list 'ac-dictionary-directories "~/elisp/ac-dict")
;;(require 'auto-complete-config)
;;(ac-config-default)

(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("python" . python-mode) interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)

;; 2010/03/25
;; http://sites.google.com/site/steveyegge2/effective-emacs
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)

;; 2010/04/29
;; magit
;; http://d.hatena.ne.jp/gom68/20090524/1243170341
(add-to-list 'load-path "~/elisp/magit/share/emacs/site-lisp/")
(require 'magit)
(global-set-key "\C-cg" 'magit-status)

;; 2010/06/13
;; multi-term
;; http://sakito.jp/emacs/emacsshell.html
(require 'multi-term)
(setq multi-term-program shell-file-name)
(add-to-list 'term-unbind-key-list '"M-x")
(add-hook 'term-mode-hook
         '(lambda ()
                         (define-key term-raw-map (kbd "C-h") 'term-send-backspace)
                         (define-key term-raw-map (kbd "C-y") 'term-paste)
          ))
(global-set-key (kbd "C-c t") '(lambda ()
                                (interactive)
                                (if (get-buffer "*terminal<1>*")
                                    (switch-to-buffer "*terminal<1>*")
                                (multi-term))))


;; 2010/06/30
;; for Processing
(setq auto-mode-alist (cons '("\\.pde$" . java-mode) auto-mode-alist))

;; 2010/10/20
;; org-mode
;; http://d.hatena.ne.jp/tamura70/20100203/org
;; $B%-!<%P%$%s%I$N@_Dj(B
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cr" 'org-remember)
;; $B3HD%;R$,(Borg$B$N%U%!%$%k$r3+$$$?;~!$<+F0E*$K(Borg-mode$B$K$9$k(B
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; $B8+=P$7$NM>J,$J(B*$B$r>C$9(B
(setq org-hide-leading-stars t)
;; org-default-notes-file$B$N%G%#%l%/%H%j(B
(setq org-directory "~/doc/org/")
;; org-default-notes-file$B$N%U%!%$%kL>(B
(setq org-default-notes-file "notes.org")
;; TODO$B>uBV(B
(setq org-todo-keywords
      '((sequence "TODO(t)" "WAIT(w)" "|" "DONE(d)" "SOMEDAY(s)")))
;; DONE$B$N;~9o$r5-O?(B
(setq org-log-done 'time)

;; 2010/10/30
;; org-mode $B$G%G%U%)%k%H@^$jJV$7(B
;; http://osdir.com/ml/emacs-orgmode-gnu/2009-04/msg00618.html
(add-hook 'org-mode-hook
	  (lambda()(setq truncate-lines nil)))

;; 2010/10/24
;; for waf
(setq auto-mode-alist (cons '("wscript" . python-mode) auto-mode-alist))

;; 2010/10/25
;; cscope
;; http://namikister.blog101.fc2.com/blog-entry-9.html
(require 'xcscope)


;;2007/11/5
;;Emacs $B$G(B C $B8@8l%W%m%0%i%_%s%0$r;O$a$k?M$X$N%$%s%H%m%@%/%7%g%s(B
;;flyspell-prog-mode($B<+F0(Bispell$B5!G=(B)
;;(add-hook 'c-mode-common-hook
;;          '(lambda ()
;;             ;; flyspell-prog-mode $B$r%*%s$K$9$k(B
;;             (flyspell-prog-mode)
;;))
