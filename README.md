# Distraction-free layer

## Description

This layer adds a distraction-free writing environment to Spacemacs, taking inspiration from [iA Writer](https://ia.net/writer), which is unfortunately not available for Linux. The layer relies mainly on the [`writeroom-mode`](https://github.com/joostkremers/writeroom-mode) package. It works well in conjunction with the `markdown` layer of Spacemacs. The layer also includes the [`writegood-mode`](https://github.com/bnbeckwith/writegood-mode) package.

By using the `distraction-free-typewriter` function, the vertical position of cursor may be fixed to the middle of the screen.


## Install

To use this configuration layer, place it into ~/.emcas.d/private/ 

    git clone https://github.com/dschoenig/distraction-free ~/.emacs.d/private

Then add `distraction-free` to the existing `dotspacemacs-configuration-layers` list in you `~/.spacemacs` file.

The layer depends on the [iA Writer fonts](https://github.com/iaolo/iA-Fonts) to be installed. Optionally, you can install the [corresponding theme](https://github.com/dschoenig/distraction-free-theme) which attempts to emulate the colour scheme used by iA Writer. The theme is also necessary for the `Focus on current line` functionality, as the corresponding adjustments for colours and highlighting are specified within the theme, in the functions `distraction-free-focus-on` and `distraction-free-focus-off` (as they are theme-specific).

When switching between `Text` and `Markdown` modes, markdown syntax maybe masked, and can be restored with `markdown-toggle-markup-hiding`. If this behavior bothers you, add the following line to `dotspacemcs/user-config ()` in your `~/.spacemacs`:
    
    (defun dotspacemacs/user-config ()
      (add-hook 'text-mode-hook (lambda () (remove-from-invisibility-spec 'markdown-markup)))
      )

If you prefer markdown syntax to remain visible in general, consider the following options for the `markdown` and `org` layers:

    dotspacemacs-configuration-layers
    '(
      (markdown :variables
                markdown-hide-markup nil
                markdown-hide-markup-in-view-modes nil
                markdown-hide-urls nil)
      (org :variables
           org-hide-emphasis-markers nil)
      )


## Keybindings

| Key Binding | Description                     |
| :--         | :--                             |
| `SPC W d`   | Toggle distraction-free editing |
| `SPC W t`   | Toggle typewriter-like editing  |
| `SPC W f`   | Focus on current line           |
| `SPC W w`   | Enable writegood-mode           |
| `SPC W m t` | Switch to text mode             |
| `SPC W m m` | Switch to markdown mode         |

Font size and writing area can be scaled by entering the font scaling transient state with `SPC z x`.
