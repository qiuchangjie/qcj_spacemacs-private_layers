;;; packages.el --- luastyle-file-header layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author:  <Administrator@LYWY-20170407PM>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `luastyle-file-header-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `luastyle-file-header/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `luastyle-file-header/pre-init-PACKAGE' and/or
;;   `luastyle-file-header/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst luastyle-file-header-packages
  '()
  "The list of Lisp packages required by the luastyle-file-header layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun insert-luastyle-file-header ()
  (interactive ())
  (goto-char (point-min))
  (insert "----------------------------------------------------------------------------------------\n")
  (insert (format-time-string "-- Copyright(c)%Y All Rights Reserved.\n"))
  (insert "--\n")
  (insert "--      Filename:  " (file-name-nondirectory (buffer-file-name)) "\n")
  (insert "--        Author:  ChangJie.Qiu\n")
  (insert "--    CreateTime:  " (format-time-string "%Y-%m-%d") "\n")
  (insert "--       Version:  V1.0.0\n")
  (insert "--         Email:  changjie_qiu@zhwyd.com\n")
  (insert "--  Organization:  ZH.WYD\n")
  (insert "--   Description:  \n")
  (insert "--------------------------------------------------------------------------------------\n")
  (insert "-- ModifyInfo\n")
  (insert "--      Modifier:  \n")
  (insert "--    ModifyTime:  \n")
  (insert "--       Version:  \n")
  (insert "--   Description:  \n")
  (insert "---------------------------------------------------------------------------------------\n")
  )

;;; packages.el ends here
