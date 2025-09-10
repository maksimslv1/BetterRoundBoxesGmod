[ English   |   [Russian](https://github.com/exilaurora/BetterRoundBoxesGmod/blob/main/README-RU.md) ]
# BetterRoundBoxesGmod
 Optimized rendering of rounded rectangles in Garry's Mod

### This library is now outdated, as there are more modern solutions. For example, [RNDX](https://github.com/Srlion/RNDX)

## Usage:

### Analog of the `draw.RoundedBoxEx` function
#### [`betterRB.DrawRoundedBoxEx`](https://github.com/maksimslv1/BetterRoundBoxesGmod/blob/master/betterroundbox.lua#L41-L46)( `number` cornerRadius, `number` x, `number` y, `number` width, `number` height, `table` color, `boolean` roundTopLeft = false, `boolean` roundTopRight = false, `boolean` roundBottomLeft = false, `boolean` roundBottomRight = false ) -> nil


### Analog of the `draw.RoundedBox` function
#### [`betterRB.DrawRoundedBox`](https://github.com/maksimslv1/BetterRoundBoxesGmod/blob/master/betterroundbox.lua#L48-L50)( `number` cornerRadius, `number` x, `number` y, `number` width, `number` height, `table` color ) -> nil

### Function to get a material of the required size with the required rounding
#### [`betterRB.GetRoundedBoxMaterial`](https://github.com/maksimslv1/BetterRoundBoxesGmod/blob/master/betterroundbox.lua#L15-L39)( `number` cornerRadius, `number` width, `number` height, `boolean` tl, `boolean` tr, `boolean` bl, `boolean` br ) -> iMaterial

## Important
 If you plan to use this library together with animations like `Panel:SizeTo` — make sure the optimized rendering functions are not being called. Otherwise you'll fill RAM with unnecessary cache.
