class Restaurant < ApplicationRecord
	has_many :categories, dependent: :destroy
end
