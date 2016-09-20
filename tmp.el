;;; keybindings.el --- geben keybindings
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Franz Luther Neulist Carroll <franzneulistcarroll@gmail.com>
;; URL: https://github.com/rubberydub/spacemacs-geben
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(spacemacs/set-leader-keys
  "Gg" 'geben
  "Ge" 'geben-end)

(defvar geben--ms-doc-toggle 0
  "Display a short doc when nil, full doc otherwise.")

(defvar geben--ms-documentation-long
  "
  [?]          toggle this help
  [a]          step again
  [i]          step into
  [o]          step over
  [r]          step out
  [g]          run
  [c]          run to cursor
  [b]          set a breakpoint on the current line
  [e]          set a breakpoint on exception
  [B]          display breakpoint menu
  [u]          unset a breakpoint at the current line
  [U]          clear all breakpoints
  [l]          show breakpoint list
  [>]          set redirect
  [t]          display backtrace
  [v]          display context
  [f]          open file
  [F]          find file
  [w]          where
  [s]          stop")

(defvar geben--ms-documentation-short
  "[a] again [i] into [o] over [r] out [g] run [c] run-cursor [b] breakp [u] unset-breakp [t] backtrace [v] context [f] file [s] stop [q] quit")

(defun geben//ms-doc ()
  "Return the docstring for the geben micro-state."
  (if (equal 1 geben--ms-doc-toggle)
      geben--ms-documentation-long
    geben--ms-documentation-short))

(spacemacs|define-micro-state geben
  :doc (geben//ms-doc)
  :use-minibuffer t
  :evil-leader "G."
  :bindings
  ("?" geben/show-help)
  ("a" geben-step-again)
  ("i" geben-step-into)
  ("o" geben-step-over)
  ("r" geben-step-out)
  ("g" geben-run)
  ("c" geben-run-to-cursor)
  ("b" geben-set-breakpoint-line)
  ("e" geben-set-breakpoint-exception)
  ("B" geben-breakpoint-menu)
  ("u" geben-unset-breakpoint-line)
  ("U" geben-clear-breakpoints)
  ("l" geben-show-breakpoint-list)
  (">" geben-set-redirect)
  ("t" geben-show-backtrace)
  ("v" geben-display-context)
  ("f" geben-open-file)
  ("F" geben-find-file)
  ("w" geben-where)
  ("s" geben-stop :exit t)
  ("q" nil :exit t)
  ("<return>" nil :exit t))
