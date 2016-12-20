class Hosts < ActiveRecord::Migration[5.0]
  def change
    create_table :hosts do |t|
      t.string :hostname, :serial_number, :reference_orange, :location, :project_name, :brand, :model, :electricity_consumption, limit:45
      t.text :certificate
      t.boolean :state
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
