;;; buffer-flash --- Genuine files to be fake, fake files to be genuine

;; Copyright (C) 2018- blue0513

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

;; Author: blue0513
;; URL: https://github.com/blue0513
;; Version: 0.0.1

;;; Commentary:

;; Load this script
;;
;;   (require 'buffer-flash)
;;
;; You can flash current buffer by calling
;;
;;   M-x flash-foreground RET
;;   M-x flash-background RET
;;

;;; Code:

(defun flash-foreground ()
  "Flash foreground."
  (interactive)
  (let ((orig-fg (face-attribute 'default :foreground)))
    (set-face-foreground 'default "black")
    (run-with-idle-timer 0.1 nil
			 (lambda (fg) (set-face-foreground 'default fg))
			 orig-fg)))

(defun flash-background ()
  "Flash background."
  (interactive)
  (let ((orig-bg (face-attribute 'default :background)))
    (set-face-background 'default "black")
    (run-with-idle-timer 0.1 nil
			 (lambda (bg) (set-face-background 'default bg))
			 orig-bg)))

;; * provide

(provide 'buffer-flash)

;;; buffer-flash.el ends here
