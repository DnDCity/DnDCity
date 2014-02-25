#!/usr/bin/env rails runner
require 'fileutils'

def skill sections
  skill_each = sections['Skill Points at Each Level'] || sections['Skill Points at Each Additional Level']
  if skill_each &&  /(\d) \+ Int/ =~ skill_each
    return $1
  else
    nil
  end
end

def alignment a
  case a = (a || "").strip
  when /^\s*$/
    nil
  when /Any\./
    nil
  else
    a
  end
end

def link_skill cc, name, subject = nil
  if skill = Skill.find_by_name(name)
    cc.class_skills.find_or_create_by(skill_id: skill.id, subject: subject)
  else
    puts "no skill #{name}"
  end
end

def class_skills cc, txt
  txt.sub! /The [\w ]+’s class skills \(and the key ability for each skill\) are /, ''
  puts "Class Skills #{cc}:"
  skills = txt.split(/,\s+/)
  skills.each do |skill|
    case skill
    when /\[Knowledge\]\(([\w\/\.]+)\)\s*\(([\w ]+)\)/
      subject = $2
      link_skill cc, "Knowledge", subject
    when /\[Knowledge\]\(([\w\/\.]+)\)\s*\(([\w ]+)\)\s*\(Int\)/
      subject = $2
      link_skill cc, "Knowledge", subject
    when /\[([\w ]+)\]\(([\w\/\.]+)\)\s*\((\w+)\)/
      name = $1
      link = $2
      key_ability = $3
      name.sub!(' of ',' Of ')
      link_skill cc, name
    else
      puts "  * #{skill}"
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
    character_class[:hit_die] = sections['Hit Die'].strip.sub(/\./,'')
    character_class[:skill_points_per_level] = skill sections
    character_class[:alignment_restrictions] = alignment sections['Alignment']
    character_class[:key] = key
    character_class[:class_type] = class_type
    character_class[:desc] = md
    cc = CharacterClass.find_or_create_by_key!(character_class)
    cc.update_attributes! character_class

    class_skills cc, sections['Class Skills']
  end
end

