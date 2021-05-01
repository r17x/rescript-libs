# rescript-dom
> zero-cost bind for Web API or Web DOM


## Installation

Run the following in your favorit console: 
```console
> yarn add @ri7nz/rescript-dom
```

**OR**

```console
> npm install --save @ri7nz/rescript-dom
```

Then, add `@ri7nz/rescript-intersection-dom` in your `bsconfig.json`:

```diff
-- "bs-dependencies": [],
++ "bs-dependencies": ["@ri7nz/rescript-dom"],
```

## Usage

```rescript
open ResDOM

let rect = DOMRect.new();

rect->DOMRect.y // get y from DOMRect
```

Or you can check this [**examples**](https://github.com/ri7nz/rescript-intersection-observer/tree/main/examples).

## API
> TODO: docs for API

* **Intersection.Observer**
* **Intersection.ObserverEntry**
