(function(){
  
  var FvbDluxBookmarklet = {

    visible : true,
    consumer : {
      css : [], // could be an array or a string
      methods : { // The methods that the producer can call
      
      }
    },
    producer : {
      buffer : "/fvb_dlux_producer/buffer",
      path : "/fvb_dlux_producer", // The path on your app that provides your data service
      methods : { // The methods that the consumer can call
      
      }
    }
  }
  
  window.FvbDluxBookmarklet = FvbDluxBookmarklet;

})();

