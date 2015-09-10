class CreateAdrs < ActiveRecord::Migration
  def change
    create_table :adrs do |t|


      t.string :adr_title
      t.string :adr_zip
      t.string :adr_ad
      t.string :adr_adr
      t.text :adr_content
      t.string :adr_email
      
      t.string :my_image
      

      t.timestamps null: false
    end
  end
end
