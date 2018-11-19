import Browser
import Html exposing (text)

--
-- Boilerplate.
--

main = Browser.sandbox { init = 0, update = update, view = view }
update _     model = model
view   model       = text "hello world"

--
-- Messages.
--

type Msg =
  Something

--
-- Model.
--
-- See https://gist.github.com/theburningmonk/0610b75b24b3b7ca0d1c.
-- for how to extend record types.
--

type alias Model =
  { something: Int
  }

type alias Player =
  { position     : Vec3
  , velocity     : Vec3
  , acceleration : Vec3
  }

type alias RenderedPlayer =
  { screenPosition: Vec3
  }

type alias Camera =
  { pos: Vec3
  }

type alias Ball =
  { position : Vec3
  }

--
-- Utils.
--

type alias Vec3 = (Float, Float, Float)

type alias Vec2 = (Float, Float)

type Color
  = Black
  | DarkBlue
  | DarkPurple
