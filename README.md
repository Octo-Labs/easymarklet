Bookmarklet
===================

The easiest way to create bookmarklets for your rails app.

Installation
-------------------

Add this to your Gemfile:

    gem 'bookmarklet'

Then run:

    bundle install

Building your bookmarklet code
---------------------------------

Add a file to your app/assets/javascripts directory that will hold the
code for your bookmarklet.  For example :

app/assets/javascripts/foobaz_bookmarklet.js

    (function(){
      var p = document.createElement('p');
      p.appendChild(document.createTextNode('Foo vs. Baz'));
      document.body.appendChild(p);
    })();

Linking to your bookmarklet
---------------------------------

Then in a view template you can link to your bookmarklet using the
bookmarklet_js helper.

    <%= link_to "Foo Baz!", bookmarklet_js('foobaz_bookmarklet.js') %>

The resulting link will contain a small snippet of javascript that will
load your bookmarklet code into the current page and execute it.  Place
some instructions for your users near the link that tells them to drag
the link into their bookmark bar.  

XDM Bookmarklets
----------------------------------

* Note : XDM is a work in progress.

To enable cross domain communictaion between your site and other pages
on the 'net we need to be able to generate a fully qualified URL to your
bookmarklet code.  To set the correct host you should add this to each
of your confing/environment/*.rb files.  Adjust the :host accordingly.
:port is optional.

    config.action_controller.default_url_options = {:host =>
'localhost', :port => 3000}



This project rocks and uses MIT-LICENSE.
