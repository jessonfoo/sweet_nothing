require_relative 'config/application'
require 'twilio-ruby'
#puts "Put your application code in #{File.expand_path(__FILE__)}"

module View
  extend self

  def welcome
    puts
    puts "Welcome to Sweet Nothings - the app that will change your relationship life."
    puts
    puts
    puts "Please provide us the following information to begin sending sweet nothings to your significant other..."
  end

  def display_user_fields(text_field)
    puts
    puts "#{text_field}: "
    gets.chomp
  end

  def sending_message
    puts
    puts "Sending message ... (this could take up to a couple minutes)"
    sleep 3
    puts "Elevator music ...."
    sleep 3
    puts "More elevator music ..."
    sleep 3
  end

  def finish
    puts
    puts "Success!"
  end

end


def run
  View.welcome

  # user_name = View.display_user_fields("Your name")
  # user_phone = View.display_user_fields("Your phone number")
  # recipient_name = View.display_user_fields("The message recipents name")
  recipient_phone = View.display_user_fields("The message recipents number")
  # reciepient_gender = View.display_user_fields("Gender of recipient")
  message = Message.all.to_a.sample.text.delete("\n")
private
account_sid = "AC8a1625e6edc9557e0af35bdbc2ed04d6"
auth_token = "d58bf5ac7bafb48cba13eae857152517"
public
  @client = Twilio::REST::Client.new account_sid, auth_token

  @client.account.messages.create({
    from: '+19099920609',
    to: "+1#{recipient_phone}",
    body: message
    })




  #User.create(:user_name => user_name, :user_phone => user_phone, :recipient_name => recipient_name,
  #            :recipient_phone => recipient_phone, :recipient_gender => recipient_gender

  # info_array = [user_name, user_phone, recipient_name, recipient_phone, reciepient_gender]
  # puts
  # info_array.each do |item|
  #   puts item
  # end

  View.sending_message
  View.finish

end

run
