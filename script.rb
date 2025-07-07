require_relative "gemfile_parser"

contents = File.read("./Gemfile")
parser = GemfileParser.new

require "byebug"
debugger

parser.instance_eval(contents)
parser # => <GemfileParser:0x000076b39279dc60
       #      @sources=["rubygems.org"],
       #      @gems=[{name: "nokogiri", version: nil,      groups: []},
       #             {name: "rake",     version: "10.3.2", groups: []},
       #             {name: "unicorn",  version: nil,      groups: [:production]},
       #             {name: "pry",      version: nil,      groups: [:development, :test]}],
       #      @current_groups=[]>
