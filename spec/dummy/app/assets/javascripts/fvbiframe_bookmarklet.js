(function(){
  
  var FvbiframeBookmarklet = {

    visible : true,
    consumer : {
      css : [], // could be an array or a string
      methods : { // The methods that the producer can call
      
      }
    },
    producer : {
      path : "/fvbiframe_producer", // The path on your app that provides your data service
      methods : { // The methods that the consumer can call
      
      }
    }
  }
  
  window.FvbiframeBookmarklet = FvbiframeBookmarklet;

})();

