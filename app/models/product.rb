class Product < ActiveRecord::Base
  has_many :attributes, :dependent => :destroy
  accepts_nested_attributes_for :attributes, :reject_if => lambda {|a| a[:content.blank?]}, :allow_destroy => true
end
