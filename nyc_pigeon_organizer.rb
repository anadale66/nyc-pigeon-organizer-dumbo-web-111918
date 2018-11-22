require "pry"

data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}



def nyc_pigeon_organizer(data)
  new_list = {}
  data[:gender].each do |type, names|
    names.each do |name| 
      new_list[name] = {}
    end
  end 
  data.each do |keys,values|       #keys = color..  values = purple/grey.. 
    new_list.each do |name, att|    #name---first key of new_list(Alex) / att is {}
      att[keys] = [] #att = {} keys = color/gender etc.... -> color => []
      values.each do |val,names|    #val purple.. names are names
        if names.include?(name)  
          att[keys] << val.to_s 
        end
      end
    end
  end 
  return new_list 
end


nyc_pigeon_organizer(data)

