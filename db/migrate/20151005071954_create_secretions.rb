class CreateSecretions < ActiveRecord::Migration
  def change
    create_table :secretions do |t|
      t.string :flickr_id
      t.string :title
      t.string :image_url
      t.string :thumb_url

      t.timestamps
    end
  end
end
