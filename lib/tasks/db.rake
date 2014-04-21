
namespace :db do

  TABLES = %w( back design_option design_order design doc faq feature feedback headline item option order organization print/features print/headlines print/products print_price product proof review role sample template_option template testimonial user_file user)

  desc "Dump database tables into yaml files in the db directory"
  task dump: :environment do
    TABLES.each do |table|
      puts "Dumping: #{table.pluralize}"
      open("db/#{table.pluralize}.yml","w") do |file|
        klass = table.singularize.classify.constantize
        file.puts klass.all.collect{|r| r.attributes }.to_yaml
      end
    end
  end

  desc "Load database tables from yaml files in the db directory"
  task load: :environment do
    TABLES.each do |table|
      puts "Loading: #{table.pluralize}"
      open("db/#{table.pluralize}.yml") do |file|
        klass = table.singularize.classify.constantize
        yaml = YAML.load(file.read)
        yaml.each do |row|
          id = row["id"]
          rec = klass.find_or_initialize_by(id: id)
          row.each_pair do |k,v|
            rec[k] = v
          end
          rec.save
        end
      end
    end
  end

end
