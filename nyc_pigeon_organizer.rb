def nyc_pigeon_organizer(data)
  # write your code here!
  # binding.pry
  data.each_with_object({}) do |(key, value), new_hash|
    value.each { |inner_key, inner_values|
      # binding.pry
      inner_values.each {|name|
        if !new_hash[name]
          new_hash[name] = {}
        end
        if !new_hash[name][key]
          new_hash[name][key] = []
        end
        new_hash[name][key].push(inner_key.to_s)
        # binding.pry
      }
    }
    # binding.pry
    new_hash
  end
end
