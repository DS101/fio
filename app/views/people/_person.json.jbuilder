json.extract! person, :id, :firstname, :lastname, :middlename, :sex, :full_name, :created_at, :updated_at
json.url person_url(person, format: :json)
