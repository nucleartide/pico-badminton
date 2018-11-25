module Player exposing (Meter(..))


type Meter number
    = Meter number


meterExample : Meter Float
meterExample =
    Meter 0.4


type Vec3
    = Vec3 (Meter Float) (Meter Float) (Meter Float)


vec3Example : Vec3
vec3Example =
    Vec3 (Meter 0.2) (Meter 0.3) (Meter 0.4)


type WorldSpace
    = WorldSpace Vec3


worldSpaceExample : WorldSpace
worldSpaceExample =
    WorldSpace (Vec3 (Meter 0.2) (Meter 0.3) (Meter 0.4))


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
