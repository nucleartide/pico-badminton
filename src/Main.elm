module Main exposing (Ball, Camera, GameRound(..), Line, Mat3, Model, PlayerDir(..), PlayerSide(..), Vec3, add, camProject, cross, dist, dot, drawLine, isClockwise, isEqual, lerp, magnitude, main, mul, mulMat3, normalize, reach, rotateX, rotateY, round, scale, sub, update, vecLerp, view, zero, zeroMat)

import Browser
import Html exposing (text)
import Player



--
-- Boilerplate.
--


main =
    Browser.sandbox { init = 0, update = update, view = view }


update _ model =
    model


view model =
    text "hello world"



--
-- Messages.
--
--
-- Model.
--
-- See https://gist.github.com/theburningmonk/0610b75b24b3b7ca0d1c.
-- for how to extend record types.
--


type PlayerSide
    = LeftSide
    | RightSide


type alias Model =
    { camera : Camera
    , score : Int
    }



{-
   type Player
       = Server PlayerFields
       | Receiver PlayerFields
-}


type PlayerDir
    = Forward
    | Backward



-- bounds check


type alias Ball =
    { position : Vec3
    , shadowPosition : Vec3
    , screenPosition : Vec3
    , screenShadowPosition : Vec3
    , velocity : Vec3
    , acceleration : Vec3
    , drag : Vec3
    , isKinematic : Bool
    }



-- net
-- net collisions
-- court


type GameRound
    = PreServe
    | Serving
    | Rally
    | PostRally



--
-- Utils.
--


type alias Vec3 =
    ( Float, Float, Float )


type alias Mat3 =
    ( Vec3, Vec3, Vec3 )


zero : Vec3
zero =
    ( 0, 0, 0 )


zeroMat : Mat3
zeroMat =
    ( zero, zero, zero )


add : Vec3 -> Vec3 -> Vec3
add _ _ =
    zero


sub : Vec3 -> Vec3 -> Vec3
sub _ _ =
    zero


mul : Vec3 -> Vec3 -> Vec3
mul _ _ =
    zero


mulMat3 : Vec3 -> Mat3 -> Vec3
mulMat3 _ _ =
    zero


dot : Vec3 -> Vec3 -> Float
dot _ _ =
    0


cross : Vec3 -> Vec3 -> Vec3
cross _ _ =
    zero


scale : Vec3 -> Float -> Vec3
scale _ _ =
    zero


magnitude : Vec3 -> Float
magnitude _ =
    0


dist : Vec3 -> Vec3 -> Float
dist _ _ =
    0


normalize : Vec3 -> Vec3
normalize _ =
    zero


vecLerp : Vec3 -> Vec3 -> Vec3
vecLerp _ _ =
    zero


isEqual : Vec3 -> Vec3 -> Bool
isEqual _ _ =
    False


rotateX : Float -> Mat3
rotateX _ =
    zeroMat


rotateY : Float -> Mat3
rotateY _ =
    zeroMat


round : Float -> Float
round _ =
    0


lerp : Float -> Float -> Float -> Float
lerp _ _ _ =
    0


isClockwise : List Vec3 -> Bool
isClockwise _ =
    False



--
-- Render.
--
-- TODO: Z-sorting.


type alias Line =
    { stuff : Int
    }


drawLine : Line -> Int
drawLine _ =
    0



--
-- Game logic.
--
-- i would consider this a util


reach : ( Vec3, Vec3 ) -> Vec3 -> ( Vec3, Vec3 )
reach _ _ =
    ( zero, zero )



--
-- Camera.
--


type alias Camera =
    { position : Vec3
    , xAngle : Float
    , mx : Mat3
    , yAngle : Float
    , my : Mat3
    , dist : Float
    , fov : Float
    }


camProject : Camera -> Vec3 -> Vec3
camProject _ _ =
    zero
