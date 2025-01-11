
## Authors Table: 
## Add a new author to the authors table
INSERT INTO authors (author_name) VALUES ('Hafiz Ahmed');

INSERT INTO authors (author_name) VALUES
("Jane Smith"),
("John Doe"),
("Alice Johnson"),
("Bob Brown"),
("Charlie White"),
("David Black"),
("Eve Green"),
("Frank Grey"),
("Grace Pink"),
("William Green");

## Retrieve all authors from the authors table
SELECT * FROM authors;

## retrieve a specific author by their ID from the authors table
SELECT * FROM authors WHERE id = 7;

## Update an author's name in the authors table
UPDATE authors SET author_name = "Rabbil Hasan" WHERE id = 3;

## Delete an author from the authors table
DELETE FROM authors WHERE id = 8;




## Categories Table: 

## Add a new category to the categories table
INSERT INTO categories (category_name) VALUES
("Technology"),
("Science"),
("Health & Wellness"),
("Entertainment"),
("Travel"),
("Food"),
("Fashion");

## retrieve all categories from the categories table
SELECT * FROM categories;

## retrieve a specific category by its ID from the categories table
SELECT * FROM categories WHERE id = 6;

## Update a category's name in the categories table
UPDATE categories SET category_name = "Cuisine" WHERE id = 7;

## Delete a category from the categories table
DELETE FROM categories WHERE id = 5;




## Blogs Table: 

## Add a new blog to the blogs table
INSERT INTO blogs (title, body, category_id, author_id) VALUES
("New Blog Post", "This is a new blog post", 1, 1),
("Another Blog Post", "This is another blog post", 2, 2),
("Yet Another Blog Post", "This is yet another blog post", 3, 3),
("One More Blog Post", "This is one more blog post", 4, 4),
("Final Blog Post", "This is the final blog post", 1, 5),
("The Last Blog Post", "This is the last blog post", 2, 6),
("The Very Last Blog Post", "This is the very last blog post", 1, 1),
("The Ultimate Blog Post", "This is the ultimate blog post", 3, 7),
("The Penultimate Blog Post", "This is the penultimate blog post", 2, 2),
("The Best Blog Post", "This is the best blog post", 4, 9),
("The Worst Blog Post", "This is the worst blog post", 1, 9),
("The Most Popular Blog Post", "This is the most popular blog post", 2, 7);

## retrieve all blogs from the blogs table
SELECT * FROM blogs;

## retrieve a specific blog by its ID from the blogs table
SELECT * FROM blogs WHERE id = 1;

## All blogs with their category and author information
SELECT blogs.title, blogs.body, categories.category_name, authors.author_name
FROM blogs
JOIN categories ON blogs.category_id = categories.id
JOIN authors ON blogs.author_id = authors.id;

## update a blog’s title in the blogs table
UPDATE blogs SET title = "New Technology Blog" WHERE id = 1;

## update a blog’s category or author in the blogs table
UPDATE blogs SET category_id = 4, author_id = 3 WHERE id = 20;

## delete a blog by its ID from the blogs table
DELETE FROM blogs WHERE id = 1;



## Specific Queries: 

## All blogs written by a specific author

SELECT authors.author_name, blogs.title, blogs.body, categories.category_name
FROM blogs
JOIN authors ON blogs.author_id = authors.id
JOIN categories ON blogs.category_id = categories.id
WHERE authors.author_name = "Rabbil Hasan";

## All blogs in a specific category
SELECT categories.category_name, blogs.title, blogs.body
FROM blogs
JOIN categories ON blogs.category_id = categories.id
WHERE categories.id = 2; 
