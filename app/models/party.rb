class Party < ActiveRecord::Base

  has_many :orders

  # think about this
  belongs_to :user

end
