#!/usr/bin/env ruby

require 'json'
require 'set'

def scrub(sensitive_fields, data)
  data.each do |key, value|
    # handle everything
  end
  data
end

if ARGV.length != 2
  puts "Usage: scrub.rb sensitive_fields.txt input.json"
  exit 1
end

sensitive_fields_file, input_json_file = ARGV

begin
  sensitive_fields = File.read(sensitive_fields_file).split("\n").to_set
  input_json = JSON.parse(File.read(input_json_file))
rescue StandardError => e
  puts "Error: #{e.message}"
  exit(1)
end

scrubbed_json = scrub(sensitive_fields, input_json)

puts JSON.pretty_generate(scrubbed_json)