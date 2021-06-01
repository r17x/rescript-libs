

import * as Curry from "rescript/lib/es6/curry.js";
import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as WebVitals from "web-vitals";

function reporter(metric) {
  Belt_Array.forEach(metric.entries, (function (prim) {
          console.log(prim);
          
        }));
  
}

Curry._2(WebVitals.getCLS, reporter, true);

export {
  reporter ,
  
}
/*  Not a pure module */
