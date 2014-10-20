require 'csv'
namespace :production_credits do
  desc 'import location'
  task :import_locations, [:filename] => :environment do |t, args|

    csv = CSV.open(args[:filename], { :headers => true })
    keys = [:id, :denormalized_name]
    csv.each do |row|
      
      params = {id: row['Location ID'], denormalized_name: row['Location']}
      # print params

      ProductionCredits::Venue.create!(params)
    end


    # lines = File.new(args[:filename]).readlines
    # header = lines.shift.strip
    # keys = header.split(',').drop(1)
    # lines.each do |line|
      
    #   values = line.strip.split(',')
    #   params = {id: values.shift}
    #   keys.each_with_index do |key,i|
    #     params[key] = values[i]
    #   end
      # print params
      # PerformanceCredits::Venue.create(params)

      # Call with 
      # rake app:production_credits:import_locations['/Users/jeff/CodingZeal/OSF_Archive/prodution_data/locations.csv']
    # end
  end
end