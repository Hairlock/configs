module ${module_name}.Actions (..) where


import ${module_name}.Models exposing (..)
import Hop


type Action 
    = NoOp
    | HopAction Hop.Action
