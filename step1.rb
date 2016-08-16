#!/usr/local/bin/ruby

# Called with 3 args
# - service name
# - environment name
# - git sha
#
# Outputs those as JSON

require 'json'

if ENV['COG_ARGC'] != "3"
  $stderr.puts "Must pass 3 args"
  exit 1
end

res = {
  'service' => ENV['COG_ARGV_0'],
  'environment' => ENV['COG_ARGV_1'],
  'revision' => ENV['COG_ARGV_2']
}

puts res.to_json
