module Lerp exposing (Lerp, lerp)


type Lerp
    = ValidLerp Float
    | InvalidLerp


lerp : Float -> Lerp
lerp n =
    if 0 <= n && n <= 1 then
        ValidLerp n

    else
        InvalidLerp
