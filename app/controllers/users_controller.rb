class UsersController < InlineFormsController
  set_tab :user
  # Comment next line if you don't want Devise authentication
  before_action :authenticate_user!
end
