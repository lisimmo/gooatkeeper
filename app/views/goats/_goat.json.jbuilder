json.extract! goat, :id, :name, :gid, :dob, :breed_id, :created_at, :primary_color, :secondary_color, :updated_at
if params.fetch(:breed, false).to_bool
  json.breed do
    json.partial! "breeds/breed", breed: goat.breed
  end
end
if params.fetch(:treatments, false).to_bool
  json.treatment_history goat.goat_treatments do | goat_treatment |
    json.extract! goat_treatment, :id, :treatment_id, :created_at
    json.treatment goat_treatment.treatment, :id , :name
  end
end

