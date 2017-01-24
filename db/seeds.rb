# To start anew, run: rails db:drop && rails db:create && rails db:migrate && rails db:seed

require 'csv'

# seed the cities table with the cities_table.csv file

csv_text = File.read(Rails.root.join('lib', 'seeds', 'cities_table.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = City.new
  t.name = row['name']
  t.state = row['state']
  t.cost_of_living_monthly = row['cost_of_living_monthly']
  t.walk_score = row['walk_score']
  t.image = row['image']
  t.population = row['population']
  t.save
end

puts "There are now #{City.count} rows in the cities table"


csv_text = File.read(Rails.root.join('lib', 'seeds', 'jobs_table.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Job.new
  t.title = row['title']
  t.national_median_salary = row['national_median_salary']
  t.save
end

puts "There are now #{Job.count} rows in the jobs table"


csv_text = File.read(Rails.root.join('lib', 'seeds', 'job_by_cities_table.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = JobByCity.new
  t.city_id = row['city_id']
  t.job_id = row['job_id']
  t.median_salary = row['median_salary']
  t.score = row['score']
  t.save
end

puts "There are now #{JobByCity.count} rows in the job_by_cities table"



