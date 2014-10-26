require 'fileutils'

class Git < Thor
	 include Thor::Actions

	desc "stats", "shows some stats about the github repo you are currently in"
	def stats()
		system('git ls-files | xargs wc -l')
	end
end