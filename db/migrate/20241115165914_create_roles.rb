class CreateRoles < ActiveRecord::Migration[8.0]
  def change
    create_table :roles do |t|
      t.belongs_to :parent, null: true, foreign_key: {to_table: :roles}
      t.string :name, null: false
      t.boolean :locked, null: false, default: false
      t.timestamps
    end
  end
end
