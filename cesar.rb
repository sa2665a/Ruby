def solve_cipher()
	puts "Cesar Cipher has a left shift of 3 "
  	shift=-3

	puts "Write your word to encrypt: "
	encrypt_word = gets.chomp
	encrypting_word = encrypt_word.split('')
	encrypting_letters = []
	
	for l in encrypting_word    
		if l.ord == 32
			encrypting_letters << l
		elsif l.upcase.ord + shift < 65
			l = l.ord + 26 + shift
			encrypting_letters << l
		elsif l.upcase.ord + shift > 90
			l = l.ord - 26 + shift
			encrypting_letters << l
		else
			encrypting_letters << (l.ord + shift)
		end
	end
	
	cipher_encryption = []
	
	for numbers in encrypting_letters
		cipher_encryption << numbers.chr
	end
		encrypted_word = cipher_encryption.join("")
		puts	encrypted_word
end

solve_cipher()
