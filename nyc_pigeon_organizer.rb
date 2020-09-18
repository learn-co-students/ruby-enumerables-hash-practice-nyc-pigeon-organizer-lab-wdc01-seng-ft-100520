require 'pry'

def nyc_pigeon_organizer(data)
  final_results = data.each_with_object ({}) do |(keys, value), final_arr|
    #binding.pry  
    value.each do |in_key, names|
      names.each do |name|
      #  binding.pry
        if !final_arr[name]
          final_arr[name] = {}
        end
        if !final_arr[name][keys]
          !final_arr[name][keys] = []          
        end
        final_arr[name][keys].push(in_key.to_s) 
      end
    end
  end
  #binding.pry 
end
 