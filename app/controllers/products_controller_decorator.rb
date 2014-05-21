module Spree
  ProductsController.class_eval do
    rescue_from ActiveRecord::RecordNotFound, :with => :handle_product_not_found
  
    def handle_product_not_found
      # Maybe the permalink used is an old one. Find out by looking it up on the
      # permalink_history table. If so, issue a 301 redirect to the product.
      history = ProductRedirect.find_by_permalink(params[:id])
      if history
#        product = Product.find!(history.product_id)
        redirect_to "/products/#{history.product.permalink}", :status => :moved_permanently
      else
        render_404
      end  
    end
  end
end
