;;; packages.el --- geben layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Franz Luther Neulist Carroll <franzneulistcarroll@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst geben-packages '(geben
                           popwin))

(defun geben/init-geben ()
  (use-package geben
    :defer t
    :init
    (progn
      (setq geben-display-window-function (quote popwin:display-buffer))
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

        "Ga" 'geben-step-again
        "Gi" 'geben-step-into
        "Go" 'geben-step-over
        "Gu" 'geben-step-out

        "Gl" 'geben-set-breakpoint-line
        "GL" 'geben-unset-breakpoint-line
        "Gd" 'geben-set-breakpoint-call
        "GD" 'geben-set-breakpoint-return
        "Ge" 'geben-set-breakpoint-exception

        "Gp" 'geben-show-breakpoint-list
        "Gx" 'geben-clear-breakpoints)

      (spacemacs|define-transient-state geben
        :title "Geben Transient State"
        :doc "
 Steps            Breakpoints        Show                  Actions
 ──────────────── ────────────────── ───────────────────── ───────────
 [_j_] step again [_f_] call         [_t_] backtrace       [_s_] stop
 [_k_] step over  [_r_] return       [_c_] context         [_r_] run
 [_h_] step into  [_e_] exception    [_n_] breakpoint list
 [_l_] step out   [_x_] clear"
        :bindings
        ("s" geben-stop :exit t)
        ("r" geben-run)
        ("j" geben-step-again)
        ("k" geben-step-over)
        ("h" geben-step-into)
        ("l" geben-step-out)
        ("t" geben-show-backtrace)
        ("c" geben-display-context)
        ("n" geben-breakpoint-list)
        ("f" geben-set-breakpoint-call)
        ("r" geben-set-breakpoint-return)
        ("e" geben-set-breakpoint-exception)
        ("x" geben-clear-breakpoints))
      (spacemacs/set-leader-keys "Gj" 'spacemacs/geben-transient-state/body)
      )))

(defun geben/pre-init-popwin ()
  (spacemacs|use-package-add-hook popwin
    :post-config
    (push
      '(".*backtrace\*" :regexp t :position bottom)
      popwin:special-display-config)
    (push
      '(".*context\* fede" :regexp t :position left :stick t :noselect t :width 80)
      popwin:special-display-config)))
