//= require easymarklet/producer
//= require <%= name %>_xdm
//= require easyXDM

var <%= name %>_producer = new Easymarklet.Producer(<%= name.titleize %>Bookmarklet);
<%= name %>_producer.init();
