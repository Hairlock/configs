;;; bind-key-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "bind-key" "../../../../../AppData/Roaming/.emacs.d/elpa/bind-key-20150321.213/bind-key.el"
;;;;;;  "ac765962e6f6c7630a117ecd02c2b17c")
;;; Generated autoloads from ../../../../../AppData/Roaming/.emacs.d/elpa/bind-key-20150321.213/bind-key.el

(autoload 'bind-key "bind-key" "\
Bind KEY-NAME to COMMAND in KEYMAP (`global-map' if not passed).

KEY-NAME may be a vector, in which case it is passed straight to
`define-key'. Or it may be a string to be interpreted as
spelled-out keystrokes, e.g., \"C-c C-z\". See documentation of
`edmacro-mode' for details.

\(fn KEY-NAME COMMAND &optional KEYMAP)" nil t)

(autoload 'unbind-key "bind-key" "\


\(fn KEY-NAME &optional KEYMAP)" nil t)

(autoload 'bind-key* "bind-key" "\


\(fn KEY-NAME COMMAND)" nil t)

(autoload 'bind-keys "bind-key" "\
Bind multiple keys at once.

Accepts keyword arguments:
:map - a keymap into which the keybindings should be added
:prefix-map - name of the prefix map that should be created for
              these bindings
:prefix - prefix key for these bindings
:prefix-docstring - docstring for the prefix-map variable
:menu-name - optional menu string for prefix map

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

\(fn &rest ARGS)" nil t)

(autoload 'bind-keys* "bind-key" "\


\(fn &rest ARGS)" nil t)

(autoload 'describe-personal-keybindings "bind-key" "\
Display all the personal keybindings defined by `bind-key'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../AppData/Roaming/.emacs.d/elpa/bind-key-20150321.213/bind-key-autoloads.el"
;;;;;;  "../../../../../AppData/Roaming/.emacs.d/elpa/bind-key-20150321.213/bind-key.el")
;;;;;;  (22076 26223 727697 900000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; bind-key-autoloads.el ends here
