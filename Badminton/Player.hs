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

data Player'
  = Player'
    { position          :: WorldSpace
    , velocity          :: WorldSpace
    , acceleration      :: WorldSpace
    , movementSpeed     :: SpeedPerSecond
    , movementSpeedLerp :: Lerp
    } deriving Show

data Player
  = Idle      Player'
  | WindingUp Player'
  | Swinging  Player'

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

data Direction
  = Left
  | Right
  | Up
  | Down
  | UpLeft
  | UpRight
  | DownLeft
  | DownRight

-- Move the player by one timestep.
moveIn :: Player -> Direction -> Player
moveIn p = undefined

-- Receive input events.
-- Note: this is where you can compose game verbs.
update :: Message -> Player -> Ball -> Player
update (ButtonMessage buttonState) player ball =
	let
		direction = translate buttonState
	in
    (((player `moveIn` direction) `windUp` ball) `swing` ball)

update :: Message -> Player -> Ball -> Player

update (Button state) (Idle player) ball =
  undefined
  -- move

update (Button state) (WindingUp player) ball =
  undefined
  -- move
  -- windupbehind ball

update (Button state) (Swinging player) ball =
  undefined
  -- move
  -- swingat ball

--
--
--

-- Translate ButtonState record to Movement.
translate :: ButtonState -> Direction
translate b =
  undefined

data BallRange
  = InRange
  | OutOfRange

data WindUp
  = Idle   Player
  | WindUp Player

-- if ball is in range, follow
-- else, follow predefined path
windUp :: Player -> Ball -> Player

windUp :: (WindUp, BallRange) -> WindUp
windUp (Idle InRange) =
  -- Then 
  undefined
windUp (Idle OutOfRange) =
  undefined
windUp (WindUp InRange) =
  undefined
windUp (WindUp OutOfRange) =
  undefined

swing :: Swinging -> Ball -> Swinging
swing = undefined

-- swing at:

-- internal representation:
--   arm points,
--   power
--   winding angle

-- TODO: more nuanced movement: jump, lunge, bounds check
