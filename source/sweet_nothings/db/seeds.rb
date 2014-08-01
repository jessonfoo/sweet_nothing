require_relative '../app/models/message'

require 'CSV'
def import
  lines = []
  text = File.readlines('db/messages.txt')
  text.each do |line|
    lines << line.to_s
  end

  lines.each {|line| Message.create(:text => line)}
end
