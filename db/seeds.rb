# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

["Singapore","Switzerland","Luxembourg","Basel II","Greenbook","Management"].each do |title|
   Project.create!(:title => title, :comments => "basic sample seed data - to change")

["Admin","Publisher","Simple User","Advanced User","Guest"].each do |name|
   Role.create!(:name => name)
  
#           Post.create(:title => "Welcome to the blog",
#                  :content => "Welcome to my blog! I hope you enjoy it!",
#                  :author => User.find_by_name("Chuck Wood"))

end