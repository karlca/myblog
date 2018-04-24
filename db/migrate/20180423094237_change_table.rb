class ChangeTable < ActiveRecord::Migration[5.1]
  def change
    change_table :posts do |t|
      #把posts表的categoryid修改为category_id
    t.rename :categoryid, :category_id
  end
  end
end
