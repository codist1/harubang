class CreateAdrrs < ActiveRecord::Migration
  def change
    create_table :adrrs do |t|
      
      t.string :adr2_title
      t.string :adr2_zip
      t.string :adr2_ad
      t.string :adr2_adr
      t.text :adr2_content
      t.string :adr2_email
      
      t.string :my2_image_f
      t.string :my2_image
      t.string :my2_image2
      t.string :my2_image3
      

      t.timestamps null: false
    end
  end
end
