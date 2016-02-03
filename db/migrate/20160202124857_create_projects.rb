class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :target_pledge_amount
      t.string :decimal

      t.timestamps
    end
  end
end
