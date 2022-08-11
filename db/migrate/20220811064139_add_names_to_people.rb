class AddNamesToPeople < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :first_name, :string
    add_column :people, :last_name, :string
  end
end
