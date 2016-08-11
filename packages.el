;;; packages.el --- geben layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Franz Luther Neulist Carroll <franzneulistcarroll@gmail.com>
;; URL: https://github.com/rubberydub/spacemacs-geben
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst geben-packages '(geben))


(defun geben/init-geben ()
  (use-package geben
    :init
    (progn
      (spacemacs/set-leader-keys
        "Ka" 'geben
        "Kr" 'geben-run
        "Kx" 'geben-stop
        "Ke" 'geben-end
        "Kp" 'geben-proxy
        "Kn" 'geben-proxy-end
        "Kw" 'geben-where
        "Kq" 'geben-quit-window
        "Kv" 'geben-set-redirect
        "Kh" 'geben-mode-help
        "Km" 'geben-toggle-pause-at-entry-line-flag
        "Kj" 'geben-eval-expression
        "Kk" 'geben-eval-current-word
        "Ki" 'geben-run-to-cursor
        "Kg" 'geben-full-frame-mode
        "Ko" 'geben-open-file
        "Kf" 'geben-find-file

        "Kcd" 'geben-display-context
        "Kcm" 'geben-context-mode
        "Kch" 'geben-context-mode-help
        "Kcr" 'geben-context-mode-refresh

        "Ktt" 'geben-show-backtrace
        "Ktm" 'geben-backtrace-mode
        "Kth" 'geben-backtrace-mode-help
        "Ktg" 'geben-backtrace-mode-goto
        "Kth" 'geben-backtrace-mode-mouse-goto
        "Ktc" 'geben-backtrace-mode-mode-context

        "Ksi" 'geben-step-into
        "Kso" 'geben-step-over
        "Ksu" 'geben-step-out
        "Ksa" 'geben-step-again

        "Kbm" 'geben-breakpoint-menu
        "Kbi" 'geben-show-breakpoint-list
        "Kbc" 'geben-clear-breakpoints
        "Kbu" 'geben-unset-breakpoint-line

        "Kble" 'geben-breakpoint-list-execute
        "Kblr" 'geben-breakpoint-list-refresh
        "Kblu" 'geben-breakpoint-list-unmark
        "Kblh" 'geben-breakpoint-list-mode-help
        "Kblg" 'geben-breakpoint-list-mode-goto
        "Kbld" 'geben-breakpoint-list-mark-delete

        "Kbsi" 'geben-set-breakpoint-conditional
        "Kbsr" 'geben-set-breakpoint-return
        "Kbsl" 'geben-set-breakpoint-line
        "Kbse" 'geben-set-breakpoint-exception
        "Kbsw" 'geben-set-breakpoint-watch
        "Kbsc" 'geben-set-breakpoint-call))))
