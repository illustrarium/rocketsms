require_relative "rocketsms.rb"

sms = Rocketsms.new
sms = sms.send("375290000000", "Hello, dear!")
puts sms