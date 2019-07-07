#!/usr/bin/ruby

require 'getoptlong'

opts = GetoptLong.new(["--help","-h",GetoptLong::OPTIONAL_ARGUMENT], ["--delete","-d",GetoptLong::OPTIONAL_ARGUMENT], ["--version","-v",GetoptLong::OPTIONAL_ARGUMENT])

opts.each do |opt, arg|
	case opt
	when "--help"
		puts "help page"
	when "--delete"
		puts "d-option"
	when "--version"
		puts "version"
	else
		puts "hogeoge"
	end
end
