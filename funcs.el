;;; funcs.el --- distraction-free layer functions for Spacemacs.
;;
;; Author: Daniel Schoenig
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;;; Code:

(defun distraction-free-toggle ()
  (interactive)
  (if (get 'distraction-free-toggle 'state)
      (progn
        (put 'distraction-free-toggle 'state nil)
        (distraction-free-disable))
    (progn
      (put 'distraction-free-toggle 'state t)
      (distraction-free-enable))))

(defun distraction-free-typewriter ()
  (interactive)
  (if (get 'distraction-free-typewriter 'state)
      (progn
        (put 'distraction-free-typewriter 'state nil)
        (setq maximum-scroll-margin maximum-scroll-margin-saved
              scroll-margin scroll-margin-saved
              scroll-preserve-screen-position scroll-preserve-screen-position
              scroll-conservatively scroll-conservatively-saved))
    (progn
      (put 'distraction-free-typewriter 'state t)
      (setq maximum-scroll-margin-saved maximum-scroll-margin
            scroll-margin-saved scroll-margin
            scroll-preserve-screen-position-saved scroll-preserve-screen-position
            scroll-conservatively-saved scroll-conservatively)
      (setq maximum-scroll-margin 0.5
            scroll-margin 99999
            scroll-preserve-screen-position t
            scroll-conservatively 0))))

(defun distraction-free-enable ()
  (interactive)
  (setq buffer-face-mode-face '(:family "iA Writer Mono V" :height 150))
  (buffer-face-mode)
  (linum-mode 0)
  (blink-cursor-mode 1)
  (writeroom-mode 1)
  (setq bottom-divider-width 0)
  (spacemacs/toggle-visual-line-navigation-on)
  (setq truncate-lines nil)
  (setq line-spacing 0.65)
  (spacemacs/toggle-highlight-current-line-globally-off)
  (setq visual-fill-column-width 108)
  (visual-fill-column-mode)
  )

(defun distraction-free-disable ()
  (interactive)
  (buffer-face-mode 0)
  (blink-cursor-mode 0)
  (writeroom-mode 0)
  (visual-line-mode 0)
  (setq truncate-lines nil)
  (setq line-spacing nil)
  (setq visual-fill-column-width 80)
  (spacemacs/toggle-highlight-current-line-globally-on)
  )

;;; funcs.el ends here
