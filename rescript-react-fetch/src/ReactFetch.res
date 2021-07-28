type response

type arrayBuffer = Js.TypedArray2.ArrayBuffer.t

type json = Js.Json.t

type text = string

@module("react-fetch")
external preload: string => unit = "preload"
// TODO preloadWithOptions

@module("react-fetch")
external fetch: string => response = "fetch"
// TODO fetchWithOptions

@send
external arrayBuffer: response => arrayBuffer = "arrayBuffer"

@send
external json: response => json = "json"

@send
external text: response => text = "text"
