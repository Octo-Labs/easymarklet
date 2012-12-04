//= require easyXDM
//= require easymarklet/producer
//= require <%= name %>_bookmarklet

var <%= name %>_producer = new Easymarklet.Producer(<%= name.camelize %>Bookmarklet);
<%= name %>_producer.init();
