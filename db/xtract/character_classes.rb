#!/usr/bin/env ruby

require "rubygems"
require "nokogiri"
require 'open-uri'
require 'reverse_markdown'
require 'json'
require 'yaml'
require 'fileutils'
require 'active_support/inflector'

index_url = "http://www.d20srd.org/indexes/classes.htm"

def parse_table table, group, file
  id = table.attr(:id)
  case id
  when /^tableThe(\w*)/
    name = $1.tableize
    puts "parsing table: #{id}"
    open "db/srd/#{group}/#{name}_table.html", "w" do |f|
      f.puts table.to_html
    end
#    table.css('tbody tr').each do |tr|
#      puts tr.css('td').collect{|td| td.content}.inspect
#    end
    table.remove
  else
    # ignore it
  end
end

def extract href, group, file, name
  url = "http://www.d20srd.org#{href}"
  dir = "db/srd/#{group}"
  FileUtils.mkdir_p dir
  puts "opening #{url}"
  html = open(url)
  page = Nokogiri::HTML(html)   
  page.css("#header").remove
  page.css(".footer").remove
  page.css("#dc15search").remove
  page.css('table').each do |table|
    parse_table(table, group, file)
  end

  desc = ReverseMarkdown.parse(page.css("body").inner_html.strip).strip
  open("db/srd/#{group}/#{file}.md","w") do |f|
    f.puts desc
  end
end

def class_type group
  case group
  when 'classes' then 'Base'
  when 'prestigeClasses' then 'Prestige'
  when 'npcClasses' then 'Npc'
  end
end

puts "opening #{index_url}"
html = open(index_url)
page = Nokogiri::HTML(html)   
page.css("#header").remove
page.css(".footer").remove
page.css("#dc15search").remove

skills = []

page.css("a").each do |link|
  href = link.attr(:href)
  name = link.content
  case href
  when /#/ 
    # do nothing
  when /\/srd\/(\w*)\/(\w*)\.htm/
    extract href, $1, $2, name
  else
    puts "Unhandled: #{href}"
  end
end


