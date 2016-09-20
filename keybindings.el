;;; keybindings.el --- Geben keybindings
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Franz Luther Neulist Carroll <franzneulistcarroll@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(spacemacs/set-leader-keys
  "Gg" 'geben
  "Gr" 'geben-run
  "GR" 'geben-run-to-cursor
  "Gs" 'geben-stop
  "Gq" 'geben-end

  "Gf" 'geben-open-file
  "GF" 'geben-find-file
  "Gw" 'geben-where

  "Gc" 'geben-display-context

  "Gt" 'geben-show-backtrace

  "Gi" 'geben-step-into
  "Go" 'geben-step-over
  "Gu" 'geben-step-out
  "Ga" 'geben-step-again

  "Gl" 'geben-set-breakpoint-line
  "GL" 'geben-unset-breakpoint-line
  "Gd" 'geben-set-breakpoint-call
  "GD" 'geben-set-breakpoint-return
  "Ge" 'geben-set-breakpoint-exception

  "Gp" 'geben-show-breakpoint-list
  "Gx" 'geben-clear-breakpoints)

  ;"Gp" 'geben-proxy
  ;"Gn" 'geben-proxy-end
  ;"Gq" 'geben-quit-window
  ;"Gv" 'geben-set-redirect
  ;"Gh" 'geben-mode-help
  ;"Gm" 'geben-toggle-pause-at-entry-line-flag
  ;"Gj" 'geben-eval-expression
  ;"Gk" 'geben-eval-current-word
  ;"Gg" 'geben-full-frame-mode

  ;"Gcm" 'geben-context-mode
  ;"Gch" 'geben-context-mode-help
  ;"Gcr" 'geben-context-mode-refresh

  ;"Gtm" 'geben-backtrace-mode
  ;"Gth" 'geben-backtrace-mode-help
  ;"Gtg" 'geben-backtrace-mode-goto
  ;"Gth" 'geben-backtrace-mode-mouse-goto
  ;"Gtc" 'geben-backtrace-mode-mode-context

  ;"Gbm" 'geben-breakpoint-menu
  ;"Gble" 'geben-breakpoint-list-execute
  ;"Gblr" 'geben-breakpoint-list-refresh
  ;"Gblu" 'geben-breakpoint-list-unmark
  ;"Gblh" 'geben-breakpoint-list-mode-help
  ;"Gblg" 'geben-breakpoint-list-mode-goto
  ;"Gbld" 'geben-breakpoint-list-mark-delete

  ;"Gbsi" 'geben-set-breakpoint-conditional
  ;"Gbsw" 'geben-set-breakpoint-watch)
