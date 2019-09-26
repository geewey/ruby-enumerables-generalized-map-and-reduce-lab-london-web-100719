# Your Code Here

def map(source_array)
  new_array = []
  i = 0
  while i < source_array.length do
    new_array.push ( yield(source_array[i]) )
    i += 1
  end

  return new_array
end


##  aggregator = true
# returns true when all values are truthy
# returns true when a truthy value is present

##  aggregator = false
# returns false when any value is false
# returns false when no truthy value is present
  

def reduce(source_array, starting_point=0)
  aggregator = source_array[0]
  i = 0
  while i < source_array.length
    yield(source_array, starting_point)  
    
    # # returns a running total when not given a starting point
    # if (source_array[i] is integer)
    #   aggregator = 0
    #   while i < source_array.length do
    #     aggregator += source_array[i]
    #     i += 1
    #   end
    # end
    
    i += 1
  end
  
  return aggregator
end
