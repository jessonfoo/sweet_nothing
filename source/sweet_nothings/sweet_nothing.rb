class sweet_nothing
	require 'twilio-ruby' 

	private 
	account_sid = "ACXXXXXXXXXXXXXXXXX"
	auth_token = "YYYYYYYYYYYYYYYYYY"

	public



	@client = Twilio::REST::Client.new account_sid, auth_token 

	@client.account.messages.create({
		from: '+19099920609',   
		to: '+19495255124',
		body: "#{message}"
		})


