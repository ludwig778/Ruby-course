array = Array.new
User.all.each { |x| array << x.id }

100.times do |x|
	article = Article.create(title: "this is title n°#{x}", description: "This is the #{x}th description", user: User.find(array[ x % User.all.length ]))
	article.save
end
