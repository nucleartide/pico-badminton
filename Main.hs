import Badminton.Player

main :: IO ()
main =
  let
    a = Meter 0.4
    b = Vec3 (Meter 0.2) (Meter 0.3) (Meter 0.4)
    c = WorldSpace b
    d = LocalSpace b
  in do
    print a
    print b
    print c
    print d
