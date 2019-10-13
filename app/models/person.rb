class Person < ApplicationRecord
  validates :firstname, presence: true
  validates :full_name, presence: true
  after_save :create_changed_names_for_person
  has_one :changed_name

  private

  def create_changed_names_for_person
    if self.sex
      gender = self.sex.match?(/муж/i) ? "male" : "female"
    else
      gender = nil
    end

    petrovich_changed_name = Petrovich(firstname: self.firstname, lastname: self.lastname, middlename: self.middlename, gender: gender)

    changed_name = Hash[firstname_genitive: petrovich_changed_name.genitive.firstname,
                        lastname_genitive: petrovich_changed_name.genitive.lastname,
                        middlename_genitive: petrovich_changed_name.genitive.middlename,
                        full_name_genitive: petrovich_changed_name.genitive.to_s,

                        firstname_dative: petrovich_changed_name.dative.firstname,
                        lastname_dative: petrovich_changed_name.dative.lastname,
                        middlename_dative: petrovich_changed_name.dative.middlename,
                        full_name_dative: petrovich_changed_name.dative.to_s,

                        firstname_accusative: petrovich_changed_name.accusative.firstname,
                        lastname_accusative: petrovich_changed_name.accusative.lastname,
                        middlename_accusative: petrovich_changed_name.accusative.middlename,
                        full_name_accusative: petrovich_changed_name.accusative.to_s,

                        firstname_instrumental: petrovich_changed_name.instrumental.firstname,
                        lastname_instrumental: petrovich_changed_name.instrumental.lastname,
                        middlename_instrumental: petrovich_changed_name.instrumental.middlename,
                        full_name_instrumental: petrovich_changed_name.instrumental.to_s,

                        firstname_prepositional: petrovich_changed_name.prepositional.firstname,
                        lastname_prepositional: petrovich_changed_name.prepositional.lastname,
                        middlename_prepositional: petrovich_changed_name.prepositional.middlename,
                        full_name_prepositional: petrovich_changed_name.prepositional.to_s,

                        person_id: self.id]

    if ChangedName.find_by(person_id: self.id)
      ChangedName.update(changed_name)
    else
      ChangedName.create(changed_name)
    end
  end
end
