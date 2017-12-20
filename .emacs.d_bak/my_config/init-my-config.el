;;; init-my-config.el --- some personal setup for emacs
;;
;; This file will load by ~/.emacs.d/init.el, and when it
;; be loaded, it will to load some my personal emacs config
;; .el files on ~/.emacs.d/my_config/ directory.
;;
;;; 

;; load custom package
; add cscope plugin
(require 'xcscope)
; use sdcv to query word
(require 'init-sdcv-mode)
  (global-set-key (kbd "C-c d") 'sdcv-search)
; set power line
(setq powerline-default-separator 'nil)

;; some setting for edit files
; run xmodmap command to remap Super_R key to Menu key
(shell-command-to-string "xmodmap ~/.xmodmaprc")
; 字体设置
(set-default-font "-unknown-Liberation Mono-normal-normal-normal-*-18-*-*-*-m-0-iso10646-1")
; 默认显示 80列就换行 
(setq default-fill-column 80) 
; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t) 
; 以 y/n代表 yes/no
(fset 'yes-or-no-p 'y-or-n-p) 

;; ibus input method
;(require 'ibus)
;(add-hook 'after-init-hook 'ibus-mode-on)

;; set emacs origin input method
(setq default-input-method 'chinese-py-punct)


(provide 'init-my-config)
