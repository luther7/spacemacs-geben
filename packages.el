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
      (setq geben-display-window-function (quote popwin:display-buffer)))))

(defun geben/pre-init-popwin ()
  (spacemacs|use-package-add-hook popwin
    :post-config
    (push
      '(".*backtrace\*" :regexp t :position bottom)
      popwin:special-display-config)
    (push
      '(".*context\*" :regexp t :position left :stick t :noselect t :width 80)
      popwin:special-display-config)))
