# rescript-abort-controller
> Zero-cost bindings for Web API [AbortController](https://developer.mozilla.org/en-US/docs/Web/API/AbortController)


## Installation

Run the following in your favorit console: 
```console
> yarn add rescript-abort-controller
```

**OR**

```console
> npm install --save rescript-abort-controller
```

Then, add `rescript-abort-controller` in your `bsconfig.json`:

```diff
-- "bs-dependencies": [],
++ "bs-dependencies": ["rescript-abort-controller"],
```

## Usage

```rescript
// construct
let abortController = AbortController.new()

// access property `signal`
abortController->AbortController.signal

// access method `abort`
abortController->AbortController.abort
```

Or you can check this [**examples**](https://github.com/ri7nz/rescript-intersection-observer/tree/main/examples/dev/dev__abortcontroller.res).

## API
> (WIP)

