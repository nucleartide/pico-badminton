import Browser
import Html exposing (text)

--
-- Boilerplate.
--

main = Browser.sandbox { init = 0, update = update, view = view }
update _     model = model
view   model       = text "hello world"

--
-- Messages.
--

type Msg =
  Something

type Button
  = Left
  | Right
  | Up
  | Down
  | Z
  | X

--
-- Model.
--
-- See https://gist.github.com/theburningmonk/0610b75b24b3b7ca0d1c.
-- for how to extend record types.
--

type PlayerSide
  = Left
  | Right

type PlayerStance
  = Forehand
  | Backhand

type SwingState
  = Idle
  | Winding
  | Swing

type alias Model =
  { player         : Player
  , renderedPlayer : RenderedPlayer
  , camera         : Camera
  , score          : Int
  }

type Player
  = Server   PlayerFields
  | Receiver PlayerFields

type PlayerDir
  = Forward
  | Backward

type alias PlayerFields =
  { position     : Vec3
  , velocity     : Vec3
  , acceleration : Vec3
  , playerSide   : PlayerSide
  , playerStance : PlayerStance
  , desiredSpeed : Float
  , desiredSpeedLerpFactor : Float
  , playerSide : PlayerSide
  , playerDir : PlayerDir
  , playerStance : PlayerStance
  , swingState : SwingState
  , swingFrames : Float
  , swingPower : Float
  -- arm points
  -- arm screen points
  }

-- move player
-- move arm
-- bounds check

type alias RenderedPlayer =
  { screenPosition: Vec3
  }

type alias Ball =
  { position : Vec3
  , shadowPosition : Vec3
  , screenPosition : Vec3
  , screenShadowPosition : Vec3
  , velocity : Vec3
  , acceleration : Vec3
  , drag : Vec3
  , isKinematic: Bool
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

type alias Vec3 = (Float, Float, Float)

type alias Mat3 = (Vec3, Vec3, Vec3)

zero : Vec3
zero = (0, 0, 0)

zeroMat : Mat3
zeroMat = (zero, zero, zero)

add : Vec3 -> Vec3 -> Vec3
add _ _ = zero

sub : Vec3 -> Vec3 -> Vec3
sub _ _ = zero

mul : Vec3 -> Vec3 -> Vec3
mul _ _ = zero

mulMat3 : Vec3 -> Mat3 -> Vec3
mulMat3 _ _ = zero

dot : Vec3 -> Vec3 -> Float
dot _ _ = 0

cross : Vec3 -> Vec3 -> Vec3
cross _ _ = zero

scale : Vec3 -> Float -> Vec3
scale _ _ = zero

magnitude : Vec3 -> Float
magnitude _ = 0

dist : Vec3 -> Vec3 -> Float
dist _ _ = 0

normalize : Vec3 -> Vec3
normalize _ = zero

vecLerp : Vec3 -> Vec3 -> Vec3
vecLerp _ _ = zero

isEqual : Vec3 -> Vec3 -> Bool
isEqual _ _ = False

rotateX : Float -> Mat3
rotateX _ = zeroMat

rotateY : Float -> Mat3
rotateY _ = zeroMat

round : Float -> Float
round _ = 0

lerp : Float -> Float -> Float -> Float
lerp _ _ _ = 0

isClockwise : List Vec3 -> Bool
isClockwise _ = False

--
-- Render.
--

-- TODO: Z-sorting.

type alias Line =
  { stuff : Int
  }

drawLine : Line -> Int
drawLine _ = 0

--
-- Game logic.
--

reach : (Vec3, Vec3) -> Vec3 -> (Vec3, Vec3)
reach _ _ = (zero, zero)

--
-- Camera.
--

type alias Camera =
  { position : Vec3
  , xAngle   : Float
  , mx       : Mat3
  , yAngle   : Float
  , my       : Mat3
  , dist     : Float
  , fov      : Float
  }

camProject : Camera -> Vec3 -> Vec3
camProject _ _ = zero
