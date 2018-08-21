class Name
  
  attr_reader :title, :first_name, :last_name
  
  def initialize(title, first_name, last_name)
    @title = title
    @first_name = first_name
    @last_name = last_name
  end

end
 
name = Name.new("Mrs", "Elita", "Judjallo")
puts name.title + " " +
     name.first_name + " " +
     name.last_name