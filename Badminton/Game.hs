module Badminton.Game
  ( Game(..)
  , update
  , draw
  ) where

import qualified Badminton.Player  as Player
import qualified Badminton.Message as Message

data Game
  = Game
    { player :: Player.Player
    }
  deriving Show

update :: Message.Message -> Game -> Game
update msg game =
  undefined

draw :: Game -> IO ()
draw =
  undefined

-- TODO: server and receiver
-- TODO: notion of side and player direction

{-
   type GameRound
       = PreServe
       | Serving
       | Rally
       | PostRally
-}
