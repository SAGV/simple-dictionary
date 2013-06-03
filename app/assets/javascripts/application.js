// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function gettoken() {

var request = require('request');
request.post(
    'https://datamarket.accesscontrol.windows.net/v2/OAuth2-13/',
    { form: { 
       client_id : 'artemgolovin', 
       client_secret  : 'bVo3HdFatkN6Crlcys3CgRpbkpaXXmUydKPA71r8k/g', 
       scope  : 'http://api.microsofttranslator.com', 
       grant_type  : 'client_credentials' 
    } },
    function (error, response, body) {
        if (!error && response.statusCode == 200) {
            var jsBody = JSON.parse(body);
            console.log(jsBody.access_token);
        }
        else
        {
            console.log('error in request');            
        }
    }
);
}