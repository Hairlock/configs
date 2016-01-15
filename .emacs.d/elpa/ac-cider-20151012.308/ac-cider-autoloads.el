;;; ac-cider-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "ac-cider" "../../../../../AppData/Roaming/.emacs.d/elpa/ac-cider-20151012.308/ac-cider.el"
;;;;;;  "9cfe9f3cd8df9a6377f4b99096c9d911")
;;; Generated autoloads from ../../../../../AppData/Roaming/.emacs.d/elpa/ac-cider-20151012.308/ac-cider.el

(defface ac-cider-candidate-face '((t (:inherit ac-candidate-face))) "\
Face for nrepl candidates." :group (quote auto-complete))

(defface ac-cider-selection-face '((t (:inherit ac-selection-face))) "\
Face for the nrepl selected candidate." :group (quote auto-complete))

(defconst ac-cider-source-defaults '((available . ac-cider-available-p) (candidate-face . ac-cider-candidate-face) (selection-face . ac-cider-selection-face) (prefix . cider-completion-symbol-start-pos) (match . ac-cider-match-fuzzy) (document . ac-cider-documentation) (cache)) "\
Defaults common to the various completion sources.")

(defvar ac-source-cider-everything (append '((candidates . ac-cider-candidates-everything) (symbol . "v")) ac-cider-source-defaults) "\
Auto-complete source for CIDER buffers.")

(autoload 'ac-cider-setup "ac-cider" "\
Add the CIDER completion source to the front of `ac-sources'.
This affects only the current buffer.

\(fn)" t nil)

(autoload 'ac-cider-popup-doc "ac-cider" "\
A popup alternative to `cider-doc'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../AppData/Roaming/.emacs.d/elpa/ac-cider-20151012.308/ac-cider-autoloads.el"
;;;;;;  "../../../../../AppData/Roaming/.emacs.d/elpa/ac-cider-20151012.308/ac-cider.el")
;;;;;;  (22067 11667 912179 400000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ac-cider-autoloads.el ends here