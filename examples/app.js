// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Belt_Array from "rescript/lib/es6/belt_Array.js";

console.log(DOMRect.fromRect(5.3, 5.2, undefined, undefined));

var observer = new IntersectionObserver((function (entries) {
        if (entries.length !== 1) {
          return ;
        }
        var head = entries[0];
        console.log(head.intersectionRatio);
        console.log(head.boundingClientRect.x);
        console.log(head.boundingClientRect.width);
        console.log(head.boundingClientRect.height);
        console.log(head.boundingClientRect.top);
        console.log(head.boundingClientRect.right);
        console.log(head.boundingClientRect.bottom);
        console.log(head.boundingClientRect.left);
        console.log(head.boundingClientRect);
        console.log(head.time);
        console.log(head.isVisible);
        console.log(head.target);
        
      }));

observer.observe(undefined);

observer.unobserve(undefined);

Belt_Array.map(observer.takeRecords(), (function (prim) {
        console.log(prim);
        
      }));

observer.disconnect();

export {
  observer ,
  
}
/*  Not a pure module */
