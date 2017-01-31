class Notifier < ActionMailer::Base
  default from: "info@mybooks.com"
  
  def email_to_admin(book)
	  @name = book.name
	  @author = book.author
	  @year = book.yop
	  mail(:to=>"veni.rails@gmail.com",:subject=>"ALERT : A new book has been added!")
	  
  end
  
  
end
