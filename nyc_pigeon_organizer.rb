require 'pry'

#||= operator is awesome! It means 'a || a = b', ie, if a evaluates to false, set a = b.
#so  if !output)_hash[name].include?(data_type)
#       output_hash[name][data_type] = []
#    end
#can be rewritten as:
#    output_hash[name][data_type] ||= []


#This was my original code, I rewrote it below with the ||= operator. So much simpler and easier to read!
# def nyc_pigeon_organizer(data)
#   # write your code here!
#   output_hash = {}
#   data.each {|data_type, data_hash| #iterate through everything. blah blah, used binding.pry to make sure each level was correct.
#       data_hash.each {|key, value_array| #I hate these parameter names. Not very descriptive
#         value_array.each {|name|
#           if !output_hash.include?(name) #if no name_hash in the output hash, make one
#             output_hash[name] = {}
#           end
#           if !output_hash[name].include?(data_type) #if the type of data hasnt been added, add an empty array to add values to
#             output_hash[name][data_type] = []
#           end #supposing all the previous works, shovel values onto each data_type array.
#             output_hash[name][data_type] << key.to_s #turn symbol into string to make the output pretty.
#         }
#       }
#   }
#   output_hash
# end

def nyc_pigeon_organizer(data)
  # write your code here!
  output_hash = {}
  data.each {|data_type, data_hash| #iterate through everything. blah blah, used binding.pry to make sure each level was correct.
      data_hash.each {|key, value_array| #I hate these parameter names. Not very descriptive
        value_array.each {|name|
            output_hash[name] ||= {}
            output_hash[name][data_type] ||= []
            output_hash[name][data_type] << key.to_s #turn symbol into string to make the output pretty.
        }
      }
  }
  output_hash
end

#writing out what I want my code to do. Iterate through all levels, each time a value/array index matches a name, add that key to a hash
#if the name is already a 'super key' in the new hash, just add to the hash, otherwise make a new one.
