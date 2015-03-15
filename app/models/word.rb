class Word < ActiveRecord::Base

	validates :name, presence: true, length: {in: 3..20}
end
