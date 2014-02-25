#!/usr/bin/env rails runner
require 'fileutils'

def link_skill cc, name, subject = nil
  if skill = Skill.find_by_name(name)
    cc.class_skills.find_or_create_by(skill_id: skill.id, subject: subject)
  else
    puts "no skill #{name}"
  end
end

def class_skills cc, skills
  skills.each do |skill|
    case skill
    when /([\w ]+) \(([\w ]+)\)/
      name = $1
      subject = $2
      link_skill cc, name, subject
    else
      link_skill cc, skill
    end
  end
end

yaml = IO.read(__FILE__.sub(/\.rb$/,'.yml'))
class_types = YAML.load yaml

class_types.each do |class_type, character_classes|
  character_classes.each do |key, character_class|
    file = __FILE__.sub(/\.rb$/,"/#{key}.md")
    md = IO.read(file)
    sections = {}
    section_name = key
    md.each_line do |line|
      case line
      when /^#* (.*)/
        section_name = $1
      when /^\s*$/
        # ignore blank lines
      else
        if sections[section_name] 
          sections[section_name] += line
        else
          sections[section_name] = line
        end
      end
    end

    # puts sections.keys.inspect
    FileUtils.touch file
    character_class[:key] = key
    character_class[:class_type] = class_type
    character_class[:desc] = md
    skills = character_class.delete('class_skills')
    cc = CharacterClass.find_or_create_by_key!(character_class)
    cc.update_attributes! character_class

    class_skills cc, skills
  end
end

