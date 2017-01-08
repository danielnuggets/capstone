class JobByCity < ApplicationRecord
  belongs_to :city
  belongs_to :job
end
