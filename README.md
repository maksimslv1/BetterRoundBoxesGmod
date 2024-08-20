# BetterRoundBoxesGmod
 Оптимизированный рендеринг закругленных квадратов в Garry's mod

## Использование:

### Аналог `draw.RoundedBoxEx`
#### [`betterRB.DrawRoundedBoxEx`](https://github.com/maksimslv1/BetterRoundBoxesGmod/blob/master/betterroundbox.lua#L52-L56)( `number` cornerRadius, `number` x, `number` y, `number`width, `number` height, `table` color, `boolean` roundTopLeft = false, `boolean`roundTopRight = false, `boolean` roundBottomLeft = false, `boolean`roundBottomRight = false ) -> nil


### Аналог ``draw.RoundedBox``
#### [`betterRB.DrawRoundedBox`](https://github.com/maksimslv1/BetterRoundBoxesGmod/blob/master/betterroundbox.lua#L57-L61)( `number` cornerRadius, `number` x, `number` y, `number` width, `number` height, `table` color ) -> nil

### Функция для получения материала нужного размера с нужным закруглением
#### [`betterRB.GetRoundedBoxMaterial`](https://github.com/maksimslv1/BetterRoundBoxesGmod/blob/master/betterroundbox.lua#L14-L50)( `number` cornerRadius, `number` w, `number` h, `boolean` tl, `boolean` tr, `boolean` bl, `boolean` br ) -> iMaterial

## Настройки

[`useFilesCache`](https://github.com/maksimslv1/BetterRoundBoxesGmod/blob/master/betterroundbox.lua#L3) - Хранить ли материалы в файлах. Может пригодиться только в том случае, если вы хотите разрешить игрокам вашего сервера кастомизировать ui элементы