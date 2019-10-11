class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.string :middlename
      t.string :sex
      t.string :full_name

      t.timestamps
    end
  end
end
