json.data do
  json.array! @breeds, partial: "breed", as: :breed
end
json.message "Success"
