import qualified Badminton.Game as Game
import qualified Badminton.Player as Player
import Badminton.Math

main :: IO ()
main =
  let
    dummyVector = Vec3 (Meter 0.2) (Meter 0.3) (Meter 0.4)
    g = Game.Game
      { Game.player = Player.Idle Player.Player'
        { Player.position = WorldSpace dummyVector
        , Player.velocity = WorldSpace dummyVector
        , Player.movementSpeed = speedPerSecond (Meter 10)
        , Player.movementSpeedLerp = lerp 0.4
        }
      }
  in do
    print g
