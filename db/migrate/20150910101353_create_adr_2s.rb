class CreateAdr2s < ActiveRecord::Migration
  def change
    create_table :adr_2s do |t|
      
      t.string :adr2_title
      t.string :adr2_zip
      t.string :adr2_ad
      t.string :adr2_adr
      t.text :adr2_content
      t.string :adr2_email
      
      t.string :my2_image

      t.timestamps null: false
    end
  end
end
