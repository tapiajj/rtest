class Product < ActiveRecord::Base
  has_many :details
  #, :dependent => :destroy
  accepts_nested_attributes_for :details
  #, :reject_if => lambda {|a| a[:content.blank?]}, :allow_destroy => true
end
