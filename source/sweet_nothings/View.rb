require_relative 'config/application'
require 'twilio-ruby'
require_relative 'db/seeds'

import
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

  def logo
    puts "  @@@     @@@   @@@     @@@   @@@     @@@   @@@     @@@   @@@     @@@   @@@     @@@   @@@     @@@   @@@     @@@   @@@     @@@"
puts " @   @   @   @ @   @   @   @ @   @   @   @ @   @   @   @ @   @   @   @ @   @   @   @ @   @   @   @ @   @   @   @ @   @   @   @"
puts " @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @"
puts "  @         @   @         @   @         @   @         @   @         @   @         @   @         @   @         @   @         @"
puts "   @       @     @       @     @       @     @       @     @       @     @       @     @       @     @       @     @       @ "
puts "    @     @       @     @       @     @       @     @       @     @       @     @       @     @       @     @       @     @ "
puts "     @   @         @   @         @   @         @   @         @   @         @   @         @   @         @   @         @   @ "
puts "      @ @           @ @           @ @           @ @           @ @           @ @           @ @           @ @           @ @"
puts "       @             @             @             @             @             @             @             @             @"

puts ""
puts ""
puts ""

puts "            SSSSSSS   WWWW               WWWW  EEEEEEEEEEE   EEEEEEEEEEE   TTTTTTTTTTTT  "
puts "          SS           WWW               WWW   EEE           EEE           TTTTTTTTTTTT  "
puts "            SS          WW       W       WW    EEE           EEE               TTT       "
puts "              SS         W      W  W     W     EEEEE         EEEEE             TTT       "
puts "                SS        W    W    W   W      EEEEE         EEEEE             TTT       "
puts "                SS        WW W      W WW       EEE           EEE               TTT       "
puts "                 SS        WW        WW        EEE           EEE               TTT       "
puts "            SSSSSS          W        W         EEEEEEEEEE    EEEEEEEEEEE       TTT       "

puts ""
puts ""
puts ""

puts "  NNN        NN    @@@     @@@    TTTTTTTTTTTT  HHH     HHH   IIIIIIIIIII   NNN        NN     GGGGGGGGGGGG      SSSSSSS   "
puts "  NN N       NN   @   @   @   @   TTTTTTTTTTTT  HHH     HHH       III       NN N       NN    GG                SS         "
puts "  NN  NN     NN   @    @ @    @       TTT       HHH     HHH       III       NN  NN     NN    GG                 SS        "
puts "  NN   NN    NN    @         @        TTT       HHH     HHH       III       NN   NN    NN    GG                  SS       "
puts "  NN    NN   NN     @       @         TTT       HHHHHHHHHHH       III       NN    NN   NN    GG                   SS      "
puts "  NN     NN  NN      @     @          TTT       HHH     HHH       III       NN     NN  NN    GG     GGGGGGG        SS     "
puts "  NN      NN NN       @   @           TTT       HHH     HHH       III       NN      NN NN    GG        GG           SS    "
puts "  NN        NNN        @ @            TTT       HHH     HHH       III       NN        NNN    GG        GG           SS    "
puts "  NN        NNN         @             TTT       HHH     HHH   IIIIIIIIIII   NN        NNN     GGGGGGGGGGGG     SSSSSS     "

puts ""
puts ""
puts ""

puts "  @@@     @@@   @@@     @@@   @@@     @@@   @@@     @@@   @@@     @@@   @@@     @@@   @@@     @@@   @@@     @@@   @@@     @@@"
puts " @   @   @   @ @   @   @   @ @   @   @   @ @   @   @   @ @   @   @   @ @   @   @   @ @   @   @   @ @   @   @   @ @   @   @   @"
puts " @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @ @    @"
puts "  @         @   @         @   @         @   @         @   @         @   @         @   @         @   @         @   @         @"
puts "   @       @     @       @     @       @     @       @     @       @     @       @     @       @     @       @     @       @ "
puts "    @     @       @     @       @     @       @     @       @     @       @     @       @     @       @     @       @     @ "
puts "     @   @         @   @         @   @         @   @         @   @         @   @         @   @         @   @         @   @ "
puts "      @ @           @ @           @ @           @ @           @ @           @ @           @ @           @ @           @ @"
puts "       @             @             @             @             @             @             @             @             @"
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

  View.sending_message
  View.finish
  sleep 3
  View.logo

end

run
