class Product < ActiveRecord::Base
  has_one :walk
    
  accepts_nested_attributes_for :walk
end