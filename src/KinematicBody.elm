module KinematicBody exposing (KinematicBody)

import Math exposing (Vec3)


type alias KinematicBody a =
    { a
        | position : Vec3
        , velocity : Vec3
        , acceleration : Vec3
    }
