;;; syntax-subword-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "syntax-subword" "../../../../../AppData/Roaming/.emacs.d/elpa/syntax-subword-20150415.1226/syntax-subword.el"
;;;;;;  "4fe067b5377c72abb292924037b300d2")
;;; Generated autoloads from ../../../../../AppData/Roaming/.emacs.d/elpa/syntax-subword-20150415.1226/syntax-subword.el

(autoload 'syntax-subword-mode "syntax-subword" "\
This mode is like `subword-mode', but also treats syntax
  changes as word boundaries.  Syntax changes are generally the
  same as face changes when font lock is
  enabled. \\{syntax-subword-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-syntax-subword-mode nil "\
Non-nil if Global-Syntax-Subword mode is enabled.
See the command `global-syntax-subword-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-syntax-subword-mode'.")

(custom-autoload 'global-syntax-subword-mode "syntax-subword" nil)

(autoload 'global-syntax-subword-mode "syntax-subword" "\
Toggle Syntax-Subword mode in all buffers.
With prefix ARG, enable Global-Syntax-Subword mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Syntax-Subword mode is enabled in all buffers where
`(lambda nil (syntax-subword-mode 1))' would do it.
See `syntax-subword-mode' for more information on Syntax-Subword mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../AppData/Roaming/.emacs.d/elpa/syntax-subword-20150415.1226/syntax-subword-autoloads.el"
;;;;;;  "../../../../../AppData/Roaming/.emacs.d/elpa/syntax-subword-20150415.1226/syntax-subword.el")
;;;;;;  (22076 26813 379697 900000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; syntax-subword-autoloads.el ends here
