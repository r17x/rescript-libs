# rescript-worker
> Zero-cost bindings for Web API [Worker](https://www.w3.org/TR/workers)


## Installation

Run the following in your favorit console: 
```console
> yarn add rescript-worker
```

**OR**

```console
> npm install --save rescript-worker
```

Then, add `rescript-worker` in your `bsconfig.json`:

```diff
-- "bs-dependencies": [],
++ "bs-dependencies": ["rescript-worker"],
```

## Usage

```rescript
// construct
let abortController = AbortController.new()

let worker = Worker.new("ourworker.js")
let workerWithOptions = Worker.newWithOptions("",{"optKey": "optValue"})

```

Or you can check this [**examples**](https://github.com/ri7nz/rescript-libs/tree/main/examples/dev/dev__worker.res).

## API
> (WIP)

## Reference
* https://www.w3.org/TR/workers
* https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API
