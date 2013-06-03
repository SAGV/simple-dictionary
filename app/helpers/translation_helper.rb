module TranslationHelper
	# def get_translation

	# 	to = 'es'
	# 	from = 'en'

	# 	text = 'Check me, right?'
	# 	src = 'http://api.microsofttranslator.com/V2/Ajax.svc/Translate'

	# 	token = 'http%3a%2f%2fschemas.xmlsoap.org%2fws%2f2005%2f05%2fidentity%2fclaims%2fnameidentifier=artemgolovin&http%3a%2f%2fschemas.microsoft.com%2faccesscontrolservice%2f2010%2f07%2fclaims%2fidentityprovider=https%3a%2f%2fdatamarket.accesscontrol.windows.net%2f&Audience=http%3a%2f%2fapi.microsofttranslator.com&ExpiresOn=1370210925&Issuer=https%3a%2f%2fdatamarket.accesscontrol.windows.net%2f&HMACSHA256=WIBP%2fx%2b65eFjwoEG3hXmtLf%2f1Ha1V4kEM9Ht2rl%2bPoE%3d'

	# 	url = src + "?appId=Bearer%20" + Rack::Utils.escape(token) +
 #                "&from=" + Rack::Utils.escape(from) +
 #                "&to=" + Rack::Utils.escape(to) +
 #                "&text=" + Rack::Utils.escape(text)

	# end

	# def get_token

	# 	grant_type='client_credentials'
	# 	client_id='artemgolovin'
	# 	client_secret='bVo3HdFatkN6Crlcys3CgRpbkpaXXmUydKPA71r8k/g'
	# 	scope='http://api.microsofttranslator.com'
	# 	src = 'https://datamarket.accesscontrol.windows.net/v2/OAuth2-13'

	# 	url = src + "?grant_type" + Rack::Utils.escape(grant_type) +
 #                "&client_id=" + Rack::Utils.escape(client_id) +
 #                "&client_secret=" + Rack::Utils.escape(client_secret) +
 #                "&scope=" + Rack::Utils.escape(scope)

	# end

	# def translate(text, lang_from, lang_to)
	# 	require 'rubygems'
	# 	require 'bing_translator'
	# 	translator = BingTranslator.new('artemgolovin', 'bVo3HdFatkN6Crlcys3CgRpbkpaXXmUydKPA71r8k/g', true)
	# 	result = translator.translate text, :from => lang_from, :to => lang_to
	# end
end