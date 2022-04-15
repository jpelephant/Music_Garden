class Review < ApplicationRecord
  belongs_to :customer
  belongs_to :admin
  has_many :tagmaps
  has_many :favorites, dependent: :destroy

  def favorited_by?(customer)
    favorites.where(customer_id: customer.id).exists?
  end
  
  def favorited_by?(admin)
    favorites.where(admim_id: admin.id).exists?
  end
  
end
