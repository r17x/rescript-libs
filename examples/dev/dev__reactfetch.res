/**
  Write Test for Reactfetch 
r*/

let url = "https://api.github.com/v3/user/ri7nz"

let data = url->ReactFetch.fetch->ReactFetch.json

let _ = url->ReactFetch.preload
