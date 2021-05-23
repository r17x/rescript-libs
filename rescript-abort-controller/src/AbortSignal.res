type t = Dom.eventTarget

@get
external aborted: t => bool = "aborted"

@set
external onabort: (t, Dom.event => unit) => unit = "onabort"
