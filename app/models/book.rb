class Book < ActiveRecord::Base
	 self.per_page = 3
	validates :name, uniqueness: true
	validates :author, presence: true
	 validates :name, length: { minimum: 3 ,message: "Please enter atleast 3 chars" }
	 validates :yop, numericality: true
	 
	 before_save :merge_names
	 after_destroy :print_confimation
	 
	 def merge_names
		 self.name = self.name + " by " + self.author
	 end
	 
	 def print_confimation
		 puts "Book Deleted.................."
	 end
end
