(spacemacs/declare-prefix "d" "distraction free")
(spacemacs/declare-prefix "dm" "switch mode")
(spacemacs/set-leader-keys
  "Wd" 'distraction-free-toggle
  "Wf" 'distraction-free-focus
  "Wt" 'distraction-free-typewriter
  "Ww" 'writegood-mode
  "Wmt" 'switch-to-text-mode
  "Wmm" 'switch-to-markdown-mode)

