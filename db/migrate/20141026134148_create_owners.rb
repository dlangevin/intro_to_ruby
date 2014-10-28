class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps
    end

    change_table :pets do |t|
      t.references(:owner)
    end
  end
end
