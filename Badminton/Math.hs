module Badminton.Math where

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

data Lerp
  = ValidLerp Float
  | InvalidLerp
  deriving Show

lerp :: Float -> Lerp
lerp t =
  if t < 0 || 1 < t then
    InvalidLerp
  else
    ValidLerp t

-- TODO

{-
   type alias Vec3 =
       ( Float, Float, Float )


   type alias Mat3 =
       ( Vec3, Vec3, Vec3 )


   zero : Vec3
   zero =
       ( 0, 0, 0 )


   zeroMat : Mat3
   zeroMat =
       ( zero, zero, zero )


   add : Vec3 -> Vec3 -> Vec3
   add _ _ =
       zero


   sub : Vec3 -> Vec3 -> Vec3
   sub _ _ =
       zero


   mul : Vec3 -> Vec3 -> Vec3
   mul _ _ =
       zero


   mulMat3 : Vec3 -> Mat3 -> Vec3
   mulMat3 _ _ =
       zero


   dot : Vec3 -> Vec3 -> Float
   dot _ _ =
       0


   cross : Vec3 -> Vec3 -> Vec3
   cross _ _ =
       zero


   scale : Vec3 -> Float -> Vec3
   scale _ _ =
       zero


   magnitude : Vec3 -> Float
   magnitude _ =
       0


   dist : Vec3 -> Vec3 -> Float
   dist _ _ =
       0


   normalize : Vec3 -> Vec3
   normalize _ =
       zero


   vecLerp : Vec3 -> Vec3 -> Vec3
   vecLerp _ _ =
       zero


   isEqual : Vec3 -> Vec3 -> Bool
   isEqual _ _ =
       False


   rotateX : Float -> Mat3
   rotateX _ =
       zeroMat


   rotateY : Float -> Mat3
   rotateY _ =
       zeroMat


   round : Float -> Float
   round _ =
       0


   lerp : Float -> Float -> Float -> Float
   lerp _ _ _ =
       0


   isClockwise : List Vec3 -> Bool
   isClockwise _ =
       False

   reach : ( Vec3, Vec3 ) -> Vec3 -> ( Vec3, Vec3 )
   reach _ _ =
       ( zero, zero )
-}
