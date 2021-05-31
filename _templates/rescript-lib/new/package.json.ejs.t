---
to: <%= name %>/package.json
---
{
  "name": "<%= locals.scope ? `@${scope}/${name}` : name %>",
  "version": "0.0.0",
  "description": "<%= locals.description ? description : "" %>",
  "author": "ri7nz <hi@rin.rocks>",
  "license": "MIT",
  "repository": {
    "type": "git",
    "url": "https://github.com/ri7nz/rescript-libs.git",
    "directory": "<%= name %>"
  },
  "bugs": "https://github.com/ri7nz/rescript-libs/issues",
  "scripts": {
    "start": "rescript build -w",
    "build": "rescript build -with-deps",
    "clean": "rescript clean"
  },
  "publishConfig": {
    "access": "public"
  },
  "devDependencies": {
    "rescript": "9.1.1"
  }
}
