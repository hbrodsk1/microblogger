require 'jumpstart_auth'

class MicroBlogger
	attr_reader :client

	def initialize
		puts "Iniitializing..."
		@client = JumpstartAuth.twitter
	end

	def tweet(message)
		@client.update(message)
	end
end

blogger = MicroBlogger.new
blogger.tweet("MicroBlogger Iniitialized")