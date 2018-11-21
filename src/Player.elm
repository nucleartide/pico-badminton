module Player exposing (Draw, KinematicBody, Player)

import Math exposing (Vec2, Vec3)


type alias KinematicBody a =
    { a
        | position : Vec3
        , velocity : Vec3
        , acceleration : Vec3
    }


type alias Player =
    KinematicBody
        { movementSpeed : Float
        , movementSpeedLerp : Float
        }


type WithRacket
    = Idle Player
    | Winding Player Angle
    | Swinging Player Power


type alias Angle =
    Float


type alias Power =
    Float



-- arm points


type alias Draw =
    { screenPosition : Vec2
    }



-- move player
-- move arm
