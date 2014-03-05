#!/usr/bin/env ruby
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'config', 'environment'))
require 'fileutils'

yaml = IO.read(__FILE__.sub(/\.rb$/,'.yml'))
sizes = YAML.load yaml

sizes.each do |name, mod|
  size = {name: name.humanize, modifier: mod}
  s = Size.find_or_create_by_name!(size)
  s.update_attributes! size
end

