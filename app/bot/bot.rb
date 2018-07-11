require 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV['ACCESS_TOKEN'])

Bot.on :message do |message|
	if message.include? "Bonjour"
  		message.reply(text: "Salut, l'amie!")
  	elsif message.include? "Quoi de neuf ?"
  		message.reply(text: "Rien de spécial ! et de ton coté ?")
  	else
  		message.reply(text: "Au revoir!")
  	end  			
end