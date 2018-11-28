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

    -- Desired movement speed when moving in a Direction.
    , movementSpeed     :: SpeedPerSecond

    -- Lerp towards `movementSpeed` by this factor per timestep.
    , movementSpeedLerp :: Lerp
    }
  deriving Show

--
-- Update.
--
-- TODO: Consider in range, out of range.
--

update :: Message -> Player -> Ball.Ball -> (Player, Ball.Ball)

update btn (Idle player) ball =
  if o btn then
    (WindingUp player, ball)
  else
    let
      direction = buttonToDirection btn
      player'   = player `moveIn` direction
    in
      (Idle player', ball)

update btn (WindingUp player) ball =
  if not $ o btn then
    (Swinging player, ball)
  else
    let
      direction = buttonToDirection btn
      player'   = player `moveIn` direction
    in
      (WindingUp player', ball)

update btn (Swinging player) ball =
  -- TODO: Once swing is depleted, return to idle state.
  let
    direction = buttonToDirection btn
    player'   = player `moveIn` direction
  in
    (Swinging player', ball)

--
-- Draw.
--

draw :: Player -> IO ()
draw =
  undefined

--
-- Player `moveIn` direction.
--

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

-- Implementation: lerp towards Direction.
moveIn :: Player' -> Direction -> Player'
moveIn = undefined

buttonToDirection :: Message -> Direction
buttonToDirection = undefined
