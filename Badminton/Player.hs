module Badminton.Player where

import Badminton.Message

data Meter
  = Meter Float
  deriving Show

data Vec3
  = Vec3 Meter Meter Meter
  deriving Show

data WorldSpace
  = WorldSpace Vec3
  deriving Show

data LocalSpace
  = LocalSpace Vec3
  deriving Show

data Player
  = Player
    { position          :: WorldSpace
    , velocity          :: WorldSpace
    , acceleration      :: WorldSpace
    , movementSpeed     :: SpeedPerSecond
    , movementSpeedLerp :: Lerp
    } deriving Show

data SpeedPerSecond
  = ValidSpeed Meter
  | InvalidSpeed
  deriving Show

speedPerSecond :: Meter -> SpeedPerSecond
speedPerSecond (Meter m) =
  if m < 0 then
    InvalidSpeed
  else
    ValidSpeed (Meter m)

data Lerp
  = ValidLerp Float
  | InvalidLerp
  deriving Show

lerp :: Float -> Lerp
lerp t =
  if t < 0 || 1 < t then
    InvalidLerp
  else
    ValidLerp t

data Movement
  = Left
  | Right
  | Up
  | Down
  | UpLeft
  | UpRight
  | DownLeft
  | DownRight

-- Move the player by one timestep.
move :: Player -> Movement -> Player
move p = undefined

-- Receive input events.
-- Note: this is where you can compose game verbs.
update :: Message -> Player -> Player
update (ButtonMessage buttonState) player =
	let
		movement = translate buttonState
	in
		move player movement

-- Translate ButtonState record to Movement.
translate :: ButtonState -> Movement
translate b
  = undefined

data WithRacket
  = Idle      Player
  | WindingUp Player
  | Swinging  Player

data BallRange
  = InRange
  | OutOfRange

-- ( Idle, InRange )

-- idle -> windup
-- windup -> windup
-- swing X, need to follow through
-- if ball is in range, follow
-- else, follow predefined path
windUp :: WindingUp -> WindingUp
windUp = undefined

swing :: Swinging -> Ball -> Swinging
swing = undefined

-- swing at:

-- internal representation:
--   arm points,
--   power
--   winding angle

-- TODO: more nuanced movement: jump, lunge, bounds check
