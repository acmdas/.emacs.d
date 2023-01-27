;; -----------------------------------------------------------------------------
;; configure org-static-blog
;; -----------------------------------------------------------------------------

(setq org-static-blog-publish-title "David's Ramblings")
(setq org-static-blog-publish-url "https://www.dasmith.xyz/")
(setq org-static-blog-publish-directory "~/data/org/blog/")
(setq org-static-blog-posts-directory "~/data/org/blog/posts/")
(setq org-static-blog-drafts-directory "~/data/org/blog/drafts/")
(setq org-static-blog-enable-tags t)
;; configure home page
(setq org-static-blog-use-preview t)
(setq org-static-blog-preview-start nil)
(setq org-static-blog-preview-end nil)
(setq org-static-blog-preview-convert-titles t)
(setq org-static-blog-preview-ellipsis "more ...")
(setq org-static-blog-no-post-tag "nonpost")
(setq org-static-blog-preview-link-p t)
(setq org-static-blog-preview-date-first-p t)
(setq org-static-blog-preview-convert-titles t)
(setq org-static-blog-index-length 30)
(setq org-static-blog-rss-max-entries 30)

(setq org-export-with-toc nil)
(setq org-export-with-section-numbers nil)

(setq org-static-blog-page-header
"<meta name=\"author\" content=\"David Smith\">
<meta name=\"referrer\" content=\"no-referrer\">
<link href= \"static/style.css\" rel=\"stylesheet\" type=\"text/css\" />
<link rel=\"icon\" href=\"static/favicon.ico\">
<link rel=\"apple-touch-icon-precomposed\" href=\"static/favicon-152.png\">
<link rel=\"msapplication-TitleImage\" href=\"static/favicon-144.png\">
<link rel=\"msapplication-TitleColor\" href=\"#0141ff\">
; <script src=\"static/katex.min.js\"></script>
; <script src=\"static/auto-render.min.js\"></script>
; <script src=\"static/lightbox.js\"></script>
; <link rel=\"stylesheet\" href=\"static/katex.min.css\">
; <script>document.addEventListener(\"DOMContentLoaded\", function() { renderMathInElement(document.body); });</script>
<meta http-equiv=\"content-type\" content=\"application/xhtml+xml; charset=UTF-8\">
<meta name=\"viewport\" content=\"initial-scale=1,width=device-width,minimum-scale=1\">")

(setq org-static-blog-page-preamble
"<div class=\"header\">
  <a href=\"https://www.dasmith.xyz\">David's Ramblings</a>
  <div class=\"sitelinks\">
    <a href=\"https://www.dasmith.xyz\">Home</a> | <a href=\"https://www.dasmith.xyz/about.html\">About</a>
  </div>
 </div>")

(setq org-static-blog-page-postamble
"<div id=\"archive\">
  <a href=\"https://www.dasmith.xyz/archive.html\">Other posts</a>
</div>
<center>David's Ramblings &#169; 2023 David Smith - Certified 100% AI-Free Content</center>")
