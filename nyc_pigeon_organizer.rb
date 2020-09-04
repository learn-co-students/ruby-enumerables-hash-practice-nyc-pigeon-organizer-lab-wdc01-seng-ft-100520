require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  final_results = data.each_with_object({}) do |(key, value), final_array|
    value.each do |pigeon_colors, names|
      names.each do |name|
        if !final_array[name]
        final_array[name] = {}
        end
        if !final_array[name][key]
          final_array[name][key] = []
        end
        final_array[name][key].push(pigeon_colors.to_s)
      end  
    end
  end
end
