module ${module_name}.Effects (..) where


import Effects exposing (Effects)
import Http
import Task
import Json.Encode as Encode
import Json.Decode as Decode
import Json.Decode.Extra exposing ((|:))

import ${module_name}.Models exposing (..)
import ${module_name}.Actions exposing (..)


