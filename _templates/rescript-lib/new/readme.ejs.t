---
to: <%= name %>/README.md
---
# <%= name %>
> <%= locals.description ? description : "write description" %>

## Installation

Run the following in your favorit console: 
```console
> yarn add <%= locals.scope ? `@${scope}/${name}` : name %>  
```

**OR**

```console
> npm install --save <%= locals.scope ? `@${scope}/${name}` : name %> 
```

Then, add `<%= locals.scope ? `@${scope}/${name}` : name %>` in your `bsconfig.json`:
```diff
-- "bs-dependencies": [],
++ "bs-dependencies": [<%= locals.scope ? `@${scope}/${name}` : name %>],
```

## Usage

```rescript

```

Or you can check this [**Example: <%= h.testModuleName(name) %>**](https://github.com/ri7nz/rescript-libs/tree/main/examples/dev/<%= h.testModuleName(name) %>.res).

## API
> (WIP): docs
