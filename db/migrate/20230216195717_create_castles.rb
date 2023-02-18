class CreateCastles < ActiveRecord::Migration[5.2]
  def change
    create_table :castles do |t|
      t.string :name
      t.string :content
      t.integer :region
      t.integer :prefectures
      t.string :lord
      t.string :construction_year
      t.string :image
      t.timestamps
      
      t.integer :prefectures_area, null: false, default: 0
      t.integer :region_area, null: false, default: 0
    end
  end
end
