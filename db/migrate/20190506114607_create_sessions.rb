class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.references :user, foreign_key: true
      t.string :token
      t.datetime :last_used_at
      t.boolean :status, default: true

      t.timestamps
    end
    add_index :sessions, :token, unique: true
    add_index :sessions, :last_used_at
    add_index :sessions, :status
  end
end
