class CreatePhotos < ActiveRecord::Migration  
  def change
    create_table :photos do |t|
      t.belongs_to :user
      t.belongs_to :album
      t.string :filepath
      t.string :description


      t.timestamps
    end
  end
end

