class RolesController < InlineFormsController
  set_tab :role
  # Comment next line if you don't want Devise authentication
  before_action :authenticate_user!
end
