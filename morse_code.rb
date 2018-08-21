
morse_code =  { a: '.-', b: '-...', c: '-.-.', d: '-..', e: '.',
               f: '..-.', g: '--.', h: '....', i: '..', j: '.---',
               k: '-.-', l: '.-..', m: '--', n: '-.', o: '---',
               p: '.--.', q: '--.-', r: '.-.', s: '...', t: '-',
               u: '..-', v: '...-', w: '.--', x: '-..-', y: '-.--',
               z: '--..'}
 x = 1 
morse_code.each do |k,v|
	puts "#{x}. #{k} #{v}"
	x+=1
end

#puts morse_code.inspect

# puts "Enter a name:"
# name =gets.chomp.to_s
# name.each_char do |value|
# 	puts "your morse code is #{value}: #{morse_code[value.to_sym]}" # in my hash value is simbols so i have to use method- to._s
# end
 

puts 'Enter a morse word'
morse = gets.chomp.to_s
morse_array = morse.split(' ')
word = []
morse_array.each do |letter|
	word.push(morse_code.key(letter))
end
puts word.join('')

 #def return_input()
 #	return 
# end






#print morse_code
#puts morse_code.inspect

