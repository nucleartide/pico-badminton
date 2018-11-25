module Player exposing (Meter(..))


type alias KinematicBody a =
    { a
        | position : WorldSpace
        , velocity : WorldSpace
        , acceleration : WorldSpace
    }


type alias KinematicBodyExample =
    KinematicBody
        { foo : String
        }


type SpeedPerSecond
    = ValidSpeed (Meter Float)
    | InvalidSpeed


speedPerSecond : Float -> SpeedPerSecond
speedPerSecond n =
    if n < 0 then
        InvalidSpeed

    else
        ValidSpeed (Meter n)


type Lerp
    = ValidLerp Float
    | InvalidLerp


lerp : Float -> Lerp
lerp n =
    if n < 0 || 1 < n then
        InvalidLerp

    else
        ValidLerp n


type alias Player =
    KinematicBody
        { movementSpeed : SpeedPerSecond
        , movementSpeedLerp : Lerp
        }

-- TODO: define message type
-- move : Player -> Player


{-
   type alias Angle =
       Float

   type WithRacket
       = Idle Player Angle
       | Winding Player Angle
       | Swinging Player Angle Power

   move : KinematicBody a -> KinematicBody a
   move k =
       k

      -- arm points


      type alias Draw =
          { screenPosition : Vec2
          }



      -- move arm

   -- jump
-}
