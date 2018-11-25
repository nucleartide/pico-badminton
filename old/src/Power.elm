module Power exposing (Power, power)


type Power
    = ValidPower Float
    | InvalidPower


power : Float -> Power
power n =
    if 0 <= n then
        ValidPower n

    else
        InvalidPower
