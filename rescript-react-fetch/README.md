# rescript-react-fetch
> Zero-cost binding for [`react-fetch`](https://github.com/facebook/react/blob/main/packages/react-fetch)

## Installation

Run the following in your favorit console: 

>  Don't forget install peer-dependencies `react-fetch`

```console
> yarn add rescript-react-fetch  
```

**OR**

```console
> npm install --save rescript-react-fetch 

```

Then, add `rescript-react-fetch` in your `bsconfig.json`:
```diff
-- "bs-dependencies": [],
++ "bs-dependencies": [rescript-react-fetch],
```

## Usage

```rescript
let url = "https://api.github.com/v3/user/ri7nz"

let data = url->ReactFetch.fetch->ReactFetch.json

let _ = url->ReactFetch.preload
```

Or you can check this [**Example: dev__reactfetch**](https://github.com/ri7nz/rescript-libs/tree/main/examples/dev/dev__reactfetch.res).

## API
> `react-fetch` current state is **UNSTABLE**, current API maybe changes!

### ReactFetch.fetch(string)
* **Return** `response`
### ReactFetch.preload(string)
* **Return** `unit`
### ReactFetch.json(response)
* **Return** `Js.Json.t`
### ReactFetch.arrayBuffer(response)
* **Return** `Js.TypedArray2.ArrayBuffer.t`
### ReactFetch.text(response)
* **Return** `string`
