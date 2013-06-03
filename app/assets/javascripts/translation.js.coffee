# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


 
# function getTranslation()
#         {
#             var from = "en", to = "es", text = "hello world";

#             var s = document.createElement("script");
#             s.src = "http://api.microsofttranslator.com/V2/Ajax.svc/Translate" +
#                 "?appId=Bearer " + encodeURIComponent(window.accessToken) +
#                 "&from=" + encodeURIComponent(from) +
#                 "&to=" + encodeURIComponent(to) +
#                 "&text=" + encodeURIComponent(text) +
#                 "&oncomplete=mycallback";
#             document.body.appendChild(s);
#         }

#         function mycallback(response)
#         {
#             alert(response);
#         }