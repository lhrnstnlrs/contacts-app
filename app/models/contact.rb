class Contact < ApplicationRecord
	validates :first_name, :last_name, presence: true

	def name
    [first_name, last_name].join " "
  end
end