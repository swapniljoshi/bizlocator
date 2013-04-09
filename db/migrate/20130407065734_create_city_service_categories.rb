class CreateCityServiceCategories < ActiveRecord::Migration
  def change
    create_table :city_service_categories do |t|
      t.string :name
      t.string :introtext
      t.text :description
      t.boolean :ispublished

      t.timestamps
    end
  end
end
