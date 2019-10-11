class CreateChangedNames < ActiveRecord::Migration[5.2]
  def change
    create_table :changed_names do |t|
      t.string :firstname_genitive
      t.string :lastname_genitive
      t.string :middlename_genitive
      t.string :full_name_genitive

      t.string :firstname_dative
      t.string :lastname_dative
      t.string :middlename_dative
      t.string :full_name_dative

      t.string :firstname_accusative
      t.string :lastname_accusative
      t.string :middlename_accusative
      t.string :full_name_accusative

      t.string :firstname_instrumental
      t.string :lastname_instrumental
      t.string :middlename_instrumental
      t.string :full_name_instrumental

      t.string :firstname_prepositional
      t.string :lastname_prepositional
      t.string :middlename_prepositional
      t.string :full_name_prepositional

      t.belongs_to :person

      t.timestamps
    end
  end
end
