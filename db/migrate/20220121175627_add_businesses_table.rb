class AddBusinessesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.column :name, :string
      t.column :kind, :string
      t.column :content, :string
    end
  end
end
