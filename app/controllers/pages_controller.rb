class PagesController < FrontendsController
  layout 'application'
  def home
    @urgent_wastes = FarmersProduct.urgent
    @all_wastes = FarmersProduct.all
  end
end
