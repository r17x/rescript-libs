module DOMRect = ResDOM.DOMRect

module ObserverEntry = {
  type t = Dom.intersectionObserverEntry
  @get
  external boundingClientRect: t => DOMRect.t = "boundingClientRect"
  @get
  external intersectionRatio: t => float = "intersectionRatio"
  @get
  external intersectionRect: t => DOMRect.t = "intersectionRect"
  @get
  external isIntersecting: t => bool = "isIntersecting"
  @get
  external isVisible: t => bool = "isVisible"
  @get
  external rootBounds: t => DOMRect.t = "rootBounds"
  @get
  external target: t => Dom.element = "target"
  @get
  external time: t => float = "time"
}

module Observer = {
  type t = Dom.intersectionObserver

  @new
  external new: (array<ObserverEntry.t> => unit) => t = "IntersectionObserver"
  // properties

  // TODO: intersectionObserver.root return Dom.element or Dom.document
  @get
  external root: t => option<Dom.element> = "root"
  @get
  external rootMargin: t => string = "rootMargin"
  @get
  external thresholds: t => array<float> = "thresholds"
  // methods
  @send
  external disconnect: t => unit = "disconnect"
  @send
  external observe: (t, Dom.element) => unit = "observe"
  @send
  external takeRecords: t => array<ObserverEntry.t> = "takeRecords"
  @send
  external unobserve: (t, Dom.element) => unit = "unobserve"
}
