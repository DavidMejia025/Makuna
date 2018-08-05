class Farmer < ApplicationRecord
  attr_reader :per_page
  @per_page = 7
  attr_writer :inline_forms_attribute_list
  has_paper_trail
  has_many :farmers_products
  has_many :products, through: :farmers_products
  belongs_to :department, optional: true

  def _presentation
    "<strong>#{name}</strong> <br>products: #{products.map(&:name).join(', ')}".html_safe
  end


  def inline_forms_attribute_list
    @inline_forms_attribute_list ||= [
      [ :name , "name", :text_field ],
      [ :lat , "lat", :text_field ],
      [ :long , "long", :text_field ],
    ]
  end

  def department_name
    return 'Unknown' unless department
    department.name
  end

  def self.not_accessible_through_html?
    false
  end

  def self.order_by_clause
    "name"
  end

  def matching_producers
    farmer_product_ids = products.map(&:id)
    Producer.joins(:producers_products).where('producers_products.product_id': farmer_product_ids)
  end

  def matching_producers?
    matching_producers.first
  end
end
