class AddDisplayOrderToBars < ActiveRecord::Migration
  def change
    add_column :bars, :displayorder, :int
  end
end
