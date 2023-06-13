json.data @goats do |goat|
  json.partial! "goat", goat:goat
end
json.message "Successfully, retrieved goats"
