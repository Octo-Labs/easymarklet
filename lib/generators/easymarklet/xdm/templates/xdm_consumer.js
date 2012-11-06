//= require easymarklet/consumer
//= require <%= name %>_xdm
//
var <%= name %>_consumer = new Easymarklet.Consumer(<%= name.titleize %>Bookmarklet);
<%= name %>_consumer.init();
