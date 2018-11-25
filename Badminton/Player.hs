module Badminton.Player where

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
