class PagesController < FrontendsController
  layout 'application'
  def home
    @urgent_products = Product.urgent
    @all_products = Product.all
  end
end
