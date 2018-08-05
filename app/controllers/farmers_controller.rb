class FarmersController < InlineFormsController
  set_tab :farmer
  # Comment next line if you don't want Devise authentication
  before_action :authenticate_user!
end
