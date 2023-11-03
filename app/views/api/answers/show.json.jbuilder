json.extract! @answer, :id, :response, :question_id, :created_at, :updated_at
json.location do
  json.extract! @answer.location, :id, :name, :code
end
