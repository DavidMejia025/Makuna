class Farmer < ApplicationRecord
  attr_reader :per_page
  @per_page = 7
  attr_writer :inline_forms_attribute_list
  has_paper_trail
  has_many :farmers_products
  has_many :products, through: :farmers_products

  def _presentation
    "#{name}"
  end


  def inline_forms_attribute_list
    @inline_forms_attribute_list ||= [
      [ :name , "name", :text_field ],
      [ :lat , "lat", :text_field ],
      [ :long , "long", :text_field ],
    ]
  end


  def self.not_accessible_through_html?
    false
  end

  def self.order_by_clause
    "name"
  end


end
