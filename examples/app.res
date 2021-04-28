external htmlDom: unit => Dom.element = "%identity"

let observer = Intersection.Observer.new(entries => {
  switch entries {
  | [head] => {
      head->Intersection.ObserverEntry.intersectionRatio->Js.log
      head->Intersection.ObserverEntry.boundingClientRect->DOMRect.x->Js.log
      head->Intersection.ObserverEntry.boundingClientRect->DOMRect.width->Js.log
      head->Intersection.ObserverEntry.boundingClientRect->DOMRect.height->Js.log
      head->Intersection.ObserverEntry.boundingClientRect->DOMRect.top->Js.log
      head->Intersection.ObserverEntry.boundingClientRect->DOMRect.right->Js.log
      head->Intersection.ObserverEntry.boundingClientRect->DOMRect.bottom->Js.log
      head->Intersection.ObserverEntry.boundingClientRect->DOMRect.left->Js.log
      head->Intersection.ObserverEntry.boundingClientRect->DOMRect.toJson->Js.log
      head->Intersection.ObserverEntry.time->Js.log
      head->Intersection.ObserverEntry.isVisible->Js.log
      head->Intersection.ObserverEntry.target->Js.log
      let rect = DOMRect.rect(~x=1.0, ~y=2.0, ())
      rect->DOMRect.fromRect->Js.log
    }
  | _ => ()
  }
})

observer->Intersection.Observer.observe(htmlDom())

observer->Intersection.Observer.unobserve(htmlDom())

observer->Intersection.Observer.takeRecords->Belt.Array.map(Js.log)->ignore

observer->Intersection.Observer.disconnect
