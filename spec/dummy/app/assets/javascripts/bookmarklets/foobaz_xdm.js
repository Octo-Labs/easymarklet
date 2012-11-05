(function(){
  
  var FooBazBookmarklet = {
    visible : true,
    consumer : {
      css : [], // could be an array or a string
      methods : { // The methods that the producer can call
      
      }
    },
    producer : {
      path : "/foobaz_producer", // The path on your app that provides your data service
      methods : { // The methods that the consumer can call
      
      }
    }
  }
  
  window.FooBazBookmarklet = FooBazBookmarklet;

})();

