class FarmerDashboardController < FrontendsController
  layout 'application'
  before_action :set_farmer

  def index
  end

  private

  def set_farmer
    @farmer = Farmer.find(params[:farmer_id])
  end
end
