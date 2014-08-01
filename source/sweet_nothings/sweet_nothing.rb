class sweet_nothing
	require 'twilio-ruby' 

	private 
	account_sid = "ACXXXXXXXXXXXXXXXXX"
	auth_token = "YYYYYYYYYYYYYYYYYY"

	public
	number = 


	@client = Twilio::REST::Client.new account_sid, auth_token 

	@client.account.messages.create({
		from: '+19099920609',   
		to: "+#{number}",
		body: "#{message}"
		})


