class Order < ActiveRecord::Base
  belongs_to :parties
  belongs_to :items
end
