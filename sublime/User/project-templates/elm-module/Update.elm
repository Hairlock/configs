module ${module_name}.Update (..) where


import Effects exposing (Effects)
import ${module_name}.Actions exposing (..)
import ${module_name}.Models exposing (..)
import Hop


type alias UpdateModel =
    { ${lower_models_name} : List ${upper_model_name}
    }


update : Action -> UpdateModel -> ( List ${upper_model_name}, Effects Action )
update action model =
    case action of
        HopAction _ ->
            ( model.${lower_models_name}, Effects.none )

        NoOp ->
            ( model.${lower_models_name}, Effects.none )
