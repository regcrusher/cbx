class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :url
      t.string :eventname
      t.string :eventdesc
      t.string :imagepath
      t.timestamps
    end
  end
end
