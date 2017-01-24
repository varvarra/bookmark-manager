# DataMapper.setup(:default, ;postgress://loclhost/blogger') - connecting to our database
#
# require './models/post'
#
# DataMapper.finalize
# # DataMapper.auto_migrate! - you can create the tables by issuing the following command
# this will issue the necessary CREATE statements define each storage according to their properties
#
# DataMapper.auto_upgrade! This tires to make the schema match the model. It wil create new tables, and add columns to existing tables. It wont change cahnge any exisitng columns
#
# @post = Post.create(title: "", view_ount: 4)
#
# difference between @post= Post.new and @post = Post.create that the former just creates an instance of the
# object, while the later goes throught .new, .title, .save all in one line. .create actually save not just contruct an object.
#
# puts @post.inspect
#
# puts @post2 = Post.get(2)
#
# @post.title = "New item"
#
# @post.destroy - instance method -working on the specific instance
#
# Post.destroy - destroys the model all the rows related to this model
#
# model
# class Post
#   # Give the class some database-interaction superpowers
#
#
#   # Tell the class which columns exist in the student table
#   property :id,     Serial
#   property :name,   String
# end
#
# So we've created a class that has extra abilities endowed by DataMapper: namely, the ability to persist data to the database.
# We now need to have DataMapper check the validity of the classes as we've declared them, using finalize:
#
# > DataMapper.finalize
