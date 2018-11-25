import Badminton.Player

main :: IO ()
main =
  let
    a = Meter 0.4
    b = Vec3 (Meter 0.2) (Meter 0.3) (Meter 0.4)
    c = WorldSpace b
    d = LocalSpace b
    e = Player
      { position = c
      , velocity = c
      , acceleration = c
      }
    f = speedPerSecond (Meter 0.4)
  in do
    print a
    print b
    print c
    print d
    print e
    print f
