#Initial Seeds file

list_of_fiction_genres = [
    "Action", 
    "Adventure",
    "Children's", 
    "Comic", 
    "Crime",
    "Drama",
    "Fairytale",
    "Fantasy",
    "Horror",
    "Mystery",
    "Poetry",
    "Romance",
    "Satire",
    "Science Fiction",
    "Thriller",
    "Young adult"
]
    
list_of_non_fiction_genres = [ 
    "Art", 
    "Autobiography", 
    "Biography", 
    "Cookbook", 
    "Diary", 
    "Dictionary",
    "Encyclopedia",
    "Guide",
    "Health",
    "History",
    "Journal",
    "History",
    "Memoir",
    "Textbook",
    "Science",
    "Self help",
    "Travel",
    "True crime"
]

# seed Fiction Genres
for genre in list_of_fiction_genres
    Genre.create(name: genre, category: "fiction")
    puts "#{genre} Genre created"
end

# seed Non-Fiction Genres
for genre in list_of_non_fiction_genres
    Genre.create(name: genre, category: "non_fiction")
    puts "#{genre} - Genre created"
end


# Author seeding - just dummy values that aren't needed
initial_total_authors = 50

for i in 1..initial_total_authors
    name = Faker::Book.author
    Author.create(name: Faker::Book.author)
    puts "#{name} - Author created"
end

	

	

	

