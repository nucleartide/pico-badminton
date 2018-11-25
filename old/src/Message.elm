module Message exposing (Message(..), Press(..))


type Message
    = Button Press


type Press
    = Left
    | Right
    | Up
    | Down
    | Z
    | X
