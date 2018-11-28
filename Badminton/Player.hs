module Badminton.Player
  ( Player(..)
  , Player'(..)
  , update
  , draw
  ) where

import Badminton.Message
import Badminton.Math
import qualified Badminton.Ball as Ball

--
-- Player.
--
-- TODO: (nuanced movement) jump
-- TODO: (nuanced movement) lunge
-- TODO: (nuanced movement) bounds check
-- TODO: swing: arm points, power, winding angle
-- TODO: move in direction verb
--

data Player
  = Idle      Player'
  | WindingUp Player'
  | Swinging  Player'
  deriving Show

data Player'
  = Player'
    { position          :: WorldSpace
    , velocity          :: WorldSpace
    , acceleration      :: WorldSpace
    , movementSpeed     :: SpeedPerSecond
    , movementSpeedLerp :: Lerp
    }
  deriving Show

data Direction
  = None
  | Left
  | Right
  | Up
  | Down
  | UpLeft
  | UpRight
  | DownLeft
  | DownRight

--
-- Update.
--
-- TODO: State transitions.
-- TODO: Handle each case separately.
-- TODO: Consider in range, out of range.
--

update :: Message -> Player -> Ball.Ball -> (Player, Ball.Ball)

update (Button state) (Idle player) ball =
  undefined

update (Button state) (WindingUp player) ball =
  undefined

update (Button state) (Swinging player) ball =
  undefined

--
-- Draw.
--

draw :: Player -> IO ()
draw =
  undefined
