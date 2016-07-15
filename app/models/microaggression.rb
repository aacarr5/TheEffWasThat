class Microaggression < ActiveRecord::Base

	AGG = %w(boss coworker subordinate patron)

	belongs_to :user

end
