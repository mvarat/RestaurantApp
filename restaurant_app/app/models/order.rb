class Order < ActiveRecord::Base
  belongs_to :reservations
  belongs_to :items
end
