# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Assignment.destroy_all
CompletedAssignment.destroy_all

a1 = Assignment.create(title: "Blackjack", description: "Game of blackjack", assigned_date: "2014-06-12", due_date: "2014-07-08")
a2 = Assignment.create(title: "2048", description: "Game of 2048",  assigned_date: "2014-06-19", due_date: "2014-06-21")
a3 = Assignment.create(title: "Blog", description: "Blog your experience", assigned_date: "2014-07-26", due_date: "2014-07-28")
#a1 = Assignment.create(title: "Blackjack", description: "Game of blackjack", assigned_date: "2014-06-12", due_date: "2014-06-14")

names = %w(nandita eric sean adrianne ayaz kevin david alex jesse)
names.each do |name|
  user = User.create name: name, password:"password", user_type: "S"
  if (name != "jesse")
    user.completed_assignments.create(assignment: a1, on_time: false, github_url: "")
    user.completed_assignments.create(assignment: a2, on_time: false, github_url: "")
    user.completed_assignments.create(assignment: a3, on_time: false, github_url: "")
  end

end

jesse = User.find_by(name: "jesse")
jesse.user_type="T"
jesse.save
