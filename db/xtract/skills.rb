#!/usr/bin/env ruby

require "rubygems"
require "nokogiri"
require 'open-uri'
require 'reverse_markdown'
require 'json'
require 'yaml'

def filter href
  case href
  when /\/srd\/skills\/.*[Ss]kill/
    "http://www.d20srd.org#{href}"
  when /\/srd\/skills\/(\w*)\.htm/
    "/skills/#{$1}"
  when /^\//
    "http://www.d20srd.org#{href}"
  else
    href
  end
end

def extract name
  puts "extracting: #{name}"
  url = "http://www.d20srd.org/srd/skills/#{name}.htm"
  html = open(url)
  page = Nokogiri::HTML(html)   
  page.css("#header").remove
  page.css(".footer").remove
  page.css("#dc15search").remove
  page.css("a").each do |link|
    link.set_attribute(:href,filter( link.attr(:href)))
  end
  record = {
    key: name,
    url: url
  }
  h1 = page.css("h1")
  skill_name = h1.inner_html
  h1.remove
  if /(.*) \((.*)\)/ =~ skill_name
    skill_name = $1
    extras = ($2).split(';')
    key_ability = extras.shift.strip
    record.merge!({
      name: skill_name, 
      key_ability: key_ability,
    })
    extras.each do |extra|
      record[extra.strip.downcase.gsub(/\s+/,'_').to_sym] = true
    end
  end
  desc = ReverseMarkdown.parse(page.css("body").inner_html.strip).strip
  puts desc
  record[:desc] = desc
  return record
end

html = open("http://www.d20srd.org/indexes/skills.htm")
page = Nokogiri::HTML(html)   
page.css("#header").remove
page.css(".footer").remove
page.css("#dc15search").remove

skills = []

page.css("a").each do |link|
  href = link.attr(:href)
  case href
  when /#/ 
    # do nothing
  when /\/srd\/skills\/.*[Ss]kill/
    puts "Ignoring: #{href}"
  when /\/srd\/skills\/(\w*)\.htm/
    skills.push extract $1
  else
    puts "Unhandled: #{href}"
  end
end

open 'skills.json', 'w' do |f|
  f.puts skills.to_json
end

open 'skills.yaml', 'w' do |f|
  f.puts skills.to_yaml
end



