module Player exposing (Vec3)

import Lerp exposing (Lerp, lerp)
import Power exposing (Power, power)


type alias Meter =
    Float


type alias Vec3 a =
    ( a, a, a )


type WorldSpaceVec3
    = Vec3 Meter


type SpeedPerSecond
    = Meter


type alias KinematicBody a =
    { a
        | position : WorldSpaceVec3
        , velocity : WorldSpaceVec3
        , acceleration : WorldSpaceVec3
    }


type alias Player =
    KinematicBody
        { movementSpeed : SpeedPerSecond
        , movementSpeedLerp : Lerp
        }


type alias Angle =
    Float


type WithRacket
    = Idle Player Angle
    | Winding Player Angle
    | Swinging Player Angle Power


move : KinematicBody a -> KinematicBody a
move k =
    k



{-
   -- arm points


   type alias Draw =
       { screenPosition : Vec2
       }



   -- move : Player -> Player
   -- move player
   -- move arm
-}
