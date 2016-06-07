$(function() {
var test = $('.load-in');
var test2 = $('.load-in-1');
       

       test.mouseenter( 

        function()
        {
          test.addClass('animated pulse')
        }
            ).mouseleave( 

            function(){
              test.removeClass('animated pulse')
            }


          );

       test2.mouseenter( 

        function()
        {
          test2.addClass('animated pulse')
        }
            ).mouseleave( 

            function(){
              test2.removeClass('animated pulse')
            }


          );



 });

console.log("I'm up!")