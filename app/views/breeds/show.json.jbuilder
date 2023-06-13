json.data do
  json.partial! "breed", breed: @breed
end
json.message "Success"

