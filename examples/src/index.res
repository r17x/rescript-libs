ReactDOM.render(
  <React.StrictMode> <App /> </React.StrictMode>,
  ReactDOM.querySelector("#root")->Belt.Option.getExn,
)

let reporter: Webvitals.reportHandler<'a> = metric => {
  metric->Js.log
  metric.entries->Belt.Array.forEach(Js.log)
  ignore()
}

Js.Promise.then_((vitals: Webvitals.lazyImport<'a>) => {
  reporter->vitals.getFCP(true)
  reporter->vitals.getCLS(true)
  reporter->vitals.getFID(true)
  reporter->vitals.getTTFB
  ignore->Js.Promise.resolve
}, Webvitals.importWebVitals(.))->ignore
