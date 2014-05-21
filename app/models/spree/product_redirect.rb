module Spree
  class ProductRedirect < ActiveRecord::Base
    belongs_to :product, class_name: 'Spree::Product'
    attr_accessible :permalink, :product
    
    validates :permalink, presence: true
    validates :product, presence: true
  end
end
