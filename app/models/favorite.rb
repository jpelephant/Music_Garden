class Favorite < ApplicationRecord
  belongs_to :customer
  belongs_to :admin
  belongs_to :review
end
