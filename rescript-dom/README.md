# rescript-intersection-observer
> nearly zero-cost bind [IntersectionObserver](https://developer.mozilla.org/en-US/docs/Web/API/IntersectionObserver)


## Installation

Run the following in your favorit console: 
```console
> yarn add @ri7nz/rescript-dom
```

**OR**

```console
> npm install --save @ri7nz/rescript-dom
```

Then, add `@ri7nz/rescript-dom` in your `bsconfig.json`:

```diff
-- "bs-dependencies": [],
++ "bs-dependencies": ["@ri7nz/rescript-dom"],
```

## Usage

```rescript
open ResDOM

// example boundingClientRect
let boundingClientRect = ...
// access property of boundingClientRect with DOMRect module
boundingClientRect->DOMRect.x
boundingClientRect->DOMRect.width
boundingClientRect->DOMRect.height
boundingClientRect->DOMRect.top
boundingClientRect->DOMRect.right
boundingClientRect->DOMRect.bottom
boundingClientRect->DOMRect.left
boundingClientRect->DOMRect.toJson
```

Or you can check this [**examples**](https://github.com/ri7nz/rescript-libs/tree/main/examples/dev/dev__intersection.res).

## API
> (WIP): docs
