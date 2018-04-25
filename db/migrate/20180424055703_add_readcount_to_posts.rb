class AddReadcountToPosts < ActiveRecord::Migration[5.1]
  def change
    change_table :posts do |t|
      t.integer :readcount
    end
  end
end
