//= require bookmarklet/producer
//= require <%= name %>_xdm
//= require easyXDM

var <%= name %>_producer = new Bookmarklet.Producer(<%= name.titleize %>Bookmarklet);
<%= name %>_producer.init();
