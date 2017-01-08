class Job < ApplicationRecord
  has_many :job_by_cities
  has_many :cities, through: :job_by_cities
end
