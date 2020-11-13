require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  holiday_hash[:summer].each do |key, value|
    return value[1]
  end 
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |key, value|
    value << "Balloons"
  end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
 holiday_hash[:spring].each do |holiday, items|
   items << supply 
  puts items
 end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  new_holiday = holiday_hash
  new_holiday[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
return holiday_hash[:winter].values.join(", ")
end

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season, holiday|
      puts season.to_s.capitalize! << ":"
      holiday.each do |holiday, supplies|
      holiday = holiday.to_s.split("_").map {|x| x.capitalize}.join(" ") << ":"
      supplies = supplies.join(", ")
      puts "  #{holiday} #{supplies}"
      end 
    end 
  end

 

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do |season, holiday|
    holiday.map do |holiday, item|
        if item.include?("BBQ")
          holiday 
        end 
    end 
  end.flatten.compact
end







