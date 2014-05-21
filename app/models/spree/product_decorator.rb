module Spree
  Product.class_eval do
    after_save :save_permalink_to_history
    
    def save_permalink_to_history
      puts "Saving old value #{permalink_was}"
      ProductRedirect.create(:permalink => permalink_was, :product => self)
    end
  end    
end