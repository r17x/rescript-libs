// @see DOMRect specification {https://drafts.fxtf.org/geometry/#DOMRect}
type t = Dom.domRect

@new
external new: unit => t = "DOMRect"
@get
external x: t => float = "x"
@get
external y: t => float = "y"
@get
external width: t => float = "width"
@get
external height: t => float = "height"
@get
external top: t => float = "top"
@get
external right: t => float = "right"
@get
external bottom: t => float = "bottom"
@get
external left: t => float = "left"

type rect
@obj
external rect: (~x: float=?, ~y: float=?, ~width: float=?, ~height: float=?, unit) => rect = ""

@scope("DOMRect") @val
external fromRect: rect => t = "fromRect"

external toJson: t => Js.Json.t = "%identity"
