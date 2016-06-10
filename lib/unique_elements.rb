# This method takes an array of elements (these might be strings, integers, floats, or a
# combination of the above), and returns an array of the elements that appear once and only
# once.
def find_unique_elements(arr)
    totals = Hash.new(0)
 	unique = []
 	arr.each do |x|
 		totals[x] += 1
 	end
	totals.each do |k,v|
 		if v == 1
 			unique.push(k)
 		end
 	end
	return unique
end
#I approached this exercise the same way I approached the most-frequent-integer exercise. I created a hash so 
#that I could generate a list of the elements in the given array and also tie to them the number of times
#they appear. I again iterated over the given array such that the elements from the array are assigned as keys 
#in the hash, and each time they appear, their value is incremented by one. I then iterated over the hash with
#an if statement checking for values of one, i.e. elements from the given array that only occured once. If a 
#value in the hash is equivalent to one, its key is pushed to the 'unique' array. The 'unique' array is returned 
#at the end of the method.