external htmlDom: unit => Dom.element = "%identity"

DOMRect.fromRect(~x=5.3, ~y=5.2, ())->Js.log

let observer = Intersection.Observer.new(entries => {
  switch entries {
  | [head] => {
      head->Intersection.ObserverEntry.intersectionRatio->DOMRect.y->Js.log
      head->Intersection.ObserverEntry.intersectionRatio->DOMRect.x->Js.log
      head->Intersection.ObserverEntry.intersectionRatio->DOMRect.width->Js.log
      head->Intersection.ObserverEntry.intersectionRatio->DOMRect.height->Js.log
      head->Intersection.ObserverEntry.intersectionRatio->DOMRect.top->Js.log
      head->Intersection.ObserverEntry.intersectionRatio->DOMRect.right->Js.log
      head->Intersection.ObserverEntry.intersectionRatio->DOMRect.bottom->Js.log
      head->Intersection.ObserverEntry.intersectionRatio->DOMRect.left->Js.log
      head->Intersection.ObserverEntry.intersectionRatio->DOMRect.toJson->Js.log
    }
  | _ => ()
  }
})

observer->Intersection.Observer.observe(htmlDom())

observer->Intersection.Observer.unobserve(htmlDom())

observer->Intersection.Observer.takeRecords->Belt.Array.map(Js.log)->ignore

observer->Intersection.Observer.disconnect
