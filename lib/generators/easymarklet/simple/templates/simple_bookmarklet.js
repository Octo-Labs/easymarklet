//= require easymarklet/simple

(function(){
  
  var <%= name.camelize %>Bookmarklet = {
    css : ['/assets/<%= name %>_bookmarklet.css'], // could be an array or a single string
    init : function(){
      var div = document.createElement('div')
      div.id = '<%= name %>_insert'
      div.appendChild(document.createTextNode('<%= name.camelize %> Insert'))
      div.onclick = function(){
        document.body.removeChild(div);
      }
      document.body.appendChild(div);
    }
  }
  
  window.<%= name.camelize %>Bookmarklet = <%= name.camelize %>Bookmarklet;

})();

var <%= name %>_simple = new Easymarklet.Simple(<%= name.camelize %>Bookmarklet);
<%= name %>_simple.init();

