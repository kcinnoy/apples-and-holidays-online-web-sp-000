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
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  # holiday_supplies[:winter][:christmas]<< supply
  # holiday_supplies[:winter][:new_years]<< supply

  holiday_supplies.map do |seasons, holidays|
    if seasons == :winter
      holidays.map do | holiday, item|
        item << supply
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies.map do |seasons, holidays|
  if seasons == :spring
    holidays.map do | holiday, item|
      item << supply
      end
    end
  end
end
#
# def add_supply_to_memorial_day(holiday_hash, supply)
#   # again, holiday_hash is the same as the ones above
#   # add the second argument to the memorial day array
#   holiday_supplies.map do |seasons, holidays|
#   if seasons == :fall
#       [seasons]
#       end
#     end
# end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies.map do |seasons, holidays|
   if seasons == :fall
       [seasons][holiday_name.to_sym]
       end
     end

end
