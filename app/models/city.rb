class City < ApplicationRecord
  has_many :job_by_cities
  has_many :jobs, through: :job_by_cities
end
