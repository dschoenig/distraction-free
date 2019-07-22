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
  (setq visual-fill-column-width 96)
  (visual-fill-column-mode)
  (spacemacs/toggle-vi-tilde-fringe-off)
  (spacemacs/toggle-auto-completion-off)
  )

(defun distraction-free-disable ()
  (interactive)
  (buffer-face-mode 0)
  (blink-cursor-mode 0)
  (writeroom-mode 0)
  (visual-line-mode 0)
  (setq truncate-lines nil)
  (setq line-spacing nil)
  (setq visual-fill-column-width nil)
  (spacemacs/toggle-highlight-current-line-globally-on)
  (spacemacs/toggle-vi-tilde-fringe-on)
  (spacemacs/toggle-auto-completion-on)
  )

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

(defun switch-to-text-mode ()
  (interactive)
  (if (get 'distraction-free-toggle 'state)
      (progn
        (distraction-free-disable)
        (text-mode)
        (distraction-free-enable)
        (spacemacs/toggle-fullscreen-frame-on)
        )
    (progn
      (text-mode))))

(defun switch-to-markdown-mode ()
  (interactive)
  (if (get 'distraction-free-toggle 'state)
      (progn
        (distraction-free-disable)
        (markdown-mode)
        (distraction-free-enable)
        (spacemacs/toggle-fullscreen-frame-on)
        )
    (progn
      (markdown-mode))))

(defun distraction-free-focus ()
  (interactive)
  (if (get 'distraction-free-focus 'state)
      (progn
        (put 'distraction-free-focus 'state nil)
        (switch-to-markdown-mode)
        (spacemacs/toggle-highlight-current-line-globally-off)
        (distraction-free-focus-off))
    (progn
      (put 'distraction-free-focus 'state t)
      (switch-to-text-mode)
      (spacemacs/toggle-highlight-current-line-globally-on)
      (distraction-free-focus-on))))

;;; funcs.el ends here
