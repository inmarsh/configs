;; 2008/9/16
;; ;; http://d.hatena.ne.jp/yuko1658/20071213/1197517201
(add-to-list 'load-path "~/elisp/")

;; global variable
;; $B%+!<%=%k$NE@LG$r;_$a$k(B
(blink-cursor-mode nil)

;; $B%+!<%=%k$N0LCV$,2?J8;zL\$+$rI=<($9$k(B
(column-number-mode t)

;; $B%b!<%I%i%$%s$K;~4V$rI=<($9$k(B
(display-time-mode t)

;; $B%P%C%/%"%C%W%U%!%$%k$r:n$i$J$$(B
(setq backup-inhibited t)

;; $BBP1~$9$k3g8L$r8w$i$;$k!#(B
(show-paren-mode t)

;; $B?'$rIU$1$k(B
;; '(global-font-lock-mode t)

;; $B%9%?!<%H%"%C%W%9%/%j!<%s$rI=<($7$J$$(B
(setq inhibit-startup-screen t)

;; $B=*N;;~$K%*!<%H%;!<%V%U%!%$%k$r>C$9(B
(setq delete-auto-save-files t)

;; $BJd40;~$KBgJ8;z>.J8;z$r6hJL$7$J$$(B
(setq completion-ignore-case t)

;; $B6/NO$JJd405!G=$r;H$&(B
(partial-completion-mode 1)

;; $BJd402DG=$J$b$N$r?o;~I=<((B
;; $B>/$7$&$k$5$$(B
(icomplete-mode 1)

;; $B%+!<%=%k$N0LCV$,2?9TL\$+$rI=<($9$k(B
(line-number-mode t)

;; $B%9%/%m!<%k$r0l9T$:$D$K$9$k(B
(setq scroll-step 1)

;; $B%9%/%m!<%k%P!<$r1&B&$KI=<($9$k(B
(set-scroll-bar-mode 'right)

;; $B9T$N@hF,$G(BC-k$B$r0l2s2!$9$@$1$G9TA4BN$r>C5n$9$k(B
(setq kill-whole-line t)

;; $B%P%C%U%!$N:G8e$G(Bnewline$B$G?75,9T$rDI2C$9$k$N$r6X;_$9$k(B
(setq next-line-add-newlines nil)

;; $B:G=*9T$KI,$:0l9TA^F~$9$k(B
(setq require-final-newline t)

;; $B0l9T$,(B 80 $B;z0J>e$K$J$C$?;~$K$O<+F02~9T$9$k(B
(setq fill-column 80)
(setq-default auto-fill-mode t)

;; emacs -nw $B$G5/F0$7$?;~$K%a%K%e!<%P!<$r>C$9(B
(if window-system (menu-bar-mode 1) (menu-bar-mode -1))

;; $B05=L$5$l$?%U%!%$%k$bJT=8$G$-$k$h$&$K$9$k(B
(auto-compression-mode t)

;; $B%?%$%H%k%P!<$K%U%!%$%kL>$rI=<($9$k(B
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))

;; $B8=:_$N4X?tL>$r%b!<%I%i%$%s$KI=<((B
(which-function-mode 1)

;; $BN,8lDj5A%U%!%$%k$NFI$_9~$_(B
;; ~/elisp/.abbrev_defs$B$,B8:_$7$F$$$J$+$C$?$iFI$_9~$^$J$$(B
;; change directory from site-lisp to elisp
(let ((file "~/elisp/.abbrev_defs"))
  (setq abbrev-file-name file)
  (if (file-exists-p file)
;;       (quietly-read-abbrev-file file)))
      (read-abbrev-file file)))

;; $BN,8lDj5A$,JQ99$5$l$F$$$?$iL[$C$FJ]B8(B
(setq save-abbrevs 'silently)

;; $B%G%U%)%k%H$G(BAbbrev$B%b!<%I$K$9$k(B
(setq default-abbrev-mode t)

;; $B:G=*99?7F|$N<+F0A^F~(B
;;   $B%U%!%$%k$N@hF,$+$i(B 8 $B9T0JFb$K(B Time-stamp: <> $B$^$?$O(B
;;   Time-stamp: " " $B$H=q$$$F$"$l$P!"%;!<%V;~$K<+F0E*$KF|IU$,A^F~$5$l$k(B
(require 'time-stamp)

;; $BF|K\8l$GF|IU$rF~$l$?$/$J$$$N$G(Blocale$B$r(BC$B$K$9$k(B
(defun time-stamp-with-locale-c ()
  (let ((system-time-locale "C"))
    (time-stamp)
    nil))

(if (not (memq 'time-stamp-with-locale-c write-file-hooks))
    (add-hook 'write-file-hooks 'time-stamp-with-locale-c))

(setq time-stamp-format "%3a %3b %02d %02H:%02M:%02S %Z %:y")

;; $B2hA|%U%!%$%k$rI=<($9$k(B
(auto-image-file-mode t)

;; $B%;%C%7%g%s$rJ]B8$9$k(B
;; $B=i$a$O<jF0$G(BM-x desktop-save$B$7$J$1$l$P$$$1$J$$(B
(desktop-load-default)
(desktop-read)

;; $B<!$N(BGC$B$^$G$K;HMQ2DG=$J%P%$%H?t(B
(setq gc-cons-threshold 4096000)

;; $B:G6a;H$C$?%U%!%$%k$rJ]B8(B(M-x recentf-open-files$B$G3+$/(B)
(recentf-mode)

 ;; 2007/11/18
 ;; cvs$BMQ%-!<%P%$%s%I(B
 (global-set-key "\M-s" 'cvs-status)

 ;; 2007/12/23
 ;; $B%+%i!<%F!<%^MQ(B
 ;; http://blog.mizoshiri.com/archives/50
 ;; http://www.emacswiki.org/cgi-bin/wiki/ColorTheme
 (require 'color-theme)
 (color-theme-initialize)
 (color-theme-clarity)

;; 2008/10/25
;; for ruby
;; http://www.goodpic.com/mt/archives2/2005/09/mac_osxemacsrub.html
(autoload 'ruby-mode "ruby-mode"
  "Mode for editing ruby source files" t)
(setq auto-mode-alist
      (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
                                     interpreter-mode-alist))
(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")
(add-hook 'ruby-mode-hook
          '(lambda ()
            (inf-ruby-keys)))
(setq default-frame-alist
      (append
       '((foreground-color . "gray")  ;
         (background-color . "black") ;
         (cursor-color     . "blue")  ;
        )
 default-frame-alist))

;; 2008/12/20
;; http://d.hatena.ne.jp/mzp/20081207/autoerase
;;(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; 2008/12/21
;; http://www.cozmixng.org/~kou/emacs/dot_emacs
;;; $B%-!<%P%$%s%I(B
;;(define-key global-map "\C-h" 'delete-backward-char) ; $B:o=|(B
(define-key global-map "\M-?" 'help-for-help)        ; $B%X%k%W(B
;; 2008/12/29 comment out
;(define-key global-map "\C-z" 'undo)                 ; undo

;====================================
;;shift+$BLp0u%-!<$G$NHO0OA*Br(B
;====================================
(pc-selection-mode)

;; http://gimite.net/behind/dot.emacs.txt
;; copy with Ctrl + c
(defun win-unselect ()
  (transient-mark-mode -1)
  (setq win-sel-v nil))
;(defun win-copy (BEG END)
;  (interactive (list (region-beginning) (region-end)))
;  (copy-region-as-kill BEG END)
;  (win-unselect))
;(global-set-key "\C-c" 'win-copy)

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

;; 2010/03/28
;; http://ubulog.blogspot.com/2007/06/emacs.html
;====================================
; $B:G6a;H$C$?%U%!%$%k!W$r!J%a%K%e!<$K!KI=<($9$k(B
;====================================
; M-x recentf-open-files $B$GMzNr0lMw%P%C%U%!$,I=<($5$l$k!#(B
(require 'recentf)
;;http://homepage.mac.com/zenitani/elisp-j.html#recentf
;; /sudo:hogehoge $B$J$I$,MzNr$K;D$C$F$$$k$H!"5/F0;~$KKh2s%Q(B
;; $B%9%o!<%I$rJ9$$$F$/$k$N$G$=$NMzNr$@$1$r:o=|$9$k!#(B
;;(setq recentf-exclude '("^/[^/:]+:")) ;;tramp$BBP:v!#(B
(setq recentf-auto-cleanup 'never) ;;tramp$BBP:v!#(B
(recentf-mode 1)
(global-set-key "\C-xf" 'recentf-open-files) ;;$BMzNr0lMw$r3+$/!#(B

;;;====================================
;;;; Buffer $B@_Dj(B
;;;===================================
;;; iswitchb $B$O!"%P%C%U%!L>$N0lIt$NJ8;z$rF~NO$9$k$3$H$G!"(B
;;; $BA*Br%P%C%U%!$N9J$j9~$_$r9T$&5!G=$r<B8=$7$^$9!#(B
;;; $B%P%C%U%!L>$r@hF,$+$iF~NO$9$kI,MW$O$J$/!"$H$F$b;H$$$d$9$/$J$j$^$9!#(B
(iswitchb-mode 1) ;;iswitchb$B%b!<%I(BON
;;; C-f, C-b, C-n, C-p $B$G8uJd$r@Z$jBX$($k$3$H$,$G$-$k$h$&$K!#(B
(add-hook 'iswitchb-define-mode-map-hook
      (lambda ()
        (define-key iswitchb-mode-map "\C-n" 'iswitchb-next-match)
        (define-key iswitchb-mode-map "\C-p" 'iswitchb-prev-match)
        (define-key iswitchb-mode-map "\C-f" 'iswitchb-next-match)
        (define-key iswitchb-mode-map "\C-b" 'iswitchb-prev-match)))

;; 2010/04/06
;; $B%a!<%k5!G=$NBe$o$j$K9T0\F0(B
(global-set-key "\C-xm" 'goto-line)

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

;; 2010/12/30
;; http://www.bookshelf.jp/soft/meadow_30.html#SEC419
(defun my-window-size-save ()
  (let* ((rlist (frame-parameters (selected-frame)))
         (ilist initial-frame-alist)
         (nCHeight (frame-height))
         (nCWidth (frame-width))
         (tMargin (if (integerp (cdr (assoc 'top rlist)))
                      (cdr (assoc 'top rlist)) 0))
         (lMargin (if (integerp (cdr (assoc 'left rlist)))
                      (cdr (assoc 'left rlist)) 0))
         buf
         (file "~/.framesize.el"))
    (if (get-file-buffer (expand-file-name file))
        (setq buf (get-file-buffer (expand-file-name file)))
      (setq buf (find-file-noselect file)))
    (set-buffer buf)
    (erase-buffer)
    (insert (concat
             ;; $B=i4|CM$r$$$8$k$h$j$b(B modify-frame-parameters
             ;; $B$GJQ$($k$@$1$NJ}$,$$$$(B?
             "(delete 'width initial-frame-alist)\n"
             "(delete 'height initial-frame-alist)\n"
             "(delete 'top initial-frame-alist)\n"
             "(delete 'left initial-frame-alist)\n"
             "(setq initial-frame-alist (append (list\n"
             "'(width . " (int-to-string nCWidth) ")\n"
             "'(height . " (int-to-string nCHeight) ")\n"
             "'(top . " (int-to-string tMargin) ")\n"
             "'(left . " (int-to-string lMargin) "))\n"
             "initial-frame-alist))\n"
             ;;"(setq default-frame-alist initial-frame-alist)"
             ))
    (save-buffer)
    ))

(defun my-window-size-load ()
  (let* ((file "~/.framesize.el"))
    (if (file-exists-p file)
        (load file))))

(my-window-size-load)

;; Call the function above at C-x C-c.
(defadvice save-buffers-kill-emacs
  (before save-frame-size activate)
  (my-window-size-save))

;;2007/11/5
;;Emacs $B$G(B C $B8@8l%W%m%0%i%_%s%0$r;O$a$k?M$X$N%$%s%H%m%@%/%7%g%s(B
;;flyspell-prog-mode($B<+F0(Bispell$B5!G=(B)
;;(add-hook 'c-mode-common-hook
;;          '(lambda ()
;;             ;; flyspell-prog-mode $B$r%*%s$K$9$k(B
;;             (flyspell-prog-mode)
;;))
