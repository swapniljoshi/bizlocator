class Address < ActiveRecord::Base
  has_many :ads
  belongs_to :company
  belongs_to :shopping_mall
  has_many :business_items
  has_many :shopping_malls

  attr_accessible :address_line_one, :address_line_two, :chat_code, :city, :company_id, :contact_name, :country, :email, :fax, :google_map_code, :ispublished, :phone, :postal_code, :shopping_mall_id, :website, :user_id

  def self.user_related(user_id)
    if (user_id)
      where(' user_id = ? ', user_id)
    else
      nil
    end
  end

  def address_brief
    output =''
    if self.address_line_one != nil && self.address_line_one != ''
      output.concat(self.address_line_one)
    end

    if  self.address_line_two != nil && self.address_line_two != ''
      output.concat(self.address_line_two)
    end
    output
  end
end
