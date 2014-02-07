Easymarklet
===================

The easiest way to create bookmarklets for your rails app.

[Visit "Foo vs Baz" for demos and explanations of several types of bookmarklets.](http://foo-vs-baz.herokuapp.com/)

[Also, see the source code for "Foo vs Baz".](https://github.com/Octo-Labs/foo_vs_baz)

[![Gem Version](https://badge.fury.io/rb/easymarklet.png)](http://badge.fury.io/rb/easymarklet)
[![Build Status](https://travis-ci.org/Octo-Labs/easymarklet.png?branch=master)](https://travis-ci.org/Octo-Labs/easymarklet)


Installation
-------------------

Add this to your Gemfile:

    gem 'easymarklet'

Then run:

    bundle install

Types of bookmarklets
----------------------------------

Easymarklet supports several types of bookmarklets. 

* **Bare Bookmarklets** Bare bookmarklets are very simple and best
suited for just redirecting the browser back to your app.  They
generally don't have any UI.
* **Simple Bookmarklets** Simple bookmarklets allow for a basic UI and
easy stylesheet inclusion into the consumer page.  Communication back to
your app is limited.
* **XDM Bookmarklets** XDM Bookmarklets use
[easyXDM](http://easyxdm.net/wp/) to allow cross domain communication
between your bookmarklet and your app.  The UI is still fairly basic.
* **Iframe Bookmarklets** Iframe  bookmarklets allow for cross domain
communication and enchanced UI by displaying the UI is an iframe so that
additional CSS and JS can be used safely.  Note : If the iframe is
directed to a new page (such as by clicking on a link) the XDM
communication channel will be lost.
* **DLux Bookmarklets** DLux bookmarklets include a 'buffer' iframe that
will keep the communication channel open but still allow your UI to
navigate to a new page.  This is the easiest way to take advantage of
existing page flows within a pop-over bookmarklet.


## Examples
[Foo vs Baz](http://foo-vs-baz.herokuapp.com/) is a collection of working demos with walk throughs.

* [Bare Bookmarklets](http://foo-vs-baz.herokuapp.com/bare)
* [Simple Bookmarklets](http://foo-vs-baz.herokuapp.com/simple)
* [XDM Bookmarklets](http://foo-vs-baz.herokuapp.com/xdm)
* [Iframe Bookmarklets](http://foo-vs-baz.herokuapp.com/iframe)
* [DLux Bookmarklets](http://foo-vs-baz.herokuapp.com/dlux)




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


Generating other bookmarklets
---------------------------------

See [Foo vs Baz](http://foo-vs-baz.herokuapp.com/) for more examples.

This project rocks and uses MIT-LICENSE.
