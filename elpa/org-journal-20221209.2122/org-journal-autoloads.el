;;; org-journal-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (file-name-directory load-file-name)) (car load-path)))



;;; Generated autoloads from org-journal.el

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

;;; End of scraped data

(provide 'org-journal-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; org-journal-autoloads.el ends here
