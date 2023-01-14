;;; Quickstart file to activate all packages at startup  -*- lexical-binding:t -*-
;; ¡¡ This file is autogenerated by `package-quickstart-refresh', DO NOT EDIT !!

(let ((load-true-file-name "/home/das/.emacs.d/elpa/bind-key-20221209.2013/bind-key-autoloads.el")(load-file-name "/home/das/.emacs.d/elpa/bind-key-20221209.2013/bind-key-autoloads.el"))

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory "/home/das/.emacs.d/elpa/bind-key-20221209.2013/bind-key-autoloads.el") (car load-path))))



(autoload 'bind-key "bind-key" "\
Bind KEY-NAME to COMMAND in KEYMAP (`global-map' if not passed).

KEY-NAME may be a vector, in which case it is passed straight to
`define-key'.  Or it may be a string to be interpreted as
spelled-out keystrokes, e.g., \"C-c C-z\".  See the documentation
of `edmacro-mode' for details.

COMMAND must be an interactive function or lambda form.

KEYMAP, if present, should be a keymap variable or symbol.
For example:

  (bind-key \"M-h\" #\\='some-interactive-function my-mode-map)

  (bind-key \"M-h\" #\\='some-interactive-function \\='my-mode-map)

If PREDICATE is non-nil, it is a form evaluated to determine when
a key should be bound. It must return non-nil in such cases.
Emacs can evaluate this form at any time that it does redisplay
or operates on menu data structures, so you should write it so it
can safely be called at any time.

\(fn KEY-NAME COMMAND &optional KEYMAP PREDICATE)" nil t)

(autoload 'unbind-key "bind-key" "\
Unbind the given KEY-NAME, within the KEYMAP (if specified).
See `bind-key' for more details.

\(fn KEY-NAME &optional KEYMAP)" nil t)

(autoload 'bind-key* "bind-key" "\
Similar to `bind-key', but overrides any mode-specific bindings.

\(fn KEY-NAME COMMAND &optional PREDICATE)" nil t)

(autoload 'bind-keys "bind-key" "\
Bind multiple keys at once.

Accepts keyword arguments:
:map MAP               - a keymap into which the keybindings should be
                         added
:prefix KEY            - prefix key for these bindings
:prefix-map MAP        - name of the prefix map that should be created
                         for these bindings
:prefix-docstring STR  - docstring for the prefix-map variable
:menu-name NAME        - optional menu string for prefix map
:repeat-docstring STR  - docstring for the repeat-map variable
:repeat-map MAP        - name of the repeat map that should be created
                         for these bindings. If specified, the
                         `repeat-map' property of each command bound
                         (within the scope of the `:repeat-map' keyword)
                         is set to this map.
:exit BINDINGS         - Within the scope of `:repeat-map' will bind the
                         key in the repeat map, but will not set the
                         `repeat-map' property of the bound command.
:continue BINDINGS     - Within the scope of `:repeat-map' forces the
                         same behaviour as if no special keyword had
                         been used (that is, the command is bound, and
                         it's `repeat-map' property set)
:filter FORM           - optional form to determine when bindings apply

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

\(fn &rest ARGS)" nil t)

(autoload 'bind-keys* "bind-key" "\
Bind multiple keys at once, in `override-global-map'.
Accepts the same keyword arguments as `bind-keys' (which see).

This binds keys in such a way that bindings are not overridden by
other modes.  See `override-global-mode'.

\(fn &rest ARGS)" nil t)

(autoload 'describe-personal-keybindings "bind-key" "\
Display all the personal keybindings defined by `bind-key'." t nil)

(register-definition-prefixes "bind-key" '("bind-key" "compare-keybindings" "get-binding-description" "override-global-m" "personal-keybindings"))


)
(let ((load-true-file-name "/home/das/.emacs.d/elpa/use-package-20221209.2013/use-package-autoloads.el")(load-file-name "/home/das/.emacs.d/elpa/use-package-20221209.2013/use-package-autoloads.el"))

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory "/home/das/.emacs.d/elpa/use-package-20221209.2013/use-package-autoloads.el") (car load-path))))



(autoload 'use-package-autoload-keymap "use-package-bind-key" "\
Load PACKAGE and bind key sequence invoking this function to KEYMAP-SYMBOL.
Then simulate pressing the same key sequence a again, so that the
next key pressed is routed to the newly loaded keymap.

This function supports use-package's :bind-keymap keyword.  It
works by binding the given key sequence to an invocation of this
function for a particular keymap.  The keymap is expected to be
defined by the package.  In this way, loading the package is
deferred until the prefix key sequence is pressed.

\(fn KEYMAP-SYMBOL PACKAGE OVERRIDE)" nil nil)

(autoload 'use-package-normalize-binder "use-package-bind-key" "\


\(fn NAME KEYWORD ARGS)" nil nil)

(defalias 'use-package-normalize/:bind 'use-package-normalize-binder)

(defalias 'use-package-normalize/:bind* 'use-package-normalize-binder)

(defalias 'use-package-autoloads/:bind 'use-package-autoloads-mode)

(defalias 'use-package-autoloads/:bind* 'use-package-autoloads-mode)

(autoload 'use-package-handler/:bind "use-package-bind-key" "\


\(fn NAME KEYWORD ARGS REST STATE &optional BIND-MACRO)" nil nil)

(defalias 'use-package-normalize/:bind-keymap 'use-package-normalize-binder)

(defalias 'use-package-normalize/:bind-keymap* 'use-package-normalize-binder)

(autoload 'use-package-handler/:bind-keymap "use-package-bind-key" "\


\(fn NAME KEYWORD ARGS REST STATE &optional OVERRIDE)" nil nil)

(autoload 'use-package-handler/:bind-keymap* "use-package-bind-key" "\


\(fn NAME KEYWORD ARG REST STATE)" nil nil)

(register-definition-prefixes "use-package-bind-key" '("use-package-handler/:bind*"))



(autoload 'use-package "use-package-core" "\
Declare an Emacs package by specifying a group of configuration options.

For the full documentation, see Info node `(use-package) top'.
Usage:

  (use-package package-name
     [:keyword [option]]...)

:init            Code to run before PACKAGE-NAME has been loaded.
:config          Code to run after PACKAGE-NAME has been loaded.  Note that
                 if loading is deferred for any reason, this code does not
                 execute until the lazy load has occurred.
:preface         Code to be run before everything except `:disabled'; this
                 can be used to define functions for use in `:if', or that
                 should be seen by the byte-compiler.

:mode            Form to be added to `auto-mode-alist'.
:magic           Form to be added to `magic-mode-alist'.
:magic-fallback  Form to be added to `magic-fallback-mode-alist'.
:interpreter     Form to be added to `interpreter-mode-alist'.

:commands        Define autoloads for commands that will be defined by the
                 package.  This is useful if the package is being lazily
                 loaded, and you wish to conditionally call functions in your
                 `:init' block that are defined in the package.
:autoload        Similar to :commands, but it for no-interactive one.
:hook            Specify hook(s) to attach this package to.

:bind            Bind keys, and define autoloads for the bound commands.
:bind*           Bind keys, and define autoloads for the bound commands,
                 *overriding all minor mode bindings*.
:bind-keymap     Bind a key prefix to an auto-loaded keymap defined in the
                 package.  This is like `:bind', but for keymaps.
:bind-keymap*    Like `:bind-keymap', but overrides all minor mode bindings

:defer           Defer loading of a package -- this is implied when using
                 `:commands', `:bind', `:bind*', `:mode', `:magic', `:hook',
                 `:magic-fallback', or `:interpreter'.  This can be an integer,
                 to force loading after N seconds of idle time, if the package
                 has not already been loaded.
:demand          Prevent the automatic deferred loading introduced by constructs
                 such as `:bind' (see `:defer' for the complete list).

:after           Delay the effect of the use-package declaration
                 until after the named libraries have loaded.
                 Before they have been loaded, no other keyword
                 has any effect at all, and once they have been
                 loaded it is as if `:after' was not specified.

:if EXPR         Initialize and load only if EXPR evaluates to a non-nil value.
:disabled        The package is ignored completely if this keyword is present.
:defines         Declare certain variables to silence the byte-compiler.
:functions       Declare certain functions to silence the byte-compiler.
:load-path       Add to the `load-path' before attempting to load the package.
:diminish        Support for diminish.el (if installed).
:delight         Support for delight.el (if installed).
:custom          Call `Custom-set' or `set-default' with each variable
                 definition without modifying the Emacs `custom-file'.
                 (compare with `custom-set-variables').
:custom-face     Call `custom-set-faces' with each face definition.
:ensure          Loads the package using package.el if necessary.
:pin             Pin the package to an archive.

\(fn NAME &rest ARGS)" nil t)

(function-put 'use-package 'lisp-indent-function 'defun)

(register-definition-prefixes "use-package-core" '("use-package-"))



(autoload 'use-package-normalize/:delight "use-package-delight" "\
Normalize arguments to delight.

\(fn NAME KEYWORD ARGS)" nil nil)

(autoload 'use-package-handler/:delight "use-package-delight" "\


\(fn NAME KEYWORD ARGS REST STATE)" nil nil)

(register-definition-prefixes "use-package-delight" '("use-package-normalize-delight"))



(autoload 'use-package-normalize/:diminish "use-package-diminish" "\


\(fn NAME KEYWORD ARGS)" nil nil)

(autoload 'use-package-handler/:diminish "use-package-diminish" "\


\(fn NAME KEYWORD ARG REST STATE)" nil nil)

(register-definition-prefixes "use-package-diminish" '("use-package-normalize-diminish"))



(autoload 'use-package-normalize/:ensure "use-package-ensure" "\


\(fn NAME KEYWORD ARGS)" nil nil)

(autoload 'use-package-handler/:ensure "use-package-ensure" "\


\(fn NAME KEYWORD ENSURE REST STATE)" nil nil)

(register-definition-prefixes "use-package-ensure" '("use-package-"))



(autoload 'use-package-jump-to-package-form "use-package-jump" "\
Attempt to find and jump to the `use-package' form that loaded PACKAGE.
This will only find the form if that form actually required
PACKAGE.  If PACKAGE was previously required then this function
will jump to the file that originally required PACKAGE instead.

\(fn PACKAGE)" t nil)

(register-definition-prefixes "use-package-jump" '("use-package-find-require"))



(autoload 'use-package-lint "use-package-lint" "\
Check for errors in `use-package' declarations.
For example, if the module's `:if' condition is met, but even
with the specified `:load-path' the module cannot be found." t nil)

(register-definition-prefixes "use-package-lint" '("use-package-lint-declaration"))




)
(let ((load-true-file-name "/home/das/.emacs.d/elpa/org-static-blog-20221212.1051/org-static-blog-autoloads.el")(load-file-name "/home/das/.emacs.d/elpa/org-static-blog-20221212.1051/org-static-blog-autoloads.el"))

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory "/home/das/.emacs.d/elpa/org-static-blog-20221212.1051/org-static-blog-autoloads.el") (car load-path))))



(autoload 'org-static-blog-publish "org-static-blog" "\
Render all blog posts, the index, archive, tags, and RSS feed.
Only blog posts that changed since the HTML was created are
re-rendered.

With a prefix argument, all blog posts are re-rendered
unconditionally.

\(fn &optional FORCE-RENDER)" t nil)

(autoload 'org-static-blog-publish-file "org-static-blog" "\
Publish a single POST-FILENAME.
The index, archive, tags, and RSS feed are not updated.

\(fn POST-FILENAME)" t nil)

(autoload 'org-static-blog-create-new-post "org-static-blog" "\
Creates a new blog post.
Prompts for a title and proposes a file name. The file name is
only a suggestion; You can choose any other file name if you so
choose.

\(fn &optional DRAFT)" t nil)

(autoload 'org-static-blog-create-new-draft "org-static-blog" "\
Creates a new blog draft.
Prompts for a title and proposes a file name. The file name is
only a suggestion; You can choose any other file name if you so
choose." t nil)

(autoload 'org-static-blog-mode "org-static-blog" "\
Blogging with org-mode and emacs.

\(fn)" t nil)

(register-definition-prefixes "org-static-blog" '("concat-to-dir" "org-static-blog-"))


)
(let ((load-true-file-name "/home/das/.emacs.d/elpa/org-journal-20221209.2122/org-journal-autoloads.el")(load-file-name "/home/das/.emacs.d/elpa/org-journal-20221209.2122/org-journal-autoloads.el"))



(add-to-list 'load-path (or (and load-file-name (file-name-directory load-file-name)) (car load-path)))




(add-hook 'calendar-today-visible-hook 'org-journal-mark-entries)
(add-hook 'calendar-today-invisible-hook 'org-journal-mark-entries)
(autoload 'org-journal-mode "org-journal" "\
Mode for writing or viewing entries written in the journal.

(fn)" t)
(define-obsolete-function-alias 'org-journal-open-next-entry 'org-journal-next-entry "2.1.0")
(define-obsolete-function-alias 'org-journal-open-previous-entry 'org-journal-previous-entry "2.1.0")
(autoload 'org-journal-convert-created-property-timestamps "org-journal" "\
Convert format of CREATED property timestamps.
Convert OLD-FORMAT or input to `org-journal-created-property-timestamp-format'.

(fn OLD-FORMAT)" t)
(autoload 'org-journal-new-entry "org-journal" "\
Open today's journal file and start a new entry.

With a PREFIX arg, open the today's file, create a heading if it
doesn't exist yet, but do not create a new entry.

If given a TIME, create an entry for the time's day. If no TIME
was given, use the current time (which is interpreted as
belonging to yesterday if smaller than `org-extend-today-until').

Whenever a journal entry is created the `org-journal-after-entry-create-hook'
hook is run.

(fn PREFIX &optional TIME)" t)
(autoload 'org-journal-new-date-entry "org-journal" "\
Open the journal for the date indicated by point and start a new entry.

If the date is not today, it won't be given a time heading. With
one prefix (C-u), don't add a new heading.

If the date is in the future, create a schedule entry, unless two
universal prefix arguments (C-u C-u) are given. In that case
insert just the heading.

(fn PREFIX &optional EVENT)" t)
(autoload 'org-journal-new-scheduled-entry "org-journal" "\
Create a new entry in the future with an active timestamp.

With non-nil prefix argument create a regular entry instead of a TODO entry.

(fn PREFIX &optional SCHEDULED-TIME)" t)
(autoload 'org-journal-reschedule-scheduled-entry "org-journal" "\
Reschedule an entry in the future.

(fn &optional TIME)" t)
(autoload 'org-journal-open-current-journal-file "org-journal" "\
Open the current journal file" t)
(autoload 'org-journal-invalidate-cache "org-journal" "\
Clear `org-journal--dates' hash table, and the cache file." t)
(autoload 'org-journal-mark-entries "org-journal" "\
Mark days in the calendar for which a journal entry is present." t)
(autoload 'org-journal-read-entry "org-journal" "\
Open journal entry for selected date for viewing.

(fn ARG &optional EVENT)" t)
(autoload 'org-journal-display-entry "org-journal" "\
Display journal entry for selected date in another window.

(fn ARG &optional EVENT)" t)
(autoload 'org-journal-read-or-display-entry "org-journal" "\
Read an entry for the TIME and either select the new window when NOSELECT
is nil or avoid switching when NOSELECT is non-nil.

(fn TIME &optional NOSELECT)")
(autoload 'org-journal-next-entry "org-journal" "\
Go to the next journal entry." t)
(autoload 'org-journal-previous-entry "org-journal" "\
Go to the previous journal entry." t)
(autoload 'org-journal-search "org-journal" "\
Search for a string in the journal files.

See `org-read-date' for information on ways to specify dates.
If a prefix argument is given, search all dates.

(fn STR &optional PERIOD-NAME)" t)
(autoload 'org-journal-search-calendar-week "org-journal" "\
Search for a string within a current calendar-mode week entries.

(fn STR)" t)
(autoload 'org-journal-search-calendar-month "org-journal" "\
Search for a string within a current calendar-mode month entries.

(fn STR)" t)
(autoload 'org-journal-search-calendar-year "org-journal" "\
Search for a string within a current calendar-mode year entries.

(fn STR)" t)
(autoload 'org-journal-search-forever "org-journal" "\
Search for a string within all entries.

(fn STR)" t)
(autoload 'org-journal-search-future "org-journal" "\
Search for a string within all future entries.

(fn STR)" t)
(autoload 'org-journal-search-future-scheduled "org-journal" "\
Search for TODOs within all future entries." t)
(register-definition-prefixes "org-journal" '("org-journal-"))


(provide 'org-journal-autoloads)


)
(let ((load-true-file-name "/home/das/.emacs.d/elpa/elfeed-20210822.2129/elfeed-autoloads.el")(load-file-name "/home/das/.emacs.d/elpa/elfeed-20210822.2129/elfeed-autoloads.el"))

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory "/home/das/.emacs.d/elpa/elfeed-20210822.2129/elfeed-autoloads.el") (car load-path))))



(autoload 'elfeed-update "elfeed" "\
Update all the feeds in `elfeed-feeds'." t nil)

(autoload 'elfeed "elfeed" "\
Enter elfeed." t nil)

(autoload 'elfeed-load-opml "elfeed" "\
Load feeds from an OPML file into `elfeed-feeds'.
When called interactively, the changes to `elfeed-feeds' are
saved to your customization file.

\(fn FILE)" t nil)

(autoload 'elfeed-export-opml "elfeed" "\
Export the current feed listing to OPML-formatted FILE.

\(fn FILE)" t nil)

(register-definition-prefixes "elfeed" '("elfeed-"))



(register-definition-prefixes "elfeed-csv" '("elfeed-csv-"))



(register-definition-prefixes "elfeed-curl" '("elfeed-curl-"))



(register-definition-prefixes "elfeed-db" '("elfeed-" "with-elfeed-db-visit"))



(register-definition-prefixes "elfeed-lib" '("elfeed-"))



(autoload 'elfeed-link-store-link "elfeed-link" "\
Store a link to an elfeed search or entry buffer.

When storing a link to an entry, automatically extract all the
entry metadata.  These can be used in the capture templates as
%:elfeed-entry-<prop>.  See `elfeed-entry--create' for the list
of available props." nil nil)

(autoload 'elfeed-link-open "elfeed-link" "\
Jump to an elfeed entry or search.

Depending on what FILTER-OR-ID looks like, we jump to either
search buffer or show a concrete entry.

\(fn FILTER-OR-ID)" nil nil)

(eval-after-load 'org `(funcall ',(lambda nil (if (version< (org-version) "9.0") (with-no-warnings (org-add-link-type "elfeed" #'elfeed-link-open) (add-hook 'org-store-link-functions #'elfeed-link-store-link)) (with-no-warnings (org-link-set-parameters "elfeed" :follow #'elfeed-link-open :store #'elfeed-link-store-link))))))



(register-definition-prefixes "elfeed-log" '("elfeed-log"))



(autoload 'elfeed-search-bookmark-handler "elfeed-search" "\
Jump to an elfeed-search bookmarked location.

\(fn RECORD)" nil nil)

(autoload 'elfeed-search-desktop-restore "elfeed-search" "\
Restore the state of an elfeed-search buffer on desktop restore.

\(fn FILE-NAME BUFFER-NAME SEARCH-FILTER)" nil nil)

(add-to-list 'desktop-buffer-mode-handlers '(elfeed-search-mode . elfeed-search-desktop-restore))

(register-definition-prefixes "elfeed-search" '("elfeed-s"))



(autoload 'elfeed-show-bookmark-handler "elfeed-show" "\
Show the bookmarked entry saved in the `RECORD'.

\(fn RECORD)" nil nil)

(register-definition-prefixes "elfeed-show" '("elfeed-"))



(register-definition-prefixes "xml-query" '("xml-query"))




)
(setq package-activated-list
      (append
       '(bind-key use-package org-static-blog org-journal elfeed)
       package-activated-list))
(progn
  (require 'info)
  (info-initialize)
  (setq Info-directory-list
	(append
	 '("/home/das/.emacs.d/elpa/use-package-20221209.2013")
	 Info-directory-list)))

;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; End:
