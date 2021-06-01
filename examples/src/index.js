

import * as App from "./App.js";
import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as Webvitals from "rescript-web-vitals/src/Webvitals.js";
import * as ReactDom from "react-dom";
import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as Belt_Option from "rescript/lib/es6/belt_Option.js";
import * as Caml_option from "rescript/lib/es6/caml_option.js";

ReactDom.render(React.createElement(React.StrictMode, {
          children: React.createElement(App.make, {})
        }), Belt_Option.getExn(Caml_option.nullable_to_opt(document.querySelector("#root"))));

function reporter(metric) {
  console.log(metric);
  Belt_Array.forEach(metric.entries, (function (prim) {
          console.log(prim);
          
        }));
  
}

Webvitals.importWebVitals().then(function (vitals) {
      Curry._2(vitals.getFCP, reporter, true);
      Curry._2(vitals.getCLS, reporter, true);
      Curry._2(vitals.getFID, reporter, true);
      Curry._1(vitals.getTTFB, reporter);
      return Promise.resolve(function (prim) {
                  
                });
    });

export {
  reporter ,
  
}
/*  Not a pure module */
