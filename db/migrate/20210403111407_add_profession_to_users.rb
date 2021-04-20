class AddProfessionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profession, :integer
  end
end
