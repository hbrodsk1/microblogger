require 'jumpstart_auth'

class MicroBlogger
	attr_reader :client

	def initialize
		puts "Iniitializing..."
		@client = JumpstartAuth.twitter
	end

	def tweet(message)
		if message.length <= 140
			@client.update(message)
		else
			puts "Error: Character limit: 140"
			puts "Your tweet contains #{message.length} characters"
		end
	end
end

blogger = MicroBlogger.new
blogger.tweet("a" * 140)