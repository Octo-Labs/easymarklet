//= require bookmarklet/consumer
//= require <%= name %>_xdm
//
var <%= name %>_consumer = new Bookmarklet.Consumer(<%= name.titleize %>Bookmarklet);
<%= name %>_consumer.init();
