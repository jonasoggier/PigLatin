class PiglatinConverter

  def self.convert(word)
  	if word.class == Fixnum
  	 	return "Input a word!"
  	elsif word.class == NilClass
  		return nil
  	elsif word.include?(" ")
  		return "Please enter only one word"
		end
		new_word = word.downcase.split("")
		updated_array = new_word.dup #duplicates new_word
		vowel_array = ["a","e","i","o","u"]
		new_word.each do |letter|
			if vowel_array.include?(letter) == false 
				updated_array << letter
				updated_array.shift
				#puts updated_array.inspect
				#updated_array
			else
				updated_array.push << "ay"
				break
			end
		end
		updated_array.join
  end
end

puts PiglatinConverter.convert("My name is Samir")
puts PiglatinConverter.convert("Lenovo")
puts PiglatinConverter.convert("Apple")
puts PiglatinConverter.convert("Jonas")
puts PiglatinConverter.convert("transportation")