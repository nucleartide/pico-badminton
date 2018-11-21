module Player exposing (Draw, Player, Rigidbody)

import Math exposing (Vec3)


type alias Rigidbody a =
    { a
        | position : Vec3
        , velocity : Vec3
        , acceleration : Vec3
    }


type alias Player =
    Rigidbody
        { foo : String
        }


type alias Draw =
    { bar : String
    }
