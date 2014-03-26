#!/usr/bin/env ruby
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'config', 'environment'))
require 'fileutils'

yaml = IO.read(__FILE__.sub(/\.rb$/,'.yml'))
races = YAML.load yaml

races.each do |key, race|
  if race.has_key? 'size'
    race['size'] = Size.find_by_name(race['size'])
  end
  race['key'] = key
  race['str'] ||= 0
  race['con'] ||= 0
  race['dex'] ||= 0
  race['int'] ||= 0
  race['wis'] ||= 0
  race['cha'] ||= 0
  r = Race.find_or_create_by_name!(race)
  puts r.inspect
  r.update_attributes! race
end

