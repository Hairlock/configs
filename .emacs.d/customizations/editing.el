;; Customizations relating to editing a buffer.

;; Key binding to use "hippie expand" for text autocompletion
;; http://www.emacswiki.org/emacs/HippieExpand
(global-set-key (kbd "M-/") 'hippie-expand)

;; Lisp-friendly hippie expand
(setq hippie-expand-try-functions-list
      '(try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol))

;; Highlights matching parenthesis
(show-paren-mode 1)

;; Highlight current line
(global-hl-line-mode 1)

;; Interactive search key bindings. By default, C-s runs
;; isearch-forward, so this swaps the bindings.
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)
(global-set-key "\C-c\C-d" "\C-a\C- \C-n\M-w\C-y")

;; Don't use hard tabs
(setq-default indent-tabs-mode nil)

;; When you visit a file, point goes to the last place where it
;; was when you previously visited the same file.
;; http://www.emacswiki.org/emacs/SavePlace
(require 'saveplace)
(setq-default save-place t)
;; keep track of saved places in ~/.emacs.d/places
(setq save-place-file (concat user-emacs-directory "places"))

;; Emacs can automatically create backup files. This tells Emacs to
;; put all backups in ~/.emacs.d/backups. More info:
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Backup-Files.html
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
                                               "backups"))))
(setq auto-save-default nil)


;; comments
(defun toggle-comment-on-line ()
  "comment or uncomment current line"
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))
(global-set-key (kbd "C-;") 'toggle-comment-on-line)

;; yay rainbows!
(global-rainbow-delimiters-mode t)

;; use 2 spaces for tabs
(defun die-tabs ()
  (interactive)
  (set-variable 'tab-width 2)
  (mark-whole-buffer)
  (untabify (region-beginning) (region-end))
  (keyboard-quit))

;; fix weird os x kill error
(defun ns-get-pasteboard ()
  "Returns the value of the pasteboard, or nil for unsupported formats."
  (condition-case nil
      (ns-get-selection-internal 'CLIPBOARD)
    (quit nil)))

(setq electric-indent-mode nil)


(defun my/insert-line-before (times)
  "Inserts a newline(s) above the line containing
   the cursor."
  (interactive)
  (save-excursion
    (move-beginning-of-line 1)
    (newline times)))

(global-set-key (kbd "C-S-o")
                'my/insert-line-before)
				
(add-hook 'clojure-mode-hook '(lambda ()
  (local-set-key (kbd "RET") 'newline-and-indent)))
  
(defun smart-beginning-of-line ()
  "Move point to first non-whitespace character or beginning-of-line.

	Move point to the first non-whitespace character on this line.
	If point was already at that position, move point to beginning of line."
	  (interactive) ; Use (interactive "^") in Emacs 23 to make shift-select work
	  (let ((oldpos (point)))
		(back-to-indentation)
		(and (= oldpos (point))
			 (beginning-of-line))))

(global-set-key [home] 'smart-beginning-of-line)
(global-set-key "\C-a" 'smart-beginning-of-line)

(defun get-point (symbol &optional arg)
      "get the point"
      (funcall symbol arg)
      (point)
     )
     
     (defun copy-thing (begin-of-thing end-of-thing &optional arg)
       "copy thing between beg & end into kill ring"
        (save-excursion
          (let ((beg (get-point begin-of-thing 1))
         	 (end (get-point end-of-thing arg)))
            (copy-region-as-kill beg end)))
     )
     
     (defun paste-to-mark(&optional arg)
       "Paste things to mark, or to the prompt in shell-mode"
       (let ((pasteMe 
     	 (lambda()
     	   (if (string= "shell-mode" major-mode)
     	     (progn (comint-next-prompt 25535) (yank))
     	   (progn (goto-char (mark)) (yank) )))))
     	(if arg
     	    (if (= arg 1)
     		nil
     	      (funcall pasteMe))
     	  (funcall pasteMe))
     	))
		
(defun copy-word (&optional arg)
      "Copy words at point into kill-ring"
       (interactive "P")
       (copy-thing 'backward-word 'forward-word arg)
       ;;(paste-to-mark arg)
     )

(global-set-key (kbd "C-c w")         (quote copy-word))

 (defun copy-line (&optional arg)
      "Save current line into Kill-Ring without mark the line "
       (interactive "P")
       (copy-thing 'beginning-of-line 'end-of-line arg)
       (paste-to-mark arg)
     )

(global-set-key (kbd "C-c l")         (quote copy-line))

(defun copy-paragraph (&optional arg)
      "Copy paragraphes at point"
       (interactive "P")
       (copy-thing 'backward-paragraph 'forward-paragraph arg)
       (paste-to-mark arg)
     )
	 
(global-set-key (kbd "C-c p")         (quote copy-paragraph))
