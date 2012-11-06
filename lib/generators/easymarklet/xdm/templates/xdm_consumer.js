//= require easymarklet/consumer
//= require <%= name %>_bookmarklet
//
var <%= name %>_consumer = new Easymarklet.Consumer(<%= name.camelize %>Bookmarklet);
<%= name %>_consumer.init();
