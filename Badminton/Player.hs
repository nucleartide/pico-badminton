module Badminton.Player
  ( Meter(..)
  , Vec3(..)
  , WorldSpace(..)
  , LocalSpace(..)
  , Player(..)
  , speedPerSecond
  ) where

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
    { position     :: WorldSpace
    , velocity     :: WorldSpace
    , acceleration :: WorldSpace
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
