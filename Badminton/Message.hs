module Badminton.Message where

data Message
  = Button Button'

data Button'
  = Button'
    { left  :: Bool
    , right :: Bool
    , up    :: Bool
    , down  :: Bool
    , o     :: Bool
    , x     :: Bool
    }
