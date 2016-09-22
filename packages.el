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

(defvar geben-packages
  '(
    geben
    popwin
    ))

(defun geben/init-geben ()
  (use-package geben
    :defer t
    :init
    (progn
      (setq geben-display-window-function (quote popwin:display-buffer))
      (setq geben-temporary-file-directory (concat spacemacs-cache-directory "geben/"))

      (spacemacs/set-leader-keys
        "Gg" 'geben
        "Gp" 'geben-toggle-pause-at-entry-line-flag
        "Gr" 'geben-run
        "GR" 'geben-run-to-cursor
        "Gs" 'geben-stop
        "Gq" 'geben-end
        "Gf" 'geben-find-file
        "GF" 'geben-open-file
        "Gj" 'geben-step-again
        "Gk" 'geben-step-into
        "Gh" 'geben-step-over
        "Gl" 'geben-step-out
        "Gt" 'geben-show-backtrace
        "Gc" 'geben-display-context
        "Ga" 'geben-set-breakpoint-line
        "Gd" 'geben-set-breakpoint-call
        "GD" 'geben-set-breakpoint-return
        "Ge" 'geben-set-breakpoint-exception
        "GA" 'geben-unset-breakpoint-line
        "Gx" 'geben-clear-breakpoints)

      (spacemacs|define-transient-state geben
        :title "Geben Transient State"
        :doc "
 Steps            Breakpoints      Show             Actions
 ──────────────── ──────────────── ──────────────── ─────────────────────
 [_j_] step again [_d_] call       [_t_] backtrace  [_r_] run
 [_k_] step over  [_D_] return     [_c_] context    [_s_] stop
 [_h_] step into  [_e_] exception                   [_p_] pause at entry
 [_l_] step out   [_x_] clear"
        :bindings
        ("r" geben-run)
        ("s" geben-stop :exit t)
        ("p" geben-toggle-pause-at-entry-line-flag)
        ("j" geben-step-again)
        ("k" geben-step-over)
        ("h" geben-step-into)
        ("l" geben-step-out)
        ("t" geben-show-backtrace)
        ("c" geben-display-context :exit t)
        ("d" geben-set-breakpoint-call)
        ("D" geben-set-breakpoint-return)
        ("e" geben-set-breakpoint-exception)
        ("x" geben-clear-breakpoints))
      (spacemacs/set-leader-keys "G." 'spacemacs/geben-transient-state/body))))

(defun geben/pre-init-popwin ()
  (spacemacs|use-package-add-hook popwin
    :post-config
    (push
      '(".*backtrace\*" :regexp t :position bottom)
      popwin:special-display-config)))
