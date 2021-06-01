/**
  example use for rescript-web-vitals 
**/
let reporter: Webvitals.reportHandler<'a> = metric => {
  metric.entries->Belt.Array.forEach(Js.log)->ignore
}

let _ = Webvitals.getCLS(reporter, true)
