module PasswordGenerator
	NUMBER_OF_CHARACTERS = 16	
	def PasswordGenerator.generateRandomPass
		allowed_chars = {
			:lowercase => ('a'..'z').to_a,
			:uppercase => ('A'..'Z').to_a,
			:numbers => ('0'..'9').to_a,
			:symbols => ['!', '"', '#', "\$", '%', '&', "\'", "\(", "\)", '*', '+', "\,", '-', "\.", '/', "\:", 
						 "\;", '<', "\=", '>', '?', "\@", '[', "\\", "\]", '^', "\_", "\'", "\{", '|', "\}", "\~"]
			}
			num_of_lowercase = rand(1..NUMBER_OF_CHARACTERS - 3)
			num_of_uppercase = rand(1..NUMBER_OF_CHARACTERS - num_of_lowercase - 2)
			num_of_numbers = rand(1..NUMBER_OF_CHARACTERS - num_of_lowercase - num_of_uppercase - 1)
			num_of_symbols = NUMBER_OF_CHARACTERS - num_of_lowercase - num_of_uppercase - num_of_numbers
			pass = allowed_chars[:lowercase].shuffle()[0..num_of_lowercase - 1] +
				   allowed_chars[:uppercase].shuffle()[0..num_of_uppercase - 1] +
				   allowed_chars[:numbers].shuffle()[0..num_of_numbers - 1] +
				   allowed_chars[:symbols].shuffle()[0..num_of_symbols - 1]
			pass = pass.shuffle.join
			puts "Generated password: #{pass}"
	end
	PasswordGenerator.generateRandomPass
end

