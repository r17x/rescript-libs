@@text(`
see https://developer.mozilla.org/en-US/docs/Web/API/AbortController
`)
type t
// construct
@new
external new: unit => t = "AbortController"
// property
@get
external signal: t => AbortSignal.t = "signal"
// method
@send
external abort: t => unit = "abort"
