# coding: utf-8

require 'rubygems'
require 'bundler'
require 'sinatra/reloader'

Bundler.require(:default, :development)

# DIR Method
def __dir__(*args)
  filename = caller[0][/^(.*):/, 1]
  dir = File.expand_path(File.dirname(filename))
  ::File.expand_path(::File.join(dir, *args.map(&:to_s)))
end

puts '----------> configs <----------'
require __dir__('config/options')

puts '----------> controllers <------'
require __dir__('controller/init')
