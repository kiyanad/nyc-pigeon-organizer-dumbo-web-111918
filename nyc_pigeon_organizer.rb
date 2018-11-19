require 'pry'

def nyc_pigeon_organizer(data)
  new_pidgeons = {}
  data.each do |attribute, values|
    values.each do |value, pidgeons|
      pidgeons.each do |pidgeon|
        if new_pidgeons.keys.include?(pidgeon)
          new_pidgeons[pidgeon][attribute] << value.to_s
        else
          new_pidgeons[pidgeon] = {:color => [], :gender => [], :lives => []}
          new_pidgeons[pidgeon][attribute] << value.to_s
        end
      end
    end
  end
  puts new_pidgeons
  new_pidgeons
end
