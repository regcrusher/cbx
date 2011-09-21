class AddTapFinderUrlToBars < ActiveRecord::Migration
  def change
    add_column :bars, :TapFinderURL, :string
  end
end
