module Badminton.Message where

data Message
  = Button ButtonState

data ButtonState
  = ButtonState
    { left  :: Bool
    , right :: Bool
    , up    :: Bool
    , down  :: Bool
    , o     :: Bool
    , x     :: Bool
    }
