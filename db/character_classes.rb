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

def class_table cc
  key = cc.key
  puts "Class Table: #{key}"
  file = __FILE__.sub(/\.rb$/,"/#{key.pluralize}_table.html")
  html = IO.read(file)
  table = Nokogiri::HTML(html)   
  babpl = 1
  forts = [0,0,0,0,0]
  refs = [0,0,0,0,0]
  wills = [0,0,0,0,0]
  table.css('tr').each do |tr|
    level, bab, fort, ref, will, special, *td =  tr.css('td').to_a.collect{|td| td.content}
    case level
    when /^(\d+)\w+/ # valid row
      level = $1.to_i
      bab = bab.gsub('+','').split('/').first.to_i
      babpl = (bab.to_f * 4 / level).ceil / 4.0
      fort = fort.sub('+','').to_i
      ref = ref.sub('+','').to_i
      will = will.sub('+','').to_i
      forts[fort] ||= 0
      refs[ref] ||= 0
      wills[will] ||= 0
      forts[fort] += 1
      refs[ref] += 1
      wills[will] += 1
    end
  end
  cc.base_attack_bonus = babpl
  puts forts.inspect
  cc.base_fort_progression = 1.0 / forts.max
  cc.base_ref_progression = 1.0 / refs.max
  cc.base_will_progression = 1.0 / wills.max
  cc.save
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
    class_table cc
  end
end

