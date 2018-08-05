class InlineFormsLocalesController < InlineFormsController
  set_tab :inline_forms_locale
  # Comment next line if you don't want Devise authentication
  before_action :authenticate_user!
end
