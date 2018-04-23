class AddCategoryIdToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :categoryid, :integer
  end
end
