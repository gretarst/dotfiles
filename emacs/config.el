;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Gretar Magnusson"
      user-mail-address "gretar@gstm.io")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq doom-font (font-spec :family "Iosevka" :size 18))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/orgfiles/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(after! projectile
  (setq projectile-project-search-path '("~/Projects/Personal", "~/Projects/Work", "~/Projects/Courses"))
  (projectile-add-known-project "~/Projects/Personal/advent-of-code")
  (projectile-add-known-project "~/Projects/Personal/stockwright")
  (projectile-add-known-project "~/Projects/Personal/monkey-interpreter-go")
  (projectile-add-known-project "~/Projects/Work/future-plc/bordeaux")
  (projectile-add-known-project "~/Projects/Courses/rustlings")
  (projectile-add-known-project "~/Projects/Work/future-plc/fte")
  (projectile-add-known-project "~/Projects/Work/future-plc/freyr")
  (projectile-add-known-project "~/Projects/Work/future-plc/champagne")
  (projectile-add-known-project "~/Projects/Courses/codecrafters-git-rust")
  (projectile-add-known-project "~/Projects/Courses/dune_exercises")
  ;; add more projects here
  )

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(defun set-almost-maximized ()
  "Set the new frame to 90% of available screen width and height and center it."
  (let* ((display-width (display-pixel-width))
         (display-height (display-pixel-height))
         (new-width (truncate (* 0.9 display-width)))
         (new-height (truncate (* 0.9 display-height)))
         ;; Calculate the center position
         (x-pos (truncate (/ (- display-width new-width) 2)))
         (y-pos (truncate (/ (- display-height new-height) 2))))
    ;; Set the frame size and position
    (set-frame-size (selected-frame) new-width new-height t)
    (set-frame-position (selected-frame) x-pos y-pos)))

(set-almost-maximized)

(add-to-list 'load-path
             "/Users/gretar.magnusson/.opam/default/share/emacs/site-lisp")
(require 'ocp-indent)
