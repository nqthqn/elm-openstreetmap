module Controls exposing (view)

import Geometry exposing (Point)
import Message exposing (..)
import Util exposing (px)

import Html
import Html.Attributes as Attributes
import Html.Events exposing (onClick)

view : Html.Html Msg
view =
  Html.div
  []
  [ button {x=20, y=20} ZoomIn "+"
  , button {x=20, y=50} ZoomOut "-"
  ]

button : Point Int -> Msg -> String -> Html.Html Msg
button {x,y} action label =
  Html.button
  [ Attributes.style
    [ ("position", "absolute")
    , ("left", px x)
    , ("top", px y)
    , ("font-size", "large")
    , ("width", "30px")
    ]
  , onClick action
  ]
  [Html.text label]