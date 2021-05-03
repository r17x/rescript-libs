# rescript-intersection-observer
> nearly zero-cost bind [IntersectionObserver](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver)


## Installation

Run the following in your favorit console: 
```console
> yarn add @ri7nz/rescript-intersection-observer
```

**OR**

```console
> npm install --save @ri7nz/rescript-intersection-observer
```

Then, add `@ri7nz/rescript-intersection-observer` in your `bsconfig.json`:

```diff
-- "bs-dependencies": [],
++ "bs-dependencies": ["@ri7nz/rescript-intersection-observer"],
```

## Usage

```rescript
open Intersection

// construct
let observer = ObserverEntry.new(entries => {
  // implement your observe here
})

// observe
observer->Observer.observe(targetDOMElement)
// unobserve
observer->Observer.unobserve(targetDOMElement)

```

Or you can check this [**examples**](https://github.com/ri7nz/rescript-intersection-observer/tree/main/examples).

## API
> TODO: docs for API

* **Intersection.Observer**
* **Intersection.ObserverEntry**
