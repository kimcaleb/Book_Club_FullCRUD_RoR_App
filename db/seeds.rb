# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


books = [
    {name: "Thief Lord", author: "Cornelia Funke", description: "children's novel, adventure", image: "https://upload.wikimedia.org/wikipedia/en/thumb/6/60/Thieflordbookcover.jpg/220px-Thieflordbookcover.jpg", link: "https://www.amazon.com/Thief-Lord-Cornelia-Funke/dp/0545227704", likes: 0},
    {name: "Data Structures and Algorithms in Java", author: "Robert Lafore", description: "education, computer science, Java", image: "https://images-na.ssl-images-amazon.com/images/I/51NoqhM4r9L._SX407_BO1,204,203,200_.jpg", link: "https://www.amazon.com/Data-Structures-Algorithms-Java-2nd/dp/0672324539/ref=sr_1_6?s=books&ie=UTF8&qid=1547582611&sr=1-6&keywords=data+structures+and+algorithms+in+java", likes: 0}
]

Book.create(books)