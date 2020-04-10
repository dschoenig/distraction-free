# Distraction-free layer

## Description

This layer adds a distraction-free writing environment to Spacemacs, taking inspiration from [iA Writer](https://ia.net/writer), which is unfortunately not available for Linux. The layer relies mainly on the [`writeroom-mode`](https://github.com/joostkremers/writeroom-mode) package. It works well in conjunction with the `markdown` layer of Spacemacs. The layer also includes the [`writegood-mode`](https://github.com/bnbeckwith/writegood-mode) package.

By using the `distraction-free-typewriter` function, the vertical position of cursor may be fixed to the middle of the screen.


## Install

To use this configuration layer, place it into ~/.emcas.d/private/ 

    git clone https://github.com/dschoenig/distraction-free ~/.emacs.d/private

Then add `distraction-free` to the existing `dotspacemacs-configuration-layers` list in you `~/.spacemacs` file.

The layer depends on the [iA Writer fonts](https://github.com/iaolo/iA-Fonts) to be installed. Optionally, you can install the [corresponding theme](https://github.com/dschoenig/distraction-free-theme) which attempts to emulate the colour scheme used by iA Writer. The theme is also necessary for the `Focus on current line` functionality, as the corresponding adjustments for colours and highlighting are specified within the theme, in the functions `distraction-free-focus-on` and `distraction-free-focus-off`.


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
