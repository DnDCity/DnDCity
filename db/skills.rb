#!/usr/bin/env rails runner

skills = JSON.parse IO.read(__FILE__.sub(/\.rb$/,'.json'))

skills.each do |skill|
##  puts skill.keys.inspect
  Skill.find_or_create_by_name(skill)
end
