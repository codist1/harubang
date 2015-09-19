class CreateAdrs < ActiveRecord::Migration
  def change
    create_table :adrs do |t|


      t.string :adr_title
      t.string :adr_zip
      t.string :adr_ad
      t.string :adr_adr
      t.text :adr_content
      t.string :adr_email
      t.date :adr_before
      t.date :adr_after
      t.string :y_money
      t.string :m_money
      
      t.string :my_image
      t.string :my_image2
      t.string :my_image3



      t.timestamps null: false
    end
  end
end
