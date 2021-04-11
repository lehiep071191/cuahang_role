class Category < ApplicationRecord
    has_many :productions, dependent: :destroy
end
