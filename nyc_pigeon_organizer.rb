require 'pry'

def nyc_pigeon_organizer(data)
  raw_pigeon_colors = data.values #=>returns all colors
  binding.pry
  pigeon_names = raw_pigeon_colors.map{|names| names.values}.flatten.uniq
  hash_of_pigeons = {}
  
  hashing_names = pigeon_names.map do |name| 
    hash_of_pigeons[name] = {}
    data.map do |attribute, attribute_type| #value creates empty array after attribute
      hash_of_pigeons[name][attribute] = []
        attribute_type.map do |current_attribute, names_array|
      # If current pigeon's name exists inside of the color hash, add the color to pigeons color
      # binding.pry
          if names_array.include?(name)
            hash_of_pigeons[name][attribute] << current_attribute.to_s
        end
      end
    end
  end
hash_of_pigeons
end

# def nyc_pigeon_organizer(data)
#   raw_pigeon_colors = data.values #=>returns all colors
#   pigeon_names = raw_pigeon_colors.map{|names| names.values}.flatten.uniq
  
# # pigeon_names #=> all names listed once in a new array
#   hash_of_pigeons = {}
  
#   hashing_names = pigeon_names.map do |name| 
#     hash_of_pigeons[name] = {}
#     data.each do |attribute, color_hash|
#       hash_of_pigeons[name][attribute] = []
#       color_hash.each do |qualities, more_names|
#         if more_names.include?(name)
#           hash_of_pigeons[name][attribute] << qualities.to_s 
#         end
#       end
#     end
#   end
#     hash_of_pigeons
# end
