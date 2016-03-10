module ${module_name}.Edit (..) where


import Html exposing (..)
import Html.Attributes exposing (..)
import ${module_name}.Models exposing (..)
import ${module_name}.Actions exposing (..)


type alias ViewModel =
    { ${lower_model_name} : ${upper_model_name}
    }


view : Signal.Address Action -> ViewModel -> Html.Html
vew address model =
    div
    []
    []    