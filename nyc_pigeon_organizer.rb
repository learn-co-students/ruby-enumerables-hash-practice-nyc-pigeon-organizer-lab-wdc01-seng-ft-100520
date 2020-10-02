def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  result = {}
  
  # piegon_data
  pigeon_data.each {|attribute, attributeValPigeonNamesHash| 
    # For ex -- :color => { :purple => ["Theo", "Peter Jr.", "Lucky"] }
    # attribute = color
    # attributeValPigeonNamesHash = { :purple => ["Theo", "Peter Jr.", "Lucky"] }
    
    attributeValPigeonNamesHash.each { |attributeVal, pigeonArr|
      # attributeVal = purple
      # piegonArr = ["Theo", "Peter Jr.", "Lucky"]
      
      pigeonArr.each { |pigeon| # Theo
        if !result.key?(pigeon)
          result[pigeon] = {}
        end
        if !result[pigeon].key?(attribute)
          result[pigeon][attribute] = []
        end
        result[pigeon][attribute].push(attributeVal.to_s)
      }
    }
  }
  puts result
  result
end
