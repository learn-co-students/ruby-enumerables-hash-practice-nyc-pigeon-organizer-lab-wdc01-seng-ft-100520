require 'pry'
def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  
  #Good Grief.  I spun my wheels on this for more than a week.
  #After reading about stuff online it looks like maybe I needed
  #to splat arrays back into the hash to build it the way
  #I thought made sense, but I couldn't get that working either.  
  #Implementing the solution from youtube :(
  
  pigeon_list = pigeon_data.each_with_object({}) do |(key,value), pigeon_list_arr|
      
    value.each do |to_data, names|
      names.each do |name|
        #binding.pry
        if !pigeon_list_arr[name]
          pigeon_list_arr[name]={}
        end
        if !pigeon_list_arr[name][key]
          pigeon_list_arr[name][key] = []
        end
      #binding.pry        
      pigeon_list_arr[name][key].push(to_data.to_s)
      #binding.pry
      end
      
    end
  end
  #binding.pry
  #pigeon_list
end
