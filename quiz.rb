class Questions
	attr_accessor :prompt, :answer
	def initialize(prompt, answer)
		@prompt = prompt
		@answer = answer
	end
end

p1 = "What color are apples?\n(a)red\n(b)purple\n(c)ornage"
p2 = "What color are bannas?\n(a)pink\n(b)red\n(c)yellow"
p3 = "What color are pears?\n(a)yellow\n(b)green\n(c)orange"

questions = [
	Questions.new(p1, "a"),
	Questions.new(p2, "c"),
	Questions.new(p3, "b")
]

def run_test(questions)
	answer = ""
	score = 0
	for question in questions
		puts question.prompt
		answer = gets.chomp()
		if answer == question.answer
			score +=1
		end
	end
	puts ("You got " + score.to_s + "/" + questions.length().to_s)

end

run_test(questions)