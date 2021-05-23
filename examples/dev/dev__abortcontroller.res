let abortController = AbortController.new()

abortController->AbortController.signal->Js.log
abortController->AbortController.signal->AbortSignal.aborted->Js.log

let onabort = evt => {
  open Webapi.Dom
  evt->Event.isTrusted->Js.log
  evt->Event.timeStamp->Js.log
}

abortController->AbortController.signal->AbortSignal.onabort(onabort)

abortController->AbortController.abort
