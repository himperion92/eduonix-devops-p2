require "./password_generator"

puts "Select number of characters of the password (min 6, max 30): "
num_of_chars = gets.chomp.to_i
if num_of_chars < 6 or num_of_chars > 30
	raise "Number of characters of the password should be between 6 and 30!"
else
	generated_pass = PasswordGenerator.generateRandomPass(num_of_chars)
	puts "Generated password: #{generated_pass}"
end
