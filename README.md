Easymarklet
===================

The easiest way to create bookmarklets for your rails app.

Installation
-------------------

Add this to your Gemfile:

    gem 'easymarklet'

Then run:

    bundle install


Types of bookmarklets
----------------------------------

Easymarklet supports two types of bookmarklets, simple bookmarklets and
xdm bookmarklets.  Simple bookmarklets allow new functionality to be
injected into a page, but they are restricted in the amount of
communication that can go back to your app.  Xdm bookmarklets use
[easyXDM](http://easyxdm.net/wp/) to allow cross domain communication.

Generating a new simple bookmarklet
---------------------------------

Run something like this:

    rails generate easymarklet:simple foobaz

Then in a view template you can link to your bookmarklet using the
easymarklet_js helper.

    <%= link_to "Foo Baz!", easymarklet_js('foobaz_bookmarklet.js') %>

The resulting link will contain a small snippet of javascript that will
load your bookmarklet code into the current page and execute it.  Place
some instructions for your users near the link that tells them to drag
the link into their bookmark bar.  

[See the Simple Bookmarklets wiki page for more info.](https://github.com/Octo-Labs/easymarklet/wiki/Simple-Bookmarklets)


Generating a new XDM bookmarklet
----------------------------------

To enable cross domain communictaion between your site and other pages on the 'net we need to be able to generate a fully qualified URL to your bookmarklet code.  To set the correct host you should add this to each of your confing/environment/*.rb files.  Adjust the :host accordingly. :port is optional.

    config.action_controller.default_url_options = {:host => 'localhost', :port => 3000}

XDM bookmarklet code acts as a consumer for data or a service that is
supplied by the provider, a page on your app.  

To generate your bookmarklet run something like this:

    rails generate easymarklet:xdm barbaz_xdm

Then link to the consumer in a view:

    <%= link_to "Bar Baz!", easymarklet_js('barbaz_xdm_consumer.js') %>

[See the XDM Bookmarklets wiki page for more info](https://github.com/Octo-Labs/easymarklet/wiki/XDM-Bookmarklets)


This project rocks and uses MIT-LICENSE.
