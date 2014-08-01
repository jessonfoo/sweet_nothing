require '../app/models/message'

require 'CSV'

lines = []
text = File.readlines('messages.txt')
text.each do |line|
  lines << line.to_s
  puts line
end

lines.each {|line| Message.create(:text => line)}

# Message.create(:text => "sfdsddf")
# messages = Messages.all
# p messages
