;;; packages.el --- distraction-free layer packages file for Spacemacs.
;;
;; Author: Daniel Schoenig <danielschoenig@pop-os>
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;;; Code:

(setq distraction-free-packages
  '(
    visual-fill-column
    writeroom-mode
    writegood-mode
    ))

(defun distraction-free/init-visual-fill-column ()
  (use-package visual-fill-column :defer t))

(defun distraction-free/init-writeroom-mode ()
  (use-package writeroom-mode :defer t))

(defun distraction-free/init-writegood-mode ()
  (use-package writegood-mode :defer t))

;;; packages.el ends here
