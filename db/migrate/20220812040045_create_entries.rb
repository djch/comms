class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.references :creator, index: true, foreign_key: { to_table: :people }
      t.references :account, null: false, foreign_key: true
      t.references :entryable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
