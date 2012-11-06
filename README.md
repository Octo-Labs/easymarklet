Easymarklet
===================

The easiest way to create bookmarklets for your rails app.

Installation
-------------------

Add this to your Gemfile:

    gem 'easymarklet'

Then run:

    bundle install


Generating a new simple bookmarklet
---------------------------------

Run something like this:

    rails generate easymarklet:simple foobaz

This wil add a file to your javascripts directory that will hold the code for your bookmarklet.  

app/assets/javascripts/foobaz_bookmarklet.js

    (function(){
    
      // Your bookmarklet code goes here

    })();

You might alter it to look something like this:

    (function(){
      var p = document.createElement('p');
      p.appendChild(document.createTextNode('Foo vs. Baz'));
      document.body.appendChild(p);
    })();


Linking to your bookmarklet
---------------------------------

Then in a view template you can link to your bookmarklet using the
easymarklet_js helper.

    <%= link_to "Foo Baz!", easymarklet_js('foobaz_bookmarklet.js') %>

The resulting link will contain a small snippet of javascript that will
load your bookmarklet code into the current page and execute it.  Place
some instructions for your users near the link that tells them to drag
the link into their bookmark bar.  



XDM Bookmarklets
----------------------------------

* Note : XDM is a work in progress.

To enable cross domain communictaion between your site and other pages on the 'net we need to be able to generate a fully qualified URL to your bookmarklet code.  To set the correct host you should add this to each of your confing/environment/*.rb files.  Adjust the :host accordingly. :port is optional.

    config.action_controller.default_url_options = {:host =>
'localhost', :port => 3000}

XDM bookmarklet code acts as a consumer for data or a service that is
supplied by the provider, a page on your app.  

Generating a new XDM bookmarklet
---------------------------------

Run something like this:

    rails generate easymarklet:xdm barbaz_xdm

This wil add 3 files to your javascript directory:  

app/assets/javascripts/barbaz_xdm_bookmarklet.js
app/assets/javascripts/barbaz_xdm_consumer.js
app/assets/javascripts/barbaz_xdm_producer.js

### *_bookmarklet.js

This is central interface between your consumer (the code that runs
on other pages), and your producer (the pages on your app).

    (function(){
      
      var BarbazXdmBookmarklet = {

        visible : true,
        consumer : {
          css : [], // could be an array or a string
          methods : { // The methods that the producer can call
          
          }
        },
        producer : {
          path : "/barbaz_xdm_producer", // The path on your app that provides your data service
          methods : { // The methods that the consumer can call
          
          }
        }
      }
      
      // Expose the bookmarklet to the global object
      window.BarbazXdmBookmarklet = BarbazXdmBookmarklet;

    })();

### *_consumer.js

This is a js manifest that will deliver a collection of files to the
page that is in the browser when someone clicks your bookmarklet.

    //= require easymarklet/consumer
    //= require barbaz_xdm_bookmarklet
    //
    var barbaz_xdm_consumer = new Easymarklet.Consumer(BarbazXdmBookmarklet);
    barbaz_xdm_consumer.init();

### *_producer.js

This is a js manifest that should be included in the page that will
proved the service endpoint in your app.

    //= require easyXDM
    //= require easymarklet/producer
    //= require barbaz_xdm_xdm
    
    var barbaz_xdm_producer = new Easymarklet.Producer(BarbazXdmBookmarklet);
    barbaz_xdm_producer.init();






This project rocks and uses MIT-LICENSE.
