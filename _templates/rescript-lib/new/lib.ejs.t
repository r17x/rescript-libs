---
to: <%= name %>/src/<%= h.inflection.camelize(h.moduleName(name)) %>.res
---
"<%= name %>"->Js.log;
