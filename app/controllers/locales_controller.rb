class LocalesController < InlineFormsController
  set_tab :locale
  # Comment next line if you don't want Devise authentication
  before_action :authenticate_user!
end
