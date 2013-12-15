(function(){
  // check prior inclusion and version of jQuery
  if (!($ = window.jQuery)) { // typeof jQuery=='undefined' works too
      script = document.createElement( 'script' );
     script.src = 'http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js';
      script.onload=initBookmarklet;
      document.body.appendChild(script);
  }
  else {
      initBookmarklet();
  }

  function initBookmarklet() {
    var selTitle = document.title;
    console.log(selTitle);
    var selURL= window.location.href;
    $("body").append("\
      <div id='ggframe'>\
        <div id='ggframe_veil' style=''>\
          <p>Loading your request...</p>\
        </div>\
        <iframe src='http://localhost:3000/products/new?"+selTitle+"' onload=\"$('#ggframe iframe').slideDown(500);\">Enable iFrames.</iframe>\
        <style type='text/css'>\
          #ggframe_veil { display: none; position: fixed; width: 100%; height: 100%; top: 0; left: 0; background-color: rgba(255,255,255,.25); cursor: pointer; z-index: 900; }\
          #ggframe_veil p { color: black; font: normal normal bold 20px/20px Helvetica, sans-serif; position: absolute; top: 50%; left: 50%; width: 10em; margin: -10px auto 0 -5em; text-align: center; }\
          #ggframe iframe { display: none; position: fixed; top: 10%; left: 10%; width: 80%; height: 80%; z-index: 999; border: 10px solid rgba(0,0,0,.5); margin: -5px 0 0 -5px; }\
        </style>\
      </div>"
    );

    $("#ggframe_veil").fadeIn(750);

    $("#ggframe_veil").click(function(event){
      $("#ggframe_veil").fadeOut(750);
      $("#ggframe iframe").slideUp(500);
      setTimeout("$('#ggframe').remove()", 750);
    });

    alert("The product title is: "+ selTitle);

  }
})();
