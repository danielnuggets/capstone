# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#seed the score column of the job_by_cities table
JobByCity.all.each do |jobbycity|
  jobbycity.update(score: (jobbycity.median_salary / jobbycity.city.cost_of_living_index))
end