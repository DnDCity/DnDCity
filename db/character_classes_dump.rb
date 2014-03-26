#!/usr/bin/env rails runner
require 'fileutils'

class_types = {}
CharacterClass.all.each do |cc|
  class_type = cc.class_type
  key = cc.key
  attribs = cc.attributes
  attribs.delete 'key'
  attribs.delete 'class_type'
  attribs.delete 'desc'
  attribs.delete 'created_at'
  attribs.delete 'updated_at'
  attribs.delete 'id'
  attribs['class_skills'] = cc.class_skills.collect do |cs| 
    a = cs.skill.name
    case cs.subject
    when /^\s*$/, nil, "Int"
    when "all skills taken individually"
      # nothing
    else
      a += " (#{cs.subject})"
    end
    a
  end
  class_types[class_type] ||= {}
  class_types[class_type][key] = attribs
end

IO.write(__FILE__.sub(/\.rb$/,'.yml'), class_types.to_yaml)

