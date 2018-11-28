module Badminton.Player
  ( Player(..)
  , Player'(..)
  , update
  , draw
  ) where

import Badminton.Message
import Badminton.Math
import Badminton.Ball

--
-- Player.
--

data Player
  = Idle      Player'
  | WindingUp Player'
  | Swinging  Player'
  deriving Show

--
-- Update.
--

--
-- Draw.
--

--
--
--

{-
data Player'
  = Player'
    { position          :: WorldSpace
    , velocity          :: WorldSpace
    , acceleration      :: WorldSpace
    , movementSpeed     :: SpeedPerSecond
    , movementSpeedLerp :: Lerp
    } deriving Show
-}

{-
data Direction
  = Left
  | Right
  | Up
  | Down
  | UpLeft
  | UpRight
  | DownLeft
  | DownRight
-}

-- Move the player by one timestep.
-- moveIn :: Player -> Direction -> Player
-- moveIn p = undefined

--
-- START ======
--

data Player
  = Idle      Player'
  | WindingUp Player'
  | Swinging  Player'
  deriving Show

update :: Message -> Player -> Ball -> (Player, Ball)

update (Button state) (Idle player) ball =
  undefined

update (Button state) (WindingUp player) ball =
  undefined

update (Button state) (Swinging player) ball =
  undefined

draw :: Player -> IO ()
draw =
  undefined

-- TODO: state transitions
-- TODO: handle each case separately
-- in range, out of range

--

{-
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
  -- return new player state
  undefined
  -- move
  -- windupbehind ball

update (Button state) (Swinging player) ball =
  undefined
  -- move
  -- swingat ball
-}

--
-- END ======
--

{-
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
-}

-- swing at:

-- internal representation:
--   arm points,
--   power
--   winding angle

-- TODO: more nuanced movement: jump, lunge, bounds check
