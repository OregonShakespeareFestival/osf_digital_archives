require 'csv'
namespace :production_credits do
  desc 'import location'
  task :import_locations, [:filename] => :environment do |t, args|

    csv = CSV.open(args[:filename], { :headers => true })
    keys = [:id, :denormalized_name]
    csv.each do |row|
      unless row.empty?
      # params = {id: row['Location ID'], denormalized_name: row['Location']}
        sql_str = "insert into production_credits_venues (id, denormalized_name) values (#{row['Location ID']}, \"#{row['Location']}\")"
        puts sql_str
        ProductionCredits::Venue.connection.insert(sql_str)

      end

    end

  end
end