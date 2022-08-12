class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.timestamps
      t.references :owner, index: true, foreign_key: { to_table: :people }
    end
  end
end
