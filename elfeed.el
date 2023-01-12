;; -----------------------------------------------------------------------------
;; configure elfeed
;; -----------------------------------------------------------------------------

(use-package elfeed
  :ensure t
  :config
  (global-set-key (kbd "C-x w") 'elfeed)
  (setq elfeed-db-directory "~/data/elfeeddb")
  (setq elfeed-feeds
	'(
	  ;; ("https://consultingsmiths.com/feed/" me)
	  ("https://casorosendi.wordpress.com/feed/" catholic)
	  ;; emacs - tech
	  ("https://batsov.com/atom.xml" batsov emacs)
	  ("https://cheapskatesguide.org/cheapskates-guide-rss-feed.xml" cheapskates tech)
	  ("https://emacsredux.com/atom.xml" batsov emacs)
	  ("https://irreal.org/blog/?feed=rss2" irreal emacs)
	  ("https://jao.io/blog/rss.xml" jao emacs physics)
	  ("https://karl-voit.at/feeds/lazyblorg-all.atom_1.0.links-and-content.xml" voit emacs)
	  ("https://metaredux.com/feed.xml" batsov emacs)
	  ("http://planet.lisp.org/rss20.xml" planetlisp lisp)
	  ("https://programminghistorian.org/feed.xml" historian emacs)
	  ("https://protesilaos.com/codelog.xml" protesilaos emacs)
	  ("https://www.rousette.org.uk/index.xml" bsag emacs)
	  ("https://sachachua.com/blog/feed" sachachua emacs)
	  ("https://tech.toryanderson.com/index.xml" tory emacs)
	  ("http://unixsheikh.com/feed.rss" unixsheikh)
	  ;; commentary
	  ("https://jamesaltucher.com/feed/" altucher)
	  ;; ("http://assistantvillageidiot.blogspot.com/feeds/posts/default" avi)
	  ("http://charltonteaching.blogspot.com/feeds/posts/default" charlton)
	  ("https://www.clairewolfe.com/blog/feed/" claire wolfe)
	  ("https://judithcurry.com/feed/" climate science)
	  ("http://www.ncobrief.com/index.php/feed/" ncobrief)
	  ("https://off-guardian.org/feed/" off-guard)
	  ;; ("http://www.thepassivevoice.com/feed/" passivevoice publishing)
	  ("http://rachelbythebay.com/w/atom.xml" rachelbythebay)
	  ;; ("https://seandietrich.com/feed/" sean of the south)
	  ;; ("https://stromata.typepad.com/stromata_blog/atom.xml" stromata)
	  ("http://wmbriggs.com/feed/" briggs statistics aquinas watts)
	  ("https://wattsupwiththat.com/feed/" climate science)
	  ("https://stevenpressfield.com/feed/" pressfield writing)
	  ("http://feeds.feedburner.com/typepad/sethsmainblog" godin)
	  ))
  (setq-default elfeed-search-filter "@2-year-old"))
