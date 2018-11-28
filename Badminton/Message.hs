module Badminton.Message where

data Message
  = Button
    { left  :: Bool
    , right :: Bool
    , up    :: Bool
    , down  :: Bool
    , o     :: Bool
    , x     :: Bool
    }
