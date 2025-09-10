[ [English](README.md)   |   Russian ]
# BetterRoundBoxesGmod
 Оптимизированный рендеринг закругленных прямоугольников в Garry's mod

### Сейчас эта библиотека устарела, так как есть более современные решения. Например, [RNDX](https://github.com/Srlion/RNDX)

## Использование:

### Аналог функции `draw.RoundedBoxEx`
#### [`betterRB.DrawRoundedBoxEx`](https://github.com/maksimslv1/BetterRoundBoxesGmod/blob/master/betterroundbox.lua#L41-L46)( `number` cornerRadius, `number` x, `number` y, `number` width, `number` height, `table` color, `boolean` roundTopLeft = false, `boolean` roundTopRight = false, `boolean` roundBottomLeft = false, `boolean` roundBottomRight = false ) -> nil


### Аналог функции `draw.RoundedBox`
#### [`betterRB.DrawRoundedBox`](https://github.com/maksimslv1/BetterRoundBoxesGmod/blob/master/betterroundbox.lua#L48-L50)( `number` cornerRadius, `number` x, `number` y, `number` width, `number` height, `table` color ) -> nil

### Функция для получения материала нужного размера с нужным закруглением
#### [`betterRB.GetRoundedBoxMaterial`](https://github.com/maksimslv1/BetterRoundBoxesGmod/blob/master/betterroundbox.lua#L15-L39)( `number` cornerRadius, `number` width, `number` height, `boolean` tl, `boolean` tr, `boolean` bl, `boolean` br ) -> iMaterial

## Важно
 Если вы хотите использовать эту библиотеку вместе с анимациями наподобие `Panel:SizeTo` - удостоверьтесь, что функции оптимизированного рендеринга не вызываются. Иначе вы забьёте оперативную память ненужным кэшом.
