class ProductsController < InlineFormsController
  set_tab :product
  # Comment next line if you don't want Devise authentication
  before_action :authenticate_user!
end
